'use client';
import React, { useEffect } from "react";
import { useRouter } from 'next/navigation';

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
      
        {children}
    </div>
  );
}
