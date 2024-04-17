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

async function getData1(): Promise<Items[]> {
  // Fetch data from your API here.
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

async function getData2(): Promise<Members[]> {
  try {
      const response = await fetch("http://localhost:3000/api/members");

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
      const response = await fetch("http://localhost:3000/api/members");

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


export default async function TabsDemo() {
  const data1 = await getData1();
  const data2 = await getData2();
  const data3 = await getData3();
  const data4 = await getData4();
  const tabs = [
    {
      title: "Items",
      value: "Items",
      content: (
        <div className="w-full overflow-hidden relative h-full rounded-2xl p-10 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
          <div className="container mx-auto py-10">
            <DataTable1 columns={columns1} data={data1} />
          </div>
        </div>
      ),
    },
    {
      title: "Members",
      value: "Members",
      content: (
        <div className="w-full overflow-hidden relative h-full rounded-2xl p-10 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
          <div className="container mx-auto py-10">
            <DataTable2 columns={columns2} data={data2} />
          </div>
        </div>
      ),
    },
    {
      title: "Governors",
      value: "Governors",
      content: (
        <div className="w-full overflow-hidden relative h-full rounded-2xl p-10 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
        <div className="container mx-auto py-10">
          <div className="text-center text-4xl font-bold text-black">Existing governors</div>
          <DataTable3 columns={columns3} data={data3} />
        </div>

        <div className="container mx-auto py-10">
          <div className="text-center text-4xl font-bold text-black">Requesting governors</div>
          <DataTable4 columns={columns4} data={data4} />
        </div>
      </div>
      ),
    },
    // {
    //   title: "Content",
    //   value: "content",
    //   content: (
    //     <div className="w-full overflow-hidden relative h-full rounded-2xl p-10 text-xl md:text-4xl font-bold text-white bg-gradient-to-br from-purple-700 to-violet-900">
    //       <p>Content tab</p>
    //       <DummyContent />
    //     </div>
    //   ),
    // },
    // {
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
    <div className="h-[20rem] md:h-[40rem] [perspective:1000px] relative b flex flex-col max-w-5xl mx-auto w-full  items-start justify-start my-40">
      <Tabs tabs={tabs} />
    </div>
  );
}

const DummyContent = () => {
  return (
    <Image
      src="/linear.webp"
      alt="dummy image"
      width="1000"
      height="1000"
      className="object-cover object-left-top h-[60%]  md:h-[90%] absolute -bottom-10 inset-x-0 w-[90%] rounded-xl mx-auto"
    />
  );
};
