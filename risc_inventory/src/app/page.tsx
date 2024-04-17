"use client";
import React from "react";
import { Boxes } from "@/components/ui/background-boxes";
import { HoverBorderGradient } from "@/components/ui/hover-border-gradient";
import { cn } from "@/utils/cn";
import Link from "next/link";
import { TypewriterEffectSmooth } from "../components/ui/typewriter-effect";

export default function Home() {

  const words1 = [
    {
      text: "RISCventory",
    },
  ];

  const words2= [
    {
      text: "RISC's",
    },
    {
      text: "Inventory",
    },
    {
      text: "management",
    },
    {
      text: "system.",
    },
    // {
    //   text: "Aceternity.",
    //   className: "text-blue-500 dark:text-blue-500",
    // },
  ];

  return (
    <div className="h-screen relative w-full overflow-hidden bg-slate-900 flex flex-col items-center justify-center rounded-lg">
      <Link href="/signup">
      <div className="fixed top-5 right-5 z-50">
        <HoverBorderGradient
          containerClassName="rounded-full"
          as="button"
          className="bg-indigo-950 text-black dark:text-white flex items-center space-x-2"
          
        >
          <span>Login / SignUp</span>
        </HoverBorderGradient>
      </div>
      </Link>
      <div className="absolute inset-0 w-full h-full bg-slate-900 z-20 [mask-image:radial-gradient(transparent,white)] pointer-events-none" />
      <Boxes />
      <h1 className={cn("md:text-5xl text-4xl text-white relative z-20")}>
        RISC Inventory
       </h1>
      {/*<TypewriterEffectSmooth words={words1} /> */}
      <TypewriterEffectSmooth words={words2} />
      {/* <p className="text-center mt-2 text-neutral-300 relative z-20">
        RISC's Inventory Management System
      </p> */}
    </div>
  );
}
