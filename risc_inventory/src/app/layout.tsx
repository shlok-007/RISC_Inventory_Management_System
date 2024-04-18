import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";
import { Toaster } from "@/components/ui/toaster";
import Image from "next/image";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "RISC Inventory",
  description: "Official Inventory Management System for RISC, the Robotics and Intelligent Systems Club of the Indian Institute of Technology Bhubaneswar",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <Image src="/icon.png" alt="logo" width={48} height={48} className="fixed top-4 left-4 z-50" />
        {children}
        <Toaster />
      </body>
    </html>
  );
}
