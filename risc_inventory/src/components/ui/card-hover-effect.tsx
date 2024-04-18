'use client';

import { cn } from "@/utils/cn";
import { AnimatePresence, motion } from "framer-motion";
import { useState } from "react";
import Image from "next/image";
import { useToast } from "@/components/ui/use-toast"

export const HoverEffect = ({
  items,
  className,
}: {
  items: {
    id: number;
    title: string;
    image: string;
    description: string;
    version: string;
    category: string;
    quantity: number;
  }[];
  className?: string;
}) => {
  let [hoveredIndex, setHoveredIndex] = useState<number | null>(null);
  const [open, setOpen] = React.useState(false);
  const [currentItem, setCurrentItem] = React.useState(items[0]);

  return (
    <>
    <ItemDetails item={currentItem} open={open} setOpen={setOpen} />
    <div
      className={cn(
        "grid grid-cols-1 md:grid-cols-2  lg:grid-cols-3  py-10",
        className
      )}
    >
      {items.map((item, idx) => (
        <div
          key={idx}
          className="relative group  block p-2 h-full w-full cursor-pointer"
          onMouseEnter={() => setHoveredIndex(idx)}
          onMouseLeave={() => setHoveredIndex(null)}
          onClick={() => {
            setOpen(true);
            setCurrentItem(item);
          }}
        >
          <AnimatePresence>
            {hoveredIndex === idx && (
              <motion.span
                className="absolute inset-0 h-full w-full bg-neutral-200 dark:bg-slate-800/[0.8] block  rounded-3xl"
                layoutId="hoverBackground"
                initial={{ opacity: 0 }}
                animate={{
                  opacity: 1,
                  transition: { duration: 0.15 },
                }}
                exit={{
                  opacity: 0,
                  transition: { duration: 0.15, delay: 0.2 },
                }}
              />
            )}
          </AnimatePresence>
          <Card>
            <CardTitle>{item.title}</CardTitle>
            <CardImage src={item.image} alt={item.title} />
            <CardVersionCategory
              version={item.version}
              category={item.category} />
          </Card>
        </div>
      ))}
    </div>
    </>
  );
};

export const Card = ({
  className,
  children,
}: {
  className?: string;
  children: React.ReactNode;
}) => {
  return (
    <div
      className={cn(
        "rounded-2xl h-full w-full p-4 overflow-hidden bg-black border border-transparent dark:border-white/[0.2] group-hover:border-slate-700 relative z-20",
        className
      )}
    >
      <div className="relative z-50">
        <div className="px-4 py-1">{children}</div>
      </div>
    </div>
  );
};

export const CardTitle = ({
  className,
  children,
}: {
  className?: string;
  children: React.ReactNode;
}) => {
  return (
    <h4 className={cn("text-zinc-100 font-bold tracking-wide my-2", className)}>
      {children}
    </h4>
  );
};

export const CardVersionCategory = ({
  version,
  category,
}: {
  version: string;
  category: string;
}) => {
  return (
    <div className="flex-col items-center text-neutral-600 dark:text-neutral-400 mt-2">
      <div>Version: {version}</div>
      <div>Category: {category}</div>
    </div>
  );
};

export const CardImage = ({
  src,
  alt,
  className,
}: {
  src: string;
  alt: string;
  className?: string;
}) => {
  return (
    <div className={cn("relative h-40", className)}>
      <Image
        src={src}
        alt={alt}
        fill={true}
        sizes="100%"
        className="rounded-2xl"
      />
    </div>
  );
}

import * as React from "react"
import { Button } from "@/components/ui/button"
import {
  Drawer,
  DrawerClose,
  DrawerContent,
  DrawerDescription,
  DrawerFooter,
  DrawerHeader,
  DrawerTitle,
  DrawerTrigger,
} from "@/components/ui/drawer"
import { Label } from "@/components/ui/label"


// ItemDetails must show the title, image, description, version, category, and quantity of the item. The image should be on the right half of the drawer
export function ItemDetails(
  { item, open, setOpen }: {
    item: {
      id: number;
      title: string;
      image: string;
      description: string;
      version: string;
      category: string;
      quantity: number;
    };
    open: boolean;
    setOpen: React.Dispatch<React.SetStateAction<boolean>>;
  }
) {

  return (
      <Drawer open={open} onOpenChange={setOpen}>
        <DrawerContent>
        <div className="w-full px-10 mx-auto">
          <DrawerHeader className="text-left">
            <DrawerTitle>{item.title}</DrawerTitle>
            <DrawerDescription className="mt-2">Category: {item.category} | Version: {item.version}</DrawerDescription>
            <DrawerDescription>Description: {item.description}</DrawerDescription>
            <DrawerDescription>Available: {item.quantity}</DrawerDescription>
          </DrawerHeader>
          <ReservationForm itemID={item.id} className="p-4" />
          <DrawerFooter className="pt-2">
            <DrawerClose asChild>
              <Button className="w-2/5 min-w-3/5 mx-auto" variant="outline">Cancel</Button>
            </DrawerClose>
          </DrawerFooter>
        </div>
        </DrawerContent>
      </Drawer>
  )
}

import { Textarea } from "@/components/ui/textarea"
import { useUserContext } from "@/context";
 
function ReservationForm({ className, itemID }: { className: string, itemID: number })
{
  const {toast} = useToast();
  // const { itemid, memberid, reservationdate, returndate, purpose } = await req.json();
  // get memberid from localStorage
  // const memberid = localStorage.getItem('memberId');
  const memberId = useUserContext().user?.memberId;
  const [date, setDate] = React.useState<DateRange | undefined>({
    from: new Date(),
    to: addDays(new Date(), 20),
  });

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const response = await fetch("/api/reserve", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            itemid: itemID,
            memberid: memberId,
            reservationdate: date?.from,
            returndate: date?.to,
            purpose: e.currentTarget.purpose.value
        }),
    });
    const resMsg = await response.json();
    if(resMsg.success){
        console.log(resMsg);
        console.log("Reserved successfully");
        toast({
            title: "Reserved successfully",
            description: "You have successfully reserved the item.",
        });
    } else {
        console.log("Failed to reserve");
        toast({
            variant: "destructive",
            title: "Uh oh! We're unable to reserve the item.",
            description: resMsg.message,
        });
    }
  };

  return (
    <form className={cn("grid items-start gap-4", className)} onSubmit={handleSubmit}>
      <Label htmlFor="datepicker">Choose the duration of your reservation</Label>
      <DatePickerWithRange date={date} setDate={setDate} />
      <div className="grid w-full gap-2.5 pb-4">
        <Label htmlFor="purpose">Purpose</Label>
        <Textarea placeholder="Type your purpose here." id="purpose" />
      </div>
        <Button className="w-2/5 min-w-3/5 mx-auto" type="submit">Reserve</Button>
    </form>
  )
}

import { addDays, format } from "date-fns"
import { Calendar as CalendarIcon } from "lucide-react"
import { DateRange } from "react-day-picker"

import { Calendar } from "@/components/ui/calendar"
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover"

export function DatePickerWithRange({
  className, date, setDate
}: {
  className?: string;
  date?: DateRange;
  setDate: React.Dispatch<React.SetStateAction<DateRange | undefined>>;
}

) {
  // const [date, setDate] = React.useState<DateRange | undefined>({
  //   from: new Date(),
  //   to: addDays(new Date(), 20),
  // })
 
  return (
    <div className={cn("grid gap-2", className)}>
      <Popover>
        <PopoverTrigger asChild>
          <Button
            id="date"
            variant={"outline"}
            className={cn(
              "w-[300px] justify-start text-left font-normal",
              !date && "text-muted-foreground"
            )}
          >
            <CalendarIcon className="mr-2 h-4 w-4" />
            {date?.from ? (
              date.to ? (
                <>
                  {format(date.from, "LLL dd, y")} -{" "}
                  {format(date.to, "LLL dd, y")}
                </>
              ) : (
                format(date.from, "LLL dd, y")
              )
            ) : (
              <span>Pick a date</span>
            )}
          </Button>
        </PopoverTrigger>
        <PopoverContent className="w-auto p-0" align="start">
          <Calendar
            initialFocus
            mode="range"
            defaultMonth={date?.from}
            selected={date}
            onSelect={setDate}
            numberOfMonths={2}
          />
        </PopoverContent>
      </Popover>
    </div>
  )
}