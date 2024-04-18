'use client';
import { useEffect, useState } from 'react';
import { Table, TableBody, TableCaption, TableCell, TableHead, TableRow, TableFooter, TableHeader } from "@/components/ui/table";
import { Card, CardContent } from "@/components/ui/card";
import { useUserContext } from "@/context";

export default function ViewItems() {
  // console.log(memberId);
  const [items, setItems] = useState<{
    ItemName: string;
    Status: string;
    ReservationDate: string;
    ReturnDate: string;
  }[]>([]);
  const memberId = useUserContext().user?.memberId;
  useEffect(() => {
      fetch("/api/reservations",{
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                memberId: memberId,
            })
          }).then((res) => res.json()).then((data) => {
            // let formattedData = data.map((item: any) => {
            //   return {
            //     ItemName: item[0],
            //     Status: item[1],
            //     ReservationDate: item[2],
            //     ReturnDate: item[3],
            //   };
            // });
            // console.log(data.results);
          setItems(data.results);
      });
    }, []);
    console.log(items);
  return (
    <div>
      <h1 className="text-4xl font-semibold text-center mb-20">
        My Cart
      </h1>
      <Card>
        <CardContent>
        <Table className="mt-4">
          <TableCaption>A list of your recent reservations.</TableCaption>
          <TableHeader>
            <TableRow>
              <TableHead className="w-[200px]">Item Name</TableHead>
              <TableHead className="w-[200px]">Status</TableHead>
              <TableHead className="w-[200px]">Reservation Date</TableHead>
              <TableHead className="text-right w-[200px]">Return Date</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {items.map((item) => (
              <TableRow key={item.ItemName+item.Status+item.ReservationDate}>
                <TableCell className="font-medium">{item.ItemName}</TableCell>
                <TableCell>{item.Status}</TableCell>
                <TableCell>{item.ReservationDate.split("T")[0]}</TableCell>
                <TableCell className="text-right">{item.ReturnDate.split("T")[0]}</TableCell>
              </TableRow>
            ))}
          </TableBody>
          {/* <TableFooter>
            <TableRow>
              <TableCell colSpan={3}>Total</TableCell>
              <TableCell className="text-right">$2,500.00</TableCell>
            </TableRow>
          </TableFooter> */}
        </Table>
        </CardContent>
        </Card>
      </div>
    );
  };