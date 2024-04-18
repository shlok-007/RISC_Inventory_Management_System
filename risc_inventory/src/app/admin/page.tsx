// "use client";

import Image from "next/image";
import { Tabs } from "@/components/ui/tabs";
// import DemoPage from "./members/page";
import { Items, columns1 } from "./items/columns";
import { DataTable1 } from "./items/data-table";
import { Members, columns2 } from "./members/columns";
import { DataTable2 } from "./members/data-table";
import { Governors_pr, columns3 } from "./governors_pr/columns";
import { DataTable3 } from "./governors_pr/data-table";
import { Governors_new, columns4 } from "./governors_new/columns";
import { DataTable4 } from "./governors_new/data-table";
import { Reservations, columns5} from "./Reserve/columns";
import { DataTable5 } from "./Reserve/data-table";

async function getData1(): Promise<Items[]> {
  // Fetch data from your API here.
  try {
      const response = await fetch("http://localhost:3000/api/view-items");

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
              Consumability: "N",
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
      const response = await fetch("http://localhost:3000/api/members",{
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

async function getData3(): Promise<Governors_pr[]> {
  // Fetch data from your API here.
  try {
      const response = await fetch("http://localhost:3000/api/members",{
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

async function getData4(): Promise<Governors_new[]> {
  // Fetch data from your API here.
  return [
    {
      id: 1,
      firstName: "Shlok Kr.",
      lastName: "Shaw",
      email: "21cs02008@iitbbs.ac.in",
    },
    // ...
  ];
}

async function getData5(): Promise<Reservations[]> {
  // Fetch data from your API here.
  try {
      const response = await fetch("http://localhost:3000/api/reservations",{
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

export default async function TabsDemo() {
  const data1 = await getData1();
  const data2 = await getData2();
  const data3 = await getData3();
  const data4 = await getData4();
  const data5 = await getData5();
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
          <div className="container mx-auto py-2 overflow-y-auto">
            <div className="text-center text-4xl font-bold text-black">Existing governors</div>
            <DataTable3 columns={columns3} data={data3} />
          </div>
    
          <div className="container mx-auto py-2 overflow-y-auto">
            <div className="text-center text-4xl font-bold text-black">Requesting governors</div>
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
    <div className="h-[20rem] md:h-[45rem] [perspective:1000px] relative b flex flex-col max-w-5xl mx-auto w-full  items-start justify-start my-1000">
      <Tabs tabs={tabs} />
    </div>
  );
}


