'use client';

import { cn } from "@/utils/cn";
import { AnimatePresence, motion } from "framer-motion";
import { useState } from "react";
import Image from "next/image";

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
        <>
        <div
          key={item.title + item.version + item.category + item.quantity}
          className="relative group  block p-2 h-full w-full"
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
        </>
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
        layout="fill"
        objectFit="cover"
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
import { Input } from "@/components/ui/input"
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
        <div className="mx-auto w-full max-w-sm">
          <DrawerHeader className="text-left">
            <DrawerTitle>{item.title}</DrawerTitle>
            <DrawerDescription>
              {item.description}
            </DrawerDescription>
          </DrawerHeader>
          <ReservationForm itemID={item.id} className="grid gap-4" />
          <DrawerFooter className="pt-2">
            <DrawerClose asChild>
              <Button variant="outline">Cancel</Button>
            </DrawerClose>
          </DrawerFooter>
        </div>
        </DrawerContent>
      </Drawer>
  )
}

import { Textarea } from "@/components/ui/textarea"
 
function ReservationForm({ className, itemID }: { className: string, itemID: number })
{
  return (
    <form className={cn("grid items-start gap-4", className)}>
      <DatePickerWithRange />
      <div className="grid w-full gap-1.5">
        <Label htmlFor="purpose">Purpose</Label>
        <Textarea placeholder="Type your purpose here." id="purpose" />
      </div>
      <Button type="submit">Reserve</Button>
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
  className,
}: React.HTMLAttributes<HTMLDivElement>) {
  const [date, setDate] = React.useState<DateRange | undefined>({
    from: new Date(2022, 0, 20),
    to: addDays(new Date(2022, 0, 20), 20),
  })
 
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