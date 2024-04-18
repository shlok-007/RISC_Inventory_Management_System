'use client';
import React, { useEffect } from "react";
import { useRouter } from 'next/navigation';
import { useUserContext } from "@/context";

export default function UserLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const router = useRouter();
  const { setUser } = useUserContext();
  useEffect(() => {
    const userData = JSON.parse(localStorage.getItem("userData") || "");

    if (userData === null || userData.role === "User") {
      router.push('/login');  // Use router.push for client-side redirect
    } else {
      setUser(userData);
    }
  }, []);
  return (
    <div className="h-[50rem] w-full dark:bg-black bg-white  dark:bg-grid-white/[0.2] bg-grid-black/[0.2] relative flex items-center justify-center">
      {/* Radial gradient for the container to give a faded look */}
      <div className="absolute pointer-events-none inset-0 flex items-center justify-center dark:bg-black bg-white [mask-image:radial-gradient(ellipse_at_center,transparent_20%,black)]"></div>
      
        {children}
    </div>
  );
}
