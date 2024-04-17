'use client';
import { useEffect, useState } from 'react';
import { Table, TableBody, TableCaption, TableCell, TableHead, TableRow, TableFooter, TableHeader } from "@/components/ui/table";


export default function ViewItems() {
  // console.log(memberId);
  const [items, setItems] = useState<{
    ItemName: string;
    Status: string;
    ReservationDate: string;
    ReturnDate: string;
  }[]>([]);
  const memberId = localStorage.getItem('memberId');
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
      <Table>
        <TableCaption>A list of your recent invoices.</TableCaption>
        <TableHeader>
          <TableRow>
            <TableHead className="w-[100px]">Item Name</TableHead>
            <TableHead>Status</TableHead>
            <TableHead>Reservation Date</TableHead>
            <TableHead className="text-right">Return Date</TableHead>
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
    </div>
  );
};


const invoices = [
  {
    invoice: "INV001",
    paymentStatus: "Paid",
    totalAmount: "$250.00",
    paymentMethod: "Credit Card",
  },
  {
    invoice: "INV002",
    paymentStatus: "Pending",
    totalAmount: "$150.00",
    paymentMethod: "PayPal",
  },
  {
    invoice: "INV003",
    paymentStatus: "Unpaid",
    totalAmount: "$350.00",
    paymentMethod: "Bank Transfer",
  },
  {
    invoice: "INV004",
    paymentStatus: "Paid",
    totalAmount: "$450.00",
    paymentMethod: "Credit Card",
  },
  {
    invoice: "INV005",
    paymentStatus: "Paid",
    totalAmount: "$550.00",
    paymentMethod: "PayPal",
  },
  {
    invoice: "INV006",
    paymentStatus: "Pending",
    totalAmount: "$200.00",
    paymentMethod: "Bank Transfer",
  },
  {
    invoice: "INV007",
    paymentStatus: "Unpaid",
    totalAmount: "$300.00",
    paymentMethod: "Credit Card",
  },
]