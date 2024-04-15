import { HoverEffect } from "@/components/ui/card-hover-effect";
// import { useAuth } from '../../../utils/authContext';
// import { useRouter } from 'next/router';

export default function ViewItems() {
  return (
    <div className="max-w-5xl mx-auto px-8">
      <HoverEffect items={projects} />
    </div>
  );
}
export const projects = [
  {
    title: "Arduino Uno",
    image: "https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg",
    description:
      "The Arduino Uno is a microcontroller board based on the ATmega328P. It has 14 digital input/output pins (of which 6 can be used as PWM outputs), 6 analog inputs, a 16 MHz quartz crystal, a USB connection, a power jack, an ICSP header and a reset button.",
    version: "1.0",
    category: "Microcontroller",
    quantity: 10,
  },
    {
        title: "Raspberry Pi",
        image: "https://cdn.pixabay.com/photo/2017/08/06/11/18/raspberry-2595228_960_720.jpg",
        description:
        "The Raspberry Pi is a series of small single-board computers developed in the United Kingdom by the Raspberry Pi Foundation to promote teaching of basic computer science in schools and in developing countries.",
        version: "4",
        category: "Single Board Computer",
        quantity: 5,
    },
    {
        title: "ESP32",
        image: "https://cdn.pixabay.com/photo/2019/12/05/19/52/esp32-4673838_960_720.jpg",
        description:
        "The ESP32 is a series of low-cost, low-power system on a chip microcontrollers with integrated Wi-Fi and dual-mode Bluetooth.",
        version: "1.0",
        category: "Microcontroller",
        quantity: 15,
    },
    {
        title: "Nvidia Jetson Nano",
        image: "https://cdn.pixabay.com/photo/2020/03/06/15/30/nvidia-4908710_960_720.jpg",
        description:
        "The Nvidia Jetson Nano Developer Kit is a small, powerful computer that lets you run multiple neural networks in parallel for applications like image classification, object detection, segmentation, and speech processing.",
        version: "2GB",
        category: "Single Board Computer",
        quantity: 3,
    },
    {
        title: "BeagleBone Black",
        image: "https://cdn.pixabay.com/photo/2017/08/06/11/18/raspberry-2595228_960_720.jpg",
        description:
        "The BeagleBone Black is a low-cost, community-supported development platform for developers and hobbyists. Boot Linux in under 10 seconds and get started on development in less than 5 minutes with just a single USB cable.",
        version: "1.0",
        category: "Single Board Computer",
        quantity: 7,
    },
    {
        title: "STM32F4",
        image: "https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg",
        description:
        "The STM32F4 is a series of microcontrollers with DSP and FPU instructions developed by STMicroelectronics. It is based on the ARM Cortex-M4 core.",
        version: "1.0",
        category: "Microcontroller",
        quantity: 12,
    },
];
