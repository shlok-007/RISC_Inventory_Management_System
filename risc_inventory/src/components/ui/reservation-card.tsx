'use client';
import React from "react";
import { cn } from "@/utils/cn";
import { AnimatePresence, motion } from "framer-motion";
import {Card, CardHeader, CardBody} from "@nextui-org/card";
import Image  from "next/image";

import { useState } from "react";

import { BackgroundGradient } from "@/components/ui/background-gradient";
import { IconAppWindow } from "@tabler/icons-react";

export const ReservationCard = ({
    items,
    className,
  }: {
    items: {
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
    return (
    <div
      className={cn(
        "grid grid-cols-1 md:grid-cols-2  lg:grid-cols-3  py-10",
        className
      )}
    >
        {items.map((item, idx) => (
        <div
          key={item.title + item.version + item.category + item.quantity}
          className="relative group  block p-2 h-full w-full"
          onMouseEnter={() => setHoveredIndex(idx)}
          onMouseLeave={() => setHoveredIndex(null)}
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
          <Card className="py-4">
            <CardHeader className="pb-0 pt-2 px-4 flex-col items-start">
                <h4 className="font-bold text-large">{item.title}</h4>
                <small className="text-default-500">{item.quantity}</small>
                <p className="text-tiny uppercase font-bold">{item.category}</p>
            </CardHeader>
            <CardBody className="overflow-visible py-2">
                <Image
                alt={item.title}
                className="object-cover rounded-xl"
                src={item.image}
                width={270}
                height={200}
                />
            </CardBody>
        </Card>
        </div>
      ))}
    </div>
    );
};
