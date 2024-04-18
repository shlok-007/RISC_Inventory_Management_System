"use client";
import { useEffect, useState } from "react";
import {
  Table,
  TableBody,
  TableCaption,
  TableCell,
  TableHead,
  TableRow,
  TableFooter,
  TableHeader,
} from "@/components/ui/table";
import { Card, CardContent } from "@/components/ui/card";

export default function ViewItems() {
  const [items, setItems] = useState<
    {
      ItemName: string;
      Status: string;
      ReservationDate: string;
      ReturnDate: string;
    }[]
  >([]);
  const memberId = localStorage.getItem("memberId");
  useEffect(() => {
    fetch("/api/reservations", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        memberId: memberId,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        setItems(data.results);
      });
  }, []);

  return (
    <div className="fixed top-10 ">
      <div className="mt-8">
        <div className="flex items-center justify-between bg-transparent p-4">
          <div className="mt-3 flex items-center">
            <h1 className="text-white font-bold text-4xl">My Profile</h1>
          </div>
          <div className="text-right text-white">
            <p>Name: John Doe</p>
            <p>Role: Admin</p>
            <p>Email: john.doe@example.com</p>
          </div>
        </div>
      </div>

      <Card className="mt-24">
        <CardContent>
          <Table className="mt-4">
            <TableCaption>A list of recently incurred fines.</TableCaption>
            <TableHeader>
              <TableRow>
                <TableHead className="w-[200px]">TransactionID</TableHead>
                <TableHead className="w-[200px]">SupposedReturnDate</TableHead>
                <TableHead className="w-[200px]">ActualReturnDate</TableHead>
                <TableHead className="text-right w-[200px]">
                  FineAmount
                </TableHead>
              </TableRow>
            </TableHeader>
            {/* <TableBody>
              {items.map((item, index) => (
                <TableRow key={index}>
                  <TableCell className="font-medium">{item.ItemName}</TableCell>
                  <TableCell>{item.Status}</TableCell>
                  <TableCell>{item.ReservationDate}</TableCell>
                  <TableCell className="text-right">{item.ReturnDate}</TableCell>
                </TableRow>
              ))}
            </TableBody> */}
          </Table>
        </CardContent>
      </Card>
      <button className="mt-4 ml-72 inline-flex h-12 animate-shimmer items-center justify-center rounded-md border border-slate-800 bg-[linear-gradient(110deg,#000103,45%,#1e2631,55%,#000103)] bg-[length:200%_100%] px-6 font-medium text-slate-400 transition-colors focus:outline-none focus:ring-2 focus:ring-slate-400 focus:ring-offset-2 focus:ring-offset-slate-50">
        Request Admin Privilege{" "}
      </button>
    </div>
  );
}
