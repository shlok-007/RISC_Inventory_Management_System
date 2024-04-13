"use client";
import React from "react";
import { Boxes } from "@/components/ui/background-boxes";
import { HoverBorderGradient } from "@/components/ui/hover-border-gradient";
import { cn } from "@/utils/cn";
import Link from "next/link";

export default function Home() {
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
      <h1 className={cn("md:text-4xl text-xl text-white relative z-20")}>
        RISC Inventory
      </h1>
      <p className="text-center mt-2 text-neutral-300 relative z-20">
        Framer motion is the best animation library ngl
      </p>
    </div>
  );
}
