"use client";

import Image from "next/image";
import { Tabs } from "@/components/ui/tabs";
// import DemoPage from "./members/page";
import { Items, columns1 } from "./items/columns";
import { DataTable1 } from "./items/data-table";
import { Members, columns2 } from "./members/columns";
import { DataTable2 } from "./members/data-table";
import {  columns3 } from "./governors_pr/columns";
import { DataTable3 } from "./governors_pr/data-table";
import {  columns4 } from "./governors_new/columns";
import { DataTable4 } from "./governors_new/data-table";
import { Reservations, columns5} from "./Reserve/columns";
import { DataTable5 } from "./Reserve/data-table";
import { useEffect, useState } from 'react';

async function getData1(): Promise<Items[]> {
  // Fetch data from your API here.
  try {
      const response = await fetch("/api/view-items");

      if (!response.ok) {
          throw new Error('Failed to fetch data');
      }

      const data = await response.json();
      
      // console.log(data);
      if (data) {
          // Assuming data.result contains an array of member objects
          // return [];
          let formattedData = data.map((item: any) => {
            return {
              id: item[0],
              Name: item[1],
              Version: item[3],
              Category: item[6],
              Quantity: item[5],
              Consumability: item[7],
            };
          });
          // console.log(formattedData);
          return formattedData;
      } else {
          console.log("Failed to fetch data:");
          // return []; // Return an empty array if data retrieval is unsuccessful
          return [
            {
              id: 1,
              Name: "Arduino Uno R3",
              Version: "Rev3",
              Price: 22.0,
              Category: "Microcontroller",
              Quantity: 50,
              Consumability: "N",
            },
            // ...
          ];
      }
  } catch (error) {
      console.error('Error fetching data:', error);
      // return []; // Return an empty array if there's an error
      return [
        {
          id: 1,
          Name: "Arduino Uno R3",
          Version: "Rev3",
          Price: 22.0,
          Category: "Microcontroller",
          Quantity: 50,
          Consumability: "N",
        },
        // ...
      ];
  }
}

async function getData2(): Promise<Members[]> {
  try {
      const response = await fetch("/api/members",{
          method: "POST",
          headers: {
              "Content-Type": "application/json",
          },
          body: JSON.stringify({
              role: "User",
          }),
      });

      if (!response.ok) {
          throw new Error('Failed to fetch data');
      }

      const data = await response.json();
      
      if (data.success) {
          // console.log(data.results);
          // Assuming data.result contains an array of member objects
          // return [];
          return data.results as Members[];
      } else {
          console.log("Failed to fetch data:", data.message);
          // return []; // Return an empty array if data retrieval is unsuccessful
          return [
            {
              id: 1,
              firstName: "Sagnik",
              lastName: "Basu",
              email: "21cs02004@iitbbs.ac.in",
            }];
      }
  } catch (error) {
      console.error('Error fetching data:', error);
      // return []; // Return an empty array if there's an error
      return [
        {
          id: 1,
          firstName: "Sagnik",
          lastName: "Basu",
          email: "21cs02004@iitbbs.ac.in",
        }];
  }
}

async function getData3(): Promise<Members[]> {
  // Fetch data from your API here.
  try {
      const response = await fetch("/api/members",{
          method: "POST",
          headers: {
              "Content-Type": "application/json",
          },
          body: JSON.stringify({
              role: "Governor",
          }),
      });

      if (!response.ok) {
          throw new Error('Failed to fetch data');
      }

      const data = await response.json();
      
      if (data.success) {
          // console.log(data.results);
          // Assuming data.result contains an array of member objects
          // return [];
          return data.results as Members[];
      } else {
          console.log("Failed to fetch data:", data.message);
          // return []; // Return an empty array if data retrieval is unsuccessful
          return [
            {
              id: 1,
              firstName: "Sagnik",
              lastName: "Basu",
              email: "21cs02004@iitbbs.ac.in",
            }];
      }
  } catch (error) {
      console.error('Error fetching data:', error);
      // return []; // Return an empty array if there's an error
      return [
        {
          id: 1,
          firstName: "Sagnik",
          lastName: "Basu",
          email: "21cs02004@iitbbs.ac.in",
        }];
  }
}

async function getData4(): Promise<Members[]> {
  // Fetch data from your API here.
  try {
      const response = await fetch("/api/request");

      if (!response.ok) {
          throw new Error('Failed to fetch data');
      }

      const data = await response.json();
      
      if (data.success) {
          // console.log(data.results);
          // Assuming data.result contains an array of member objects
          // return [];
          return data.results as Members[];
      } else {
          console.log("Failed to fetch data:", data.message);
          // return []; // Return an empty array if data retrieval is unsuccessful
          return [
            {
              id: 1,
              firstName: "Sagnik",
              lastName: "Basu",
              email: "21cs02004@iitbbs.ac.in",
            }];
      }
  } catch (error) {
      console.error('Error fetching data:', error);
      // return []; // Return an empty array if there's an error
      return [
        {
          id: 1,
          firstName: "Sagnik",
          lastName: "Basu",
          email: "21cs02004@iitbbs.ac.in",
        }];
  }
}

async function getData5(): Promise<Reservations[]> {
  // Fetch data from your API here.
  try {
      const response = await fetch("/api/reservations",{
          method: "POST",
          headers: {
              "Content-Type": "application/json",
          },
          body: JSON.stringify({
              memberId: "All",
          }),
      });

      if (!response.ok) {
          throw new Error('Failed to fetch data');
      }

      const data = await response.json();
      
      if (data.success) {
          // console.log(data.results);
          // Assuming data.result contains an array of member objects
          // return [];
          let formattedData = data.results.map((item: any) => {
            return {
              itemName: item.ItemName,
              memberName: item.Name,
              ReservationDate: item.ReservationDate.split("T")[0],
              ReturnDate:  item.ReturnDate.split("T")[0],
              Purpose: item.Purpose,
            };
          });
          // console.log(formattedData);
          return formattedData;
      } else {
          console.log("Failed to fetch data:", data.message);
          // return []; // Return an empty array if data retrieval is unsuccessful
          return [
            {
              itemName: "Arduino Uno R3",
              memberName: "Lalit Mohanani",
              ReservationDate: "17-04-2024",
              ReturnDate: "24-04-2024",
              Purpose:"To participate in general championship",
            },
            // ...
          ];
      }
  } catch (error) {
      console.error('Error fetching data:', error);
      // return []; // Return an empty array if there's an error
      return [
        {
          itemName: "Arduino Uno R3",
          memberName: "Lalit Mohanani",
          ReservationDate: "17-04-2024",
          ReturnDate: "24-04-2024",
          Purpose:"To participate in general championship",
        },
        // ...
      ];
  }
}

export default function TabsDemo() {
  const [data1, setData1] = useState<Items[]>([]);
  const [data2, setData2] = useState<Members[]>([]);
  const [data3, setData3] = useState<Members[]>([]);
  const [data4, setData4] = useState<Members[]>([]);
  const [data5, setData5] = useState<Reservations[]>([]);
  const [dataFetched, setDataFetched] = useState(false);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const newData1: Items[] = await getData1();
        // console.log(newData1);
        setData1(newData1);

        const newData2: Members[] = await getData2();
        setData2(newData2);

        const newData3: Members[] = await getData3();
        setData3(newData3);

        const newData4: Members[] = await getData4();
        setData4(newData4);

        const newData5: Reservations[] = await getData5();
        setData5(newData5);

        setDataFetched(true); // Set dataFetched to true after fetching data
      } catch (error) {
        console.error('Error fetching data:', error);
        // Handle error if data fetching fails
      }
    };
    if (!dataFetched) {
      fetchData();
    }
  }, []); 
  // console.log(data1);
  const tabs = [
    {
      title: "Items",
      value: "Items",
      content: (
        <div className="w-full overflow-hidden relative h-full rounded-2xl p-3 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
          <div className="container mx-auto py-2">
            <DataTable1 columns={columns1} data={data1} />
          </div>
        </div>
      ),
    },
    {
      title: "Members",
      value: "Members",
      content: (
        <div className="w-full overflow-hidden relative h-full rounded-2xl p-3 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
          <div className="container mx-auto py-2">
            <DataTable2 columns={columns2} data={data2} />
          </div>
        </div>
      ),
    },
    {
      title: "Governors",
      value: "Governors",
      content: (
        <div className="w-full overflow-hidden relative h-full rounded-2xl p-3 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
        <div className="container mx-auto py-2">
          <DataTable3 columns={columns3} data={data3} />
        </div>
      </div>
      ),
    },

    {
      title: "Request",
      value: "Request",
      content: (
        <div className="w-full overflow-hidden relative h-full rounded-2xl p-3 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
        <div className="container mx-auto py-2">
          <DataTable4 columns={columns4} data={data4} />
        </div>
      </div>
      ),
    },
    
    {
      title: "Reservation",
      value: "Reservation",
      content: (
        <div className="w-full overflow-hidden relative h-full rounded-2xl p-3 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
          <div className="container mx-auto py-2">
            <DataTable5 columns={columns5} data={data5} />
          </div>
        </div>
      ),
    },
    
    //   title: "Random",
    //   value: "random",
    //   content: (
    //     <div className="w-full overflow-hidden relative h-full rounded-2xl p-10 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
    //       <p>Random tab</p>
    //       <DummyContent />
    //     </div>
    //   ),
    // },
  ];

  return (
    <div className="h-[20rem] md:h-[48rem] [perspective:1000px] relative b flex flex-col max-w-5xl mx-auto w-full  items-start justify-start my-1000">
      <Tabs tabs={tabs} />
    </div>
  );
}


