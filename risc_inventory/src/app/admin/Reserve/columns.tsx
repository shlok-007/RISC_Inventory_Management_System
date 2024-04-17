"use client"

import { ColumnDef } from "@tanstack/react-table"
import { MoreHorizontal } from "lucide-react"
 
import { Button } from "@/components/ui/button"
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu"

// This type is used to define the shape of our data.
// You can use a Zod schema here if you want.
export type Reservations = {
  itemName: string
  memberName: string
  ReservationDate: string
  ReturnDate: string
  Purpose: string
}

export const columns5: ColumnDef<Reservations>[] = [
  {
    accessorKey: "itemName",
    header: "itemName",
  },
  {
    accessorKey: "memberName",
    header: "MemberName",
  },
  {
    accessorKey: "ReservationDate",
    header: "ReservationDate",
  },
  {
    accessorKey: "ReturnDate",
    header: "ReturnDate",
  },
  {
    accessorKey: "Purpose",
    header: "Purpose",
  },
  {
    id: "actions",
    cell: ({ row }) => {
      const Members = row.original
 
      return (
        <DropdownMenu>
          <DropdownMenuTrigger asChild>
            <Button variant="ghost" className="h-8 w-8 p-0">
              <span className="sr-only">Open menu</span>
              <MoreHorizontal className="h-4 w-4" />
            </Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent align="end">
            <DropdownMenuLabel class="text-l font-bold text-white text-center">Actions</DropdownMenuLabel>
            {/* <DropdownMenuItem
              onClick={() => navigator.clipboard.writeText(Members.id)}
            >
              Copy payment ID
            </DropdownMenuItem> */}
            <DropdownMenuSeparator />
            <DropdownMenuItem>Accept</DropdownMenuItem>
            <DropdownMenuItem>Reject</DropdownMenuItem>
            {/* <DropdownMenuItem>Impose Fines</DropdownMenuItem> */}
          </DropdownMenuContent>
        </DropdownMenu>
      )
    },
  },
]
