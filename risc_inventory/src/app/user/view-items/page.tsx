'use client';

import { HoverEffect } from "@/components/ui/card-hover-effect";
import { useState, useEffect } from "react";

export default function ViewItems() {

  const [items, setItems] = useState<{
    id: number;
    title: string;
    image: string;
    description: string;
    version: string;
    category: string;
    quantity: number;
  }[]>(projects);

  useEffect(() => {
    fetch("/api/view-items").then((res) => res.json()).then((data) => {
      let formattedData = data.map((item: any) => {
        return {
          id: item[0],
          title: item[1],
          description: item[2],
          version: item[3],
          quantity: item[5],
          category: item[6],
          image: item[4],
        };
      });
      setItems(formattedData);
      console.log(formattedData);
    });
  }, []);

  return (
    <div className="max-w-5xl mx-auto px-8 pt-6 mt-auto">
      <HoverEffect items={items} />
    </div>
  );
}
export const projects = [
  {
    id: 1,
    title: "Arduino Uno",
    image: "https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg",
    description:
      "The Arduino Uno is a microcontroller board based on the ATmega328P. It has 14 digital input/output pins (of which 6 can be used as PWM outputs), 6 analog inputs, a 16 MHz quartz crystal, a USB connection, a power jack, an ICSP header and a reset button.",
    version: "1.0",
    category: "Microcontroller",
    quantity: 10,
  },
  {
      id: 2,
      title: "Raspberry Pi",
      image: "https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg",
      description:
      "The Raspberry Pi is a series of small single-board computers developed in the United Kingdom by the Raspberry Pi Foundation to promote teaching of basic computer science in schools and in developing countries.",
      version: "4",
      category: "Single Board Computer",
      quantity: 5,
  },
  {
      id: 3,
      title: "ESP32",
      image: "https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg",
      description:
      "The ESP32 is a series of low-cost, low-power system on a chip microcontrollers with integrated Wi-Fi and dual-mode Bluetooth.",
      version: "1.0",
      category: "Microcontroller",
      quantity: 15,
  },
  {
      id: 4,
      title: "Nvidia Jetson Nano",
      image: "https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg",
      description:
      "The Nvidia Jetson Nano Developer Kit is a small, powerful computer that lets you run multiple neural networks in parallel for applications like image classification, object detection, segmentation, and speech processing.",
      version: "2GB",
      category: "Single Board Computer",
      quantity: 3,
  },
  {
      id: 5,
      title: "BeagleBone Black",
      image: "https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg",
      description:
      "The BeagleBone Black is a low-cost, community-supported development platform for developers and hobbyists. Boot Linux in under 10 seconds and get started on development in less than 5 minutes with just a single USB cable.",
      version: "1.0",
      category: "Single Board Computer",
      quantity: 7,
  },
  {
      id: 6,
      title: "STM32F4",
      image: "https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg",
      description:
      "The STM32F4 is a series of microcontrollers with DSP and FPU instructions developed by STMicroelectronics. It is based on the ARM Cortex-M4 core.",
      version: "1.0",
      category: "Microcontroller",
      quantity: 12,
  },
];
