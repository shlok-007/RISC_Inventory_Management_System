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
export type Items = {
  id: number
  Name: string
  Version: string
  Price: number
  Category : string
  Quantity : number
  Consumability : string
}

export const columns1: ColumnDef<Members>[] = [
  {
    accessorKey: "id",
    header: "id",
  },
  {
    accessorKey: "Name",
    header: "Name",
  },
  {
    accessorKey: "Version",
    header: "Version",
  },
  {
    accessorKey: "Price",
    header: "Price",
  },
  {
    accessorKey: "Category",
    header: "Category",
  },
  {
    accessorKey: "Quantity",
    header: "Quantity",
  },
  {
    accessorKey: "Consumability",
    header: "Consumability",
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
            {/* <DropdownMenuSeparator /> */}
            <DropdownMenuItem>Update Item</DropdownMenuItem>
            <DropdownMenuItem>Remove Item</DropdownMenuItem>
            {/* <DropdownMenuItem></DropdownMenuItem> */}
          </DropdownMenuContent>
        </DropdownMenu>
      )
    },
  },
]
