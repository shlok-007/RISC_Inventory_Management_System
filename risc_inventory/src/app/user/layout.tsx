'use client';
import React, { useEffect } from "react";
import { useRouter } from 'next/navigation';
import { Label } from "@/components/ui/label";
import { 
  ShoppingCart as CartIcon,
  UserRound as Profile,
  Bot as ItemsIcon
 } from "lucide-react";
import Link from "next/link";

export default function UserLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const router = useRouter();

  useEffect(() => {
    const email = localStorage.getItem("userEmail");
    const memberId = localStorage.getItem("memberId");
    const userName = localStorage.getItem("userName");

    if (!email || !memberId || !userName ) {
      router.push('/login');  // Use router.push for client-side redirect
    }
  }, []);
  return (
    <div className="h-[50rem] w-full dark:bg-black bg-white  dark:bg-grid-white/[0.2] bg-grid-black/[0.2] relative flex items-center justify-center">
      {/* Radial gradient for the container to give a faded look */}
      <div className="absolute pointer-events-none inset-0 flex items-center justify-center dark:bg-black bg-white [mask-image:radial-gradient(ellipse_at_center,transparent_20%,black)]"></div>
      {/*absolute navbar which contains items, cart and profile icon with labels all right aligned horizontally*/}
      <div className="fixed top-0 right-0 p-5 pr-8 flex items-center justify-end w-full z-40 backdrop-blur-lg bg-black/60">
        <div className="flex items-center gap-4">
          <Link 
          href={"/user/view-items"} 
          className="flex items-center gap-2 cursor-pointer">
            <ItemsIcon size={24} />
            <Label>Items</Label>
          </Link>
          <Link 
          href={"/user/my-cart"}
          className="flex items-center gap-2 cursor-pointer">
            <CartIcon size={24} />
            <Label>Cart</Label>
          </Link>
          <Link 
          href={"/user/profile"}
          className="flex items-center gap-2 cursor-pointer">
            <Profile size={24} />
            <Label>Profile</Label>
          </Link>
        </div>
      </div>



        {children}
    </div>
  );
}
