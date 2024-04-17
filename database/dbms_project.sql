--Create Items table

--DROP TABLE Items
CREATE TABLE Items (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(100),
    Description VARCHAR(255),
    Version VARCHAR(50),
    Price NUMERIC(10, 2),
    CategoryID INT,
    Consumability CHAR(1) CHECK (Consumability IN ('Y', 'N')),
    Image VARCHAR(255)
);

--Insert into Items table

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (1, 'Arduino Uno R3', 'Microcontroller board based on ATmega328P', 'Rev3', 22.00, 1, 'N','https://www.arduino.cc/en/uploads/Main/ArduinoUno_R3_Front.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (2, 'Raspberry Pi 4 Model B', 'Single-board computer', '4', 35.00, 1, 'N','https://assets.raspberrypi.com/static/raspberry-pi-4-labelled@2x-1c8c2d74ade597b9c9c7e9e2fff16dd4.png');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (3, 'Anki Cozmo Robot', 'Educational robot for kids', '1', 179.99, 2, 'N','https://www.amazon.in/Cozmo-Anki-CollectorS-Robot/dp/B0762B4WHV');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (4, 'DJI Phantom 4 Pro', 'Professional aerial photography drone', '4', 1499.00, 3, 'N','https://m.media-amazon.com/images/I/51e-4Z2IRJL._AC_SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (5, 'LEGO Mindstorms EV3', 'Educational robotics kit', 'EV3', 349.95, 2, 'N','https://www.lego.com/cdn/cs/set/assets/blt0cb5ec8d8e9d9ef4/31313_alt15.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (6, 'Sphero Bolt', 'App-enabled robotic ball', '2', 149.99, 2, 'N','https://sphero.com/cdn/shop/products/Bolt0011_2_MAIN_1000x.jpg?v=1654532946');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (7, 'Parrot Bebop 2 Drone', 'Compact drone for aerial photography', '2', 349.99, 3, 'N','https://m.media-amazon.com/images/I/71b1YNfJtlL.__AC_SY300_SX300_QL70_FMwebp_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (8, 'Robo Wunderkind Robotics Kit', 'STEM education robotics kit for kids', '1.5', 229.00, 2, 'N','https://www.moravia.education/files/content/image/116-11_robo-wunder.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (9, 'NVIDIA Jetson Nano Developer Kit', 'AI computer for autonomous machines', '1', 99.00, 1, 'N','https://d29g4g2dyqv443.cloudfront.net/sites/default/files/akamai/embedded/images/jetsonNano/JetsonNano-DevKit_Front-Top_Right_trimmed.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (10, 'UBTECH JIMU Robot Builderbots Kit', 'Buildable robot kit for kids', '1', 119.99, 2, 'N','https://m.media-amazon.com/images/I/618nNsEqdDL.__AC_SX300_SY300_QL70_FMwebp_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (11, 'Makeblock mBot Robot Kit', 'Educational robot kit for beginners', '2.4G', 94.99, 2, 'N','https://www.tanotis.com/cdn/shop/files/1659097232_1450334_500x.jpg?v=1700659911');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (12, 'Pololu Zumo 32U4 Robot Kit', 'Versatile robot kit for educational use', 'V1.2', 99.95, 2, 'N','https://www.electronicscomp.com/image/cache/catalog/pololu-3pi-32u4-oled-robot-kit-with-301-mp-motors-standard-edition-kit-400x400.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (13, 'Elegoo Smart Robot Car Kit V3.0', 'Programmable robot car kit for Arduino', 'V3.0', 69.99, 2, 'N','https://robu.in/wp-content/uploads/2017/06/ELEGOO-UNO-Smart-Robot-Car-Kit-V-3.0.-Intelligent-and-Educational-Kit-for-Kids-1.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (14, 'SparkFun RedBot Basic Kit', 'Entry-level robotics platform', 'V1.2', 99.95, 2, 'N','https://cdn.sparkfun.com/assets/parts/1/0/2/8/8/13166-07a.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (15, 'DJ Roomba', 'Robotic vacuum cleaner', 'S9+', 999.00, 4, 'N','https://m.media-amazon.com/images/I/71o23NDT4zL._AC_SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (16, 'iRobot Braava Jet M6', 'Robot mop', 'M6', 499.99, 4, 'N','https://irobot.in/uploads/products/big/Braavajet%C2%AEm6119.png?time=4/13/2024-9:40:22-PM');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (17, 'Tello Quadcopter Drone', 'Mini drone for kids and adults', '1.0', 99.00, 3, 'N','https://m.media-amazon.com/images/I/51xdp0hn6hL.__AC_SX300_SY300_QL70_FMwebp_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES  (18, 'Ozobot Evo Robot', 'Educational robot for programming and coding', 'Evo', 99.99, 2, 'N','https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (19, 'RoboVac 11S', 'Robot vacuum cleaner', '11S', 229.99, 4, 'N','https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (20, 'Wonder Workshop Dash Robot', 'Educational robot for kids', 'Dash', 149.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (21, 'Makey Makey Invention Kit', 'Kit for creating interactive projects', 'Classic', 49.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (22, 'Oculus Rift S', 'Virtual reality headset', 'S', 399.00, 5, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (23, 'Sony Aibo Robot Dog', 'Advanced robotic pet', 'Ers-1000', 2899.99, 6, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (24, 'Misty II Robot Platform', 'Platform for developing personal robots', 'II', 3999.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (25, 'Phidgets 1048_0 - 16 Channel USB Interface', 'USB interface board', '1048_0', 70.00, 1, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (26, 'TurtleBot 3 Burger', 'ROS-based robot platform', 'Burger', 549.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (27, 'Mirobot v2', 'Educational drawing robot', 'v2', 149.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (28, 'RoboSeed Robotic Arm Kit', 'DIY robotic arm kit', 'V1', 99.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (29, 'Parallax Scribbler 3', 'Educational robot for learning programming', 'S3', 179.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (30, 'Ozobot Bit Coding Robot', 'Small programmable robot for kids', 'Bit', 49.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (31, 'Intel RealSense Depth Camera D435', 'Depth-sensing camera', 'D435', 179.00, 5, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (32, 'UBTECH Alpha 1S Humanoid Robot', 'Programmable humanoid robot', 'Alpha 1S', 399.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (33, 'Misty II Robot Platform', 'Platform for developing personal robots', 'II', 3999.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (34, 'Parallax ActivityBot 360', 'Educational robot kit with 360-degree vision', '360', 199.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (35, 'Robo Wunderkind Robotics Kit', 'STEM education robotics kit for kids', '1.5', 229.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (36, 'Sphero SPRK+', 'Educational robot ball', 'SPRK+', 129.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (37, 'Mirobot v2', 'Educational drawing robot', 'v2', 149.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (38, 'Sony Aibo Robot Dog', 'Advanced robotic pet', 'Ers-1000', 2899.99, 6, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (39, 'EZ-Robot JD Humanoid Revolution Robot Kit', 'Customizable humanoid robot kit', 'JD', 479.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (40, 'TurtleBot 3 Waffle Pi', 'ROS-based robot platform', 'Waffle Pi', 849.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (41, 'Pololu Zumo 32U4 Robot Kit', 'Versatile robot kit for educational use', 'V1.2', 99.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (42, 'Tello Quadcopter Drone', 'Mini drone for kids and adults', '1.0', 99.00, 3, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (43, 'Dobot Magician Robotic Arm', 'Robotic arm for education and industry', 'V1.0', 1499.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (44, 'Ozobot Evo Robot', 'Educational robot for programming and coding', 'Evo', 99.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (45, 'SparkFun RedBot Basic Kit', 'Entry-level robotics platform', 'V1.2', 99.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (46, 'Misty II Robot Platform', 'Platform for developing personal robots', 'II', 3999.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (47, 'LEGO Mindstorms EV3', 'Educational robotics kit', 'EV3', 349.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (48, 'UBTECH JIMU Robot Builderbots Kit', 'Buildable robot kit for kids', '1', 119.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (49, 'Parrot Bebop 2 Drone', 'Compact drone for aerial photography', '2', 349.99, 3, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (50, 'Makeblock mBot Robot Kit', 'Educational robot kit for beginners', '2.4G', 94.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (51, 'Anki Cozmo Robot', 'Educational robot for kids', '1', 179.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (52, 'Raspberry Pi 4 Model B', 'Single-board computer', '4', 35.00, 1, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (53, 'Arduino Uno R3', 'Microcontroller board based on ATmega328P', 'Rev3', 22.00, 1, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (54, 'DJI Phantom 4 Pro', 'Professional aerial photography drone', '4', 1499.00, 3, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (55, 'LEGO Mindstorms EV3', 'Educational robotics kit', 'EV3', 349.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (56, 'Makey Makey Invention Kit', 'Kit for creating interactive projects', 'Classic', 49.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (57, 'Oculus Rift S', 'Virtual reality headset', 'S', 399.00, 5, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (58, 'Sony Aibo Robot Dog', 'Advanced robotic pet', 'Ers-1000', 2899.99, 6, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (59, 'Mirobot v2', 'Educational drawing robot', 'v2', 149.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (60, 'Intel RealSense Depth Camera D435', 'Depth-sensing camera', 'D435', 179.00, 5, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (61, 'TurtleBot 3 Burger', 'ROS-based robot platform', 'Burger', 549.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (62, 'EZ-Robot JD Humanoid Revolution Robot Kit', 'Customizable humanoid robot kit', 'JD', 479.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (63, 'Phidgets 1048_0 - 16 Channel USB Interface', 'USB interface board', '1048_0', 70.00, 1, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (64, 'UBTECH Alpha 1S Humanoid Robot', 'Programmable humanoid robot', 'Alpha 1S', 399.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (65, 'Ozobot Bit Coding Robot', 'Small programmable robot for kids', 'Bit', 49.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (66, 'Misty II Robot Platform', 'Platform for developing personal robots', 'II', 3999.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (67, 'Makeblock mBot Robot Kit', 'Educational robot kit for beginners', '2.4G', 94.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (68, 'Tello Quadcopter Drone', 'Mini drone for kids and adults', '1.0', 99.00, 3, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (69, 'Ozobot Evo Robot', 'Educational robot for programming and coding', 'Evo', 99.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (70, 'Parallax Scribbler 3', 'Educational robot for learning programming', 'S3', 179.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (71, 'Robo Wunderkind Robotics Kit', 'STEM education robotics kit for kids', '1.5', 229.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (72, 'Sphero SPRK+', 'Educational robot ball', 'SPRK+', 129.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (73, 'TurtleBot 3 Waffle Pi', 'ROS-based robot platform', 'Waffle Pi', 849.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (74, 'Parallax ActivityBot 360', 'Educational robot kit with 360-degree vision', '360', 199.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (75, 'Misty II Robot Platform', 'Platform for developing personal robots', 'II', 3999.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (76, 'Ozobot Evo Robot', 'Educational robot for programming and coding', 'Evo', 99.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (77, 'SparkFun RedBot Basic Kit', 'Entry-level robotics platform', 'V1.2', 99.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (78, 'Anki Cozmo Robot', 'Educational robot for kids', '1', 179.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (79, 'Makeblock mBot Robot Kit', 'Educational robot kit for beginners', '2.4G', 94.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (80, 'Raspberry Pi 4 Model B', 'Single-board computer', '4', 35.00, 1, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (81, 'Arduino Uno R3', 'Microcontroller board based on ATmega328P', 'Rev3', 22.00, 1, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (82, 'DJI Phantom 4 Pro', 'Professional aerial photography drone', '4', 1499.00, 3, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (83, 'LEGO Mindstorms EV3', 'Educational robotics kit', 'EV3', 349.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (84, 'Makey Makey Invention Kit', 'Kit for creating interactive projects', 'Classic', 49.95, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (85, 'Oculus Rift S', 'Virtual reality headset', 'S', 399.00, 5, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (86, 'Sony Aibo Robot Dog', 'Advanced robotic pet', 'Ers-1000', 2899.99, 6, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (87, 'Tello Quadcopter Drone', 'Mini drone for kids and adults', '1.0', 99.00, 3, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (88, 'Robo Wunderkind Robotics Kit', 'STEM education robotics kit for kids', '1.5', 229.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (89, 'Sphero SPRK+', 'Educational robot ball', 'SPRK+', 129.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (90, 'TurtleBot 3 Burger', 'ROS-based robot platform', 'Burger', 549.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (91, 'EZ-Robot JD Humanoid Revolution Robot Kit', 'Customizable humanoid robot kit', 'JD', 479.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (92, 'Phidgets 1048_0 - 16 Channel USB Interface', 'USB interface board', '1048_0', 70.00, 1, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (93, 'UBTECH Alpha 1S Humanoid Robot', 'Programmable humanoid robot', 'Alpha 1S', 399.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (94, 'Ozobot Bit Coding Robot', 'Small programmable robot for kids', 'Bit', 49.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (95, 'Misty II Robot Platform', 'Platform for developing personal robots', 'II', 3999.00, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (96, 'Makeblock mBot Robot Kit', 'Educational robot kit for beginners', '2.4G', 94.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (97, 'Tello Quadcopter Drone', 'Mini drone for kids and adults', '1.0', 99.00, 3, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (98, 'Ozobot Evo Robot', 'Educational robot for programming and coding', 'Evo', 99.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (99, 'Parallax Scribbler 3', 'Educational robot for learning programming', 'S3', 179.99, 2, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability, Image)
VALUES (100, 'Raspberry Pi 4 Model B', 'Single-board computer', '4', 35.00, 1, 'N' ,'https://m.media-amazon.com/images/I/51hk1Sk0wHL._SX679_.jpg');

-- Create Categories Table

--DROP TABLE Categories;
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

--Insert into Categories
INSERT INTO Categories (CategoryID, CategoryName)
VALUES 
    (1, 'Microcontrollers');

INSERT INTO Categories (CategoryID, CategoryName)
VALUES 
    (2, 'Robotics Kits');

INSERT INTO Categories (CategoryID, CategoryName)
VALUES 
    (3, 'Drones');

INSERT INTO Categories (CategoryID, CategoryName)
VALUES 
    (4, 'Robotic Appliances');

INSERT INTO Categories (CategoryID, CategoryName)
VALUES 
    (5, 'Sensors');

INSERT INTO Categories (CategoryID, CategoryName)
VALUES 
    (6, 'Robot Pets');


--Create the Quantities Table

--DROP TABLE Quantities;
CREATE TABLE Quantities (
    ItemID INT PRIMARY KEY,
    Quantity INT
);

--Insert into Categories Table
INSERT INTO Quantities (ItemID, Quantity) VALUES (1, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (2, 75);
INSERT INTO Quantities (ItemID, Quantity) VALUES (3, 100);
INSERT INTO Quantities (ItemID, Quantity) VALUES (4, 30);
INSERT INTO Quantities (ItemID, Quantity) VALUES (5, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (6, 80);
INSERT INTO Quantities (ItemID, Quantity) VALUES (7, 25);
INSERT INTO Quantities (ItemID, Quantity) VALUES (8, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (9, 90);
INSERT INTO Quantities (ItemID, Quantity) VALUES (10, 70);
INSERT INTO Quantities (ItemID, Quantity) VALUES (11, 65);
INSERT INTO Quantities (ItemID, Quantity) VALUES (12, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (13, 45);
INSERT INTO Quantities (ItemID, Quantity) VALUES (14, 35);
INSERT INTO Quantities (ItemID, Quantity) VALUES (15, 75);
INSERT INTO Quantities (ItemID, Quantity) VALUES (16, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (17, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (18, 80);
INSERT INTO Quantities (ItemID, Quantity) VALUES (19, 20);
INSERT INTO Quantities (ItemID, Quantity) VALUES (20, 70);
INSERT INTO Quantities (ItemID, Quantity) VALUES (21, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (22, 45);
INSERT INTO Quantities (ItemID, Quantity) VALUES (23, 30);
INSERT INTO Quantities (ItemID, Quantity) VALUES (24, 15);
INSERT INTO Quantities (ItemID, Quantity) VALUES (25, 25);
INSERT INTO Quantities (ItemID, Quantity) VALUES (26, 35);
INSERT INTO Quantities (ItemID, Quantity) VALUES (27, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (28, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (29, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (30, 80);
INSERT INTO Quantities (ItemID, Quantity) VALUES (31, 70);
INSERT INTO Quantities (ItemID, Quantity) VALUES (32, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (33, 45);
INSERT INTO Quantities (ItemID, Quantity) VALUES (34, 30);
INSERT INTO Quantities (ItemID, Quantity) VALUES (35, 20);
INSERT INTO Quantities (ItemID, Quantity) VALUES (36, 75);
INSERT INTO Quantities (ItemID, Quantity) VALUES (37, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (38, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (39, 80);
INSERT INTO Quantities (ItemID, Quantity) VALUES (40, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (41, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (42, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (43, 30);
INSERT INTO Quantities (ItemID, Quantity) VALUES (44, 45);
INSERT INTO Quantities (ItemID, Quantity) VALUES (45, 20);
INSERT INTO Quantities (ItemID, Quantity) VALUES (46, 15);
INSERT INTO Quantities (ItemID, Quantity) VALUES (47, 25);
INSERT INTO Quantities (ItemID, Quantity) VALUES (48, 35);
INSERT INTO Quantities (ItemID, Quantity) VALUES (49, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (50, 65);
INSERT INTO Quantities (ItemID, Quantity) VALUES (51, 75);
INSERT INTO Quantities (ItemID, Quantity) VALUES (52, 65);
INSERT INTO Quantities (ItemID, Quantity) VALUES (53, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (54, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (55, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (56, 70);
INSERT INTO Quantities (ItemID, Quantity) VALUES (57, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (58, 45);
INSERT INTO Quantities (ItemID, Quantity) VALUES (59, 30);
INSERT INTO Quantities (ItemID, Quantity) VALUES (60, 20);
INSERT INTO Quantities (ItemID, Quantity) VALUES (61, 25);
INSERT INTO Quantities (ItemID, Quantity) VALUES (62, 35);
INSERT INTO Quantities (ItemID, Quantity) VALUES (63, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (64, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (65, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (66, 80);
INSERT INTO Quantities (ItemID, Quantity) VALUES (67, 70);
INSERT INTO Quantities (ItemID, Quantity) VALUES (68, 65);
INSERT INTO Quantities (ItemID, Quantity) VALUES (69, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (70, 45);
INSERT INTO Quantities (ItemID, Quantity) VALUES (71, 30);
INSERT INTO Quantities (ItemID, Quantity) VALUES (72, 20);
INSERT INTO Quantities (ItemID, Quantity) VALUES (73, 75);
INSERT INTO Quantities (ItemID, Quantity) VALUES (74, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (75, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (76, 80);
INSERT INTO Quantities (ItemID, Quantity) VALUES (77, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (78, 65);
INSERT INTO Quantities (ItemID, Quantity) VALUES (79, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (80, 45);
INSERT INTO Quantities (ItemID, Quantity) VALUES (81, 25);
INSERT INTO Quantities (ItemID, Quantity) VALUES (82, 35);
INSERT INTO Quantities (ItemID, Quantity) VALUES (83, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (84, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (85, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (86, 80);
INSERT INTO Quantities (ItemID, Quantity) VALUES (87, 70);
INSERT INTO Quantities (ItemID, Quantity) VALUES (88, 65);
INSERT INTO Quantities (ItemID, Quantity) VALUES (89, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (90, 45);
INSERT INTO Quantities (ItemID, Quantity) VALUES (91, 30);
INSERT INTO Quantities (ItemID, Quantity) VALUES (92, 20);
INSERT INTO Quantities (ItemID, Quantity) VALUES (93, 75);
INSERT INTO Quantities (ItemID, Quantity) VALUES (94, 40);
INSERT INTO Quantities (ItemID, Quantity) VALUES (95, 60);
INSERT INTO Quantities (ItemID, Quantity) VALUES (96, 80);
INSERT INTO Quantities (ItemID, Quantity) VALUES (97, 50);
INSERT INTO Quantities (ItemID, Quantity) VALUES (98, 65);
INSERT INTO Quantities (ItemID, Quantity) VALUES (99, 55);
INSERT INTO Quantities (ItemID, Quantity) VALUES (100, 45);

--Create the members table

--DROP TABLE Members;
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR2(256), -- Assuming you want to store the hashed password
    Role VARCHAR(20),
    CONSTRAINT chk_email CHECK (Email LIKE '%@iitbbs.ac.in%'),
    CONSTRAINT chk_role CHECK (Role IN ('Admin', 'Governor', 'User'))
);

--Insert into members table
INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (1, 'Sagnik', 'Basu', 'sagnik.basu@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (2, 'Shlok', 'Kumar Shaw', 'shlok.shaw@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (3, 'Lalit', 'Mohanani', 'lalit.mohanani@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (4, 'Sanjana', 'Yelukati', 'sanjana.yelukati@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (5, 'Harsha', 'Vardhan', 'harsha.vardhan@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (6, 'Prisha', 'Srinidi', 'prisha.srinidi@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (7, 'Saurav', 'Jami', 'saurav.jami@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (8, 'Kumar', 'Saurabh', 'kumar.saurabh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (9, 'Aman', 'Dangi', 'aman.dangi@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (10, 'Ishan', 'Mardani', 'ishan.mardani@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (11, 'Shubham', 'Kaushik', 'shubham.kaushik@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (12, 'Padmalochan', 'Bera', 'padmalochan.bera@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (13, 'Sushant', 'Kumar', 'sushant.kumar@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (14, 'Kasturi', 'Roturay', 'kasturi.roturay@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (15, 'Aarav', 'Gupta', 'aarav.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (16, 'Ananya', 'Patil', 'ananya.patil@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (17, 'Aditya', 'Sharma', 'aditya.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (18, 'Avani', 'Singh', 'avani.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (19, 'Aryan', 'Verma', 'aryan.verma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (20, 'Aisha', 'Yadav', 'aisha.yadav@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (21, 'Ansh', 'Kaur', 'ansh.kaur@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (22, 'Aahana', 'Rajput', 'aahana.rajput@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (23, 'Advik', 'Goyal', 'advik.goyal@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (24, 'Aradhya', 'Singhania', 'aradhya.singhania@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (25, 'Aarohi', 'Dixit', 'aarohi.dixit@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (26, 'Arya', 'Shah', 'arya.shah@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (27, 'Aditi', 'Chauhan', 'aditi.chauhan@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (28, 'Aryan', 'Raj', 'aryan.raj@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (29, 'Ananya', 'Kapoor', 'ananya.kapoor@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (30, 'Ayaan', 'Jain', 'ayaan.jain@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (31, 'Arnav', 'Mishra', 'arnav.mishra@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (32, 'Ananya', 'Gupta', 'ananya.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (33, 'Aarav', 'Malhotra', 'aarav.malhotra@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (34, 'Arya', 'Singh', 'arya.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (35, 'Advik', 'Sharma', 'advik.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (36, 'Anika', 'Das', 'anika.das@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (37, 'Aadhya', 'Patel', 'aadhya.patel@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (38, 'Aarush', 'Chopra', 'aarush.chopra@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (39, 'Anvi', 'Goyal', 'anvi.goyal@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (40, 'Ayaan', 'Verma', 'ayaan.verma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (41, 'Anushka', 'Joshi', 'anushka.joshi@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (42, 'Advaita', 'Kumar', 'advaita.kumar@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (43, 'Aadi', 'Gupta', 'aadi.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (44, 'Anshika', 'Yadav', 'anshika.yadav@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (45, 'Advika', 'Malhotra', 'advika.malhotra@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (46, 'Arjun', 'Sharma', 'arjun.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (47, 'Anvi', 'Singh', 'anvi.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (48, 'Aaradhya', 'Jain', 'aaradhya.jain@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (49, 'Aarush', 'Chauhan', 'aarush.chauhan@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (50, 'Anaya', 'Malhotra', 'anaya.malhotra@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (51, 'Arya', 'Singh', 'arya.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (52, 'Anushka', 'Sharma', 'anushka.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (53, 'Ahaan', 'Gupta', 'ahaan.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (54, 'Anvi', 'Singh', 'anvi.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (55, 'Aarav', 'Sharma', 'aarav.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (56, 'Ananya', 'Gupta', 'ananya.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (57, 'Advik', 'Singh', 'advik.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (58, 'Anvi', 'Sharma', 'anvi.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (59, 'Aarav', 'Gupta', 'aarav.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (60, 'Aarav', 'Singh', 'aarav.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (61, 'Anushka', 'Sharma', 'anushka.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (62, 'Arnav', 'Gupta', 'arnav.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (63, 'Aditya', 'Singh', 'aditya.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (64, 'Aryan', 'Sharma', 'aryan.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (65, 'Anaya', 'Gupta', 'anaya.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (66, 'Advik', 'Singh', 'advik.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (67, 'Anvi', 'Sharma', 'anvi.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (68, 'Aarav', 'Gupta', 'aarav.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (69, 'Aarav', 'Singh', 'aarav.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (70, 'Anushka', 'Sharma', 'anushka.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (71, 'Arnav', 'Gupta', 'arnav.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (72, 'Aditya', 'Singh', 'aditya.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (73, 'Aryan', 'Sharma', 'aryan.sharma@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (74, 'Anaya', 'Gupta', 'anaya.gupta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (75, 'Advik', 'Singh', 'advik.singh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');
INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (76, 'Arjun', 'Das', 'arjun.das@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (77, 'Soham', 'Bose', 'soham.bose@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (78, 'Ishani', 'Mukherjee', 'ishani.mukherjee@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (79, 'Rohan', 'Chakraborty', 'rohan.chakraborty@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (80, 'Sneha', 'Sen', 'sneha.sen@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (81, 'Anushka', 'Ghosh', 'anushka.ghosh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (82, 'Ayan', 'Dutta', 'ayan.dutta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (83, 'Ritika', 'Mitra', 'ritika.mitra@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (84, 'Arpita', 'Ganguly', 'arpita.ganguly@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (85, 'Debarghya', 'Chatterjee', 'debarghya.chatterjee@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (86, 'Tanisha', 'Roy', 'tanisha.roy@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (87, 'Subhashree', 'Das', 'subhashree.das@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (88, 'Sayan', 'Banerjee', 'sayan.banerjee@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (89, 'Riya', 'Ghosh', 'riya.ghosh@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (90, 'Indrajit', 'Biswas', 'indrajit.biswas@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (91, 'Priyanka', 'Das', 'priyanka.das@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (92, 'Abhishek', 'Bhowmik', 'abhishek.bhowmik@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (93, 'Nandini', 'Roy', 'nandini.roy@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (94, 'Sudipa', 'Majumdar', 'sudipa.majumdar@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (95, 'Arnav', 'Dutta', 'arnav.dutta@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (96, 'Tithi', 'Mondal', 'tithi.mondal@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (97, 'Ritwik', 'Biswas', 'ritwik.biswas@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (98, 'Arunima', 'Mukherjee', 'arunima.mukherjee@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Governor');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (99, 'Sayantan', 'Saha', 'sayantan.saha@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'User');

INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
VALUES (100, 'Rajesh', 'Sen', 'rajesh.sen@iitbbs.ac.in', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Admin');

--Create table Transactions

--DROP TABLE TRANSACTIONS;
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    ItemID INT,
    TransactionType VARCHAR(10) CHECK (TransactionType IN ('borrow', 'return')),
    Quantity INT,
    TransactionDate DATE,
    MemberID INT
);

--Insert into Transactions
-- Inserting data for TransactionID 101
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (101, 12, 'borrow', 5, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 1);

-- Inserting data for TransactionID 102
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (102, 34, 'borrow', 3, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 2);

-- Inserting data for TransactionID 103
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (103, 43, 'borrow', 2, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 3);

-- Inserting data for TransactionID 104
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (104, 27, 'return', 4, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 4);

-- Inserting data for TransactionID 105
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (105, 56, 'return', 2, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 5);

-- Inserting data for TransactionID 6
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (106, 25, 'borrow', 4, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 6);

-- Inserting data for TransactionID 7
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (107, 47, 'borrow', 2, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 7);

-- Inserting data for TransactionID 8
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (108, 68, 'borrow', 3, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 8);

-- Inserting data for TransactionID 9
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (109, 81, 'return', 2, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 9);

-- Inserting data for TransactionID 10
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (110, 99, 'return', 3, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 10);

-- Inserting data for TransactionID 11
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (111, 14, 'borrow', 2, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 11);

-- Inserting data for TransactionID 12
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (112, 35, 'borrow', 5, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 12);

-- Inserting data for TransactionID 13
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (113, 52, 'borrow', 1, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 13);

-- Inserting data for TransactionID 14
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (114, 76, 'return', 4, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 14);

-- Inserting data for TransactionID 15
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (115, 92, 'return', 2, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 15);

-- Inserting data for TransactionID 16
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (116, 18, 'borrow', 3, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 16);

-- Inserting data for TransactionID 17
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (117, 39, 'borrow', 2, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 17);

-- Inserting data for TransactionID 18
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (118, 59, 'borrow', 4, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 18);

-- Inserting data for TransactionID 19
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (119, 80, 'return', 3, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 19);

-- Inserting data for TransactionID 20
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (120, 98, 'return', 2, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 20);

-- Inserting data for TransactionID 121
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (121, 11, 'borrow', 2, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 21);

-- Inserting data for TransactionID 122
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (122, 32, 'borrow', 3, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 22);

-- Inserting data for TransactionID 123
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (123, 49, 'borrow', 1, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 23);

-- Inserting data for TransactionID 124
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (124, 66, 'return', 4, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 24);

-- Inserting data for TransactionID 125
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (125, 83, 'return', 2, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 25);

-- Inserting data for TransactionID 126
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (126, 13, 'borrow', 3, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 26);

-- Inserting data for TransactionID 127
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (127, 31, 'borrow', 2, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 27);

-- Inserting data for TransactionID 128
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (128, 55, 'borrow', 4, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 28);

-- Inserting data for TransactionID 129
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (129, 78, 'return', 3, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 29);

-- Inserting data for TransactionID 130
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (130, 95, 'return', 2, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 30);

-- Inserting data for TransactionID 131
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (131, 17, 'borrow', 2, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 31);

-- Inserting data for TransactionID 132
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (132, 35, 'borrow', 5, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 32);

-- Inserting data for TransactionID 133
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (133, 50, 'borrow', 1, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 33);

-- Inserting data for TransactionID 134
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (134, 70, 'return', 4, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 34);

-- Inserting data for TransactionID 135
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (135, 85, 'return', 2, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 35);

-- Inserting data for TransactionID 136
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (136, 20, 'borrow', 3, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 36);

-- Inserting data for TransactionID 137
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (137, 40, 'borrow', 2, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 37);

-- Inserting data for TransactionID 138
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (138, 60, 'borrow', 4, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 38);

-- Inserting data for TransactionID 139
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (139, 80, 'return', 3, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 39);

-- Inserting data for TransactionID 140
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (140, 100, 'return', 2, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 40);

-- Inserting data for TransactionID 141
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (141, 24, 'borrow', 4, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 41);

-- Inserting data for TransactionID 142
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (142, 42, 'borrow', 3, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 42);

-- Inserting data for TransactionID 143
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (143, 57, 'borrow', 1, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 43);

-- Inserting data for TransactionID 144
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (144, 71, 'return', 4, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 44);

-- Inserting data for TransactionID 145
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (145, 86, 'return', 2, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 45);

-- Inserting data for TransactionID 146
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (146, 15, 'borrow', 3, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 46);

-- Inserting data for TransactionID 147
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (147, 38, 'borrow', 2, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 47);

-- Inserting data for TransactionID 148
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (148, 61, 'borrow', 4, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 48);

-- Inserting data for TransactionID 149
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (149, 82, 'return', 3, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 49);

-- Inserting data for TransactionID 150
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (150, 97, 'return', 2, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 50);

-- Inserting data for TransactionID 151
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (151, 19, 'borrow', 2, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 51);

-- Inserting data for TransactionID 152
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (152, 36, 'borrow', 5, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 52);

-- Inserting data for TransactionID 153
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (153, 51, 'borrow', 1, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 53);

-- Inserting data for TransactionID 154
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (154, 72, 'return', 4, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 54);

-- Inserting data for TransactionID 155
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (155, 87, 'return', 2, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 55);

-- Inserting data for TransactionID 156
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (156, 21, 'borrow', 3, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 56);

-- Inserting data for TransactionID 157
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (157, 41, 'borrow', 2, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 57);

-- Inserting data for TransactionID 158
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (158, 62, 'borrow', 4, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 58);

-- Inserting data for TransactionID 159
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (159, 83, 'return', 3, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 59);

-- Inserting data for TransactionID 160
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (160, 99, 'return', 2, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 60);

-- Inserting data for TransactionID 161
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (161, 23, 'borrow', 4, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 61);

-- Inserting data for TransactionID 162
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (162, 44, 'borrow', 3, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 62);

-- Inserting data for TransactionID 163
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (163, 59, 'borrow', 1, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 63);

-- Inserting data for TransactionID 164
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (164, 73, 'return', 4, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 64);

-- Inserting data for TransactionID 165
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (165, 88, 'return', 2, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 65);

-- Inserting data for TransactionID 166
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (166, 16, 'borrow', 3, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 66);

-- Inserting data for TransactionID 167
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (167, 37, 'borrow', 2, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 67);

-- Inserting data for TransactionID 168
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (168, 63, 'borrow', 4, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 68);

-- Inserting data for TransactionID 169
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (169, 84, 'return', 3, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 69);

-- Inserting data for TransactionID 170
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (170, 96, 'return', 2, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 70);

-- Inserting data for TransactionID 171
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (171, 22, 'borrow', 2, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 71);

-- Inserting data for TransactionID 172
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (172, 38, 'borrow', 5, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 72);

-- Inserting data for TransactionID 173
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (173, 53, 'borrow', 1, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 73);

-- Inserting data for TransactionID 174
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (174, 74, 'return', 4, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 74);

-- Inserting data for TransactionID 175
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (175, 89, 'return', 2, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 75);

-- Inserting data for TransactionID 176
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (176, 25, 'borrow', 3, TO_DATE('2024-04-26', 'YYYY-MM-DD'), 76);

-- Inserting data for TransactionID 177
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (177, 45, 'borrow', 2, TO_DATE('2024-04-26', 'YYYY-MM-DD'), 77);

-- Inserting data for TransactionID 178
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (178, 64, 'borrow', 4, TO_DATE('2024-04-26', 'YYYY-MM-DD'), 78);

-- Inserting data for TransactionID 179
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (179, 85, 'return', 3, TO_DATE('2024-04-26', 'YYYY-MM-DD'), 79);

-- Inserting data for TransactionID 180
INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (180, 100, 'return', 2, TO_DATE('2024-04-26', 'YYYY-MM-DD'), 80);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (181, 27, 'borrow', 4, TO_DATE('2024-04-27', 'YYYY-MM-DD'), 81);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (182, 46, 'borrow', 3, TO_DATE('2024-04-27', 'YYYY-MM-DD'), 82);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (183, 65, 'borrow', 1, TO_DATE('2024-04-27', 'YYYY-MM-DD'), 83);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (184, 75, 'return', 4, TO_DATE('2024-04-27', 'YYYY-MM-DD'), 84);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (185, 90, 'return', 2, TO_DATE('2024-04-27', 'YYYY-MM-DD'), 85);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (186, 28, 'borrow', 3, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 86);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (187, 47, 'borrow', 2, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 87);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (188, 66, 'borrow', 4, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 88);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (189, 86, 'return', 3, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 89);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (190, 98, 'return', 2, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 90);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (191, 29, 'borrow', 2, TO_DATE('2024-04-29', 'YYYY-MM-DD'), 91);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (192, 48, 'borrow', 5, TO_DATE('2024-04-29', 'YYYY-MM-DD'), 92);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (193, 67, 'borrow', 1, TO_DATE('2024-04-29', 'YYYY-MM-DD'), 93);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (194, 77, 'return', 4, TO_DATE('2024-04-29', 'YYYY-MM-DD'), 94);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (195, 91, 'return', 2, TO_DATE('2024-04-29', 'YYYY-MM-DD'), 95);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (196, 30, 'borrow', 3, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 96);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (197, 49, 'borrow', 2, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 97);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (198, 68, 'borrow', 4, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 98);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (199, 87, 'return', 3, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 99);

INSERT INTO Transactions (TransactionID, ItemID, TransactionType, Quantity, TransactionDate, MemberID)
VALUES (200, 95, 'return', 2, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 100);

--Create Usage Table

--DROP TABLE Usage;
CREATE TABLE Usage (
    ItemID INT PRIMARY KEY,
    TransactionDate DATE,
    Duration INT,
    Purpose VARCHAR2(255)
);

--Insert into Usage table
-- Inserting data for ItemID 77
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (77, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 5, 'Participated in VEX Robotics Competition');

-- Inserting data for ItemID 22
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (22, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 3, 'Prepared for a robotics workshop');

-- Inserting data for ItemID 45
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (45, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 2, 'Studied for robotics quiz competition');

-- Inserting data for ItemID 89
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (89, TO_DATE('2024-03-28', 'YYYY-MM-DD'), 4, 'Attended a robotics seminar');

-- Inserting data for ItemID 13
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (13, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 6, 'Worked on a robotics project for academic purposes');

-- Inserting data for ItemID 58
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (58, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 1, 'Participated in a robotics hackathon');

-- Inserting data for ItemID 36
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (36, TO_DATE('2024-04-03', 'YYYY-MM-DD'), 4, 'Attended a robotics club meeting');

-- Inserting data for ItemID 71
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (71, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 3, 'Practiced robotics programming');

-- Inserting data for ItemID 91
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (91, TO_DATE('2024-03-29', 'YYYY-MM-DD'), 2, 'Prepared for a robotics debate');

-- Inserting data for ItemID 26
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (26, TO_DATE('2024-04-04', 'YYYY-MM-DD'), 5, 'Participated in a robotics championship');

-- Inserting data for ItemID 67
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (67, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 2, 'Worked on a robotics project for academic purposes');

-- Inserting data for ItemID 80
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (80, TO_DATE('2024-03-27', 'YYYY-MM-DD'), 4, 'Studied for robotics competition');

-- Inserting data for ItemID 40
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (40, TO_DATE('2024-04-03', 'YYYY-MM-DD'), 3, 'Attended a robotics workshop');

-- Inserting data for ItemID 55
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (55, TO_DATE('2024-03-31', 'YYYY-MM-DD'), 2, 'Participated in a robotics seminar');

-- Inserting data for ItemID 17
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (17, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 1, 'Prepared for a robotics quiz competition');

-- Inserting data for ItemID 83
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (83, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 4, 'Attended a robotics hackathon');

-- Inserting data for ItemID 10
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (10, TO_DATE('2024-03-28', 'YYYY-MM-DD'), 3, 'Practiced robotics programming');

-- Inserting data for ItemID 69
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (69, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 5, 'Prepared for a robotics debate');

-- Inserting data for ItemID 95
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (95, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 2, 'Participated in a robotics championship');

-- Inserting data for ItemID 14
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (14, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 4, 'Attended a robotics workshop');

-- Inserting data for ItemID 33
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (33, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 3, 'Practiced robotics programming');

-- Inserting data for ItemID 57
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (57, TO_DATE('2024-04-09', 'YYYY-MM-DD'), 2, 'Studied for robotics competition');

-- Inserting data for ItemID 79
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (79, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 1, 'Participated in a robotics seminar');

-- Inserting data for ItemID 92
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (92, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 5, 'Prepared for a robotics debate');

-- Inserting data for ItemID 27
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (27, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 3, 'Participated in a robotics hackathon');

-- Inserting data for ItemID 61
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (61, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 4, 'Worked on a robotics project for academic purposes');

-- Inserting data for ItemID 84
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (84, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 2, 'Attended a robotics club meeting');

-- Inserting data for ItemID 11
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (11, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 1, 'Prepared for a robotics quiz competition');

-- Inserting data for ItemID 70
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (70, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 5, 'Studied for robotics competition');

-- Inserting data for ItemID 93
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (93, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 2, 'Participated in a robotics seminar');

-- Inserting data for ItemID 31
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (31, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 3, 'Practiced robotics programming');

-- Inserting data for ItemID 48
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (48, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 4, 'Attended a robotics workshop');

-- Inserting data for ItemID 64
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (64, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 2, 'Prepared for a robotics debate');

-- Inserting data for ItemID 87
INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (87, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 3, 'Studied for robotics quiz competition');

INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (19, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 4, 'Participated in a robotics hackathon');

INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (39, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 1, 'Worked on a robotics project for academic purposes');

INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (75, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 2, 'Attended a robotics club meeting');

INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (99, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 3, 'Practiced robotics programming');

INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (60, TO_DATE('2024-04-26', 'YYYY-MM-DD'), 4, 'Attended a robotics workshop');

INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
VALUES (42, TO_DATE('2024-04-27', 'YYYY-MM-DD'), 2, 'Participated in a robotics debate');

--Create the Borrowed Table

--DROP TABLE Borrowed;
CREATE TABLE Borrowed (
    TransactionID INT PRIMARY KEY,
    SupposedReturnDate DATE
);

--Insert the data
-- Inserting data for TransactionID 101
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (101, TO_DATE('2024-04-01', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 102
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (102, TO_DATE('2024-04-01', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 103
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (103, TO_DATE('2024-04-01', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 106
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (106, TO_DATE('2024-04-02', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 107
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (107, TO_DATE('2024-04-02', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 108
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (108, TO_DATE('2024-04-02', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 111
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (111, TO_DATE('2024-04-03', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 112
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (112, TO_DATE('2024-04-03', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 113
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (113, TO_DATE('2024-04-03', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 117
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (117, TO_DATE('2024-04-04', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 118
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (118, TO_DATE('2024-04-04', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 119
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (119, TO_DATE('2024-04-04', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 121
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (121, TO_DATE('2024-04-05', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 122
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (122, TO_DATE('2024-04-05', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 123
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (123, TO_DATE('2024-04-05', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 126
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (126, TO_DATE('2024-04-06', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 127
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (127, TO_DATE('2024-04-06', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 128
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (128, TO_DATE('2024-04-06', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 131
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (131, TO_DATE('2024-04-07', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 132
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (132, TO_DATE('2024-04-07', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 133
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (133, TO_DATE('2024-04-07', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 136
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (136, TO_DATE('2024-04-08', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 137
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (137, TO_DATE('2024-04-08', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 138
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (138, TO_DATE('2024-04-08', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 141
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (141, TO_DATE('2024-04-09', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 142
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (142, TO_DATE('2024-04-09', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 143
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (143, TO_DATE('2024-04-09', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 146
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (146, TO_DATE('2024-04-10', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 147
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (147, TO_DATE('2024-04-10', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 148
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (148, TO_DATE('2024-04-10', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 151
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (151, TO_DATE('2024-04-11', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 152
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (152, TO_DATE('2024-04-11', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 153
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (153, TO_DATE('2024-04-11', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 156
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (156, TO_DATE('2024-04-12', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 157
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (157, TO_DATE('2024-04-12', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 158
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (158, TO_DATE('2024-04-12', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 161
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (161, TO_DATE('2024-04-13', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 162
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (162, TO_DATE('2024-04-13', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 163
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (163, TO_DATE('2024-04-13', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 166
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (166, TO_DATE('2024-04-14', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 167
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (167, TO_DATE('2024-04-14', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 168
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (168, TO_DATE('2024-04-14', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 171
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (171, TO_DATE('2024-04-15', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 172
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (172, TO_DATE('2024-04-15', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 173
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (173, TO_DATE('2024-04-15', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 176
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (176, TO_DATE('2024-04-16', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 177
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (177, TO_DATE('2024-04-16', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 178
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (178, TO_DATE('2024-04-16', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 181
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (181, TO_DATE('2024-04-17', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 182
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (182, TO_DATE('2024-04-17', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 183
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (183, TO_DATE('2024-04-17', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 186
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (186, TO_DATE('2024-04-18', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 187
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (187, TO_DATE('2024-04-18', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 188
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (188, TO_DATE('2024-04-18', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 191
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (191, TO_DATE('2024-04-19', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 192
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (192, TO_DATE('2024-04-19', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 193
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (193, TO_DATE('2024-04-19', 'YYYY-MM-DD') + 4);

-- Inserting data for TransactionID 196
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (196, TO_DATE('2024-04-20', 'YYYY-MM-DD') + 2);

-- Inserting data for TransactionID 197
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (197, TO_DATE('2024-04-20', 'YYYY-MM-DD') + 3);

-- Inserting data for TransactionID 198
INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
VALUES (198, TO_DATE('2024-04-20', 'YYYY-MM-DD') + 4);

--Create Fine Table

--DROP TABLE Fine;
CREATE TABLE Fine (
    TransactionID INT PRIMARY KEY,
    SupposedReturnDate DATE,
    ActualReturnDate DATE,
    FineCategory VARCHAR2(10) CHECK (FineCategory IN ('delay', 'lost')),
    Fine NUMBER(10, 2)
);

--Insert into Fine
-- Inserting data into Fine table for specific borrow transactions
INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (101, TO_DATE('2024-04-26', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 2);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (106, TO_DATE('2024-04-28', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 4);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (111, TO_DATE('2024-04-27', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 3);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (116, TO_DATE('2024-04-28', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 4);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (121, TO_DATE('2024-04-27', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 3);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (126, TO_DATE('2024-04-29', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 5);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (131, TO_DATE('2024-04-30', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 6);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (136, TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 7);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (141, TO_DATE('2024-05-02', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 8);

INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
VALUES (146, TO_DATE('2024-05-03', 'YYYY-MM-DD'), TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'delay', 9);

--Create table Reservation

--DROP TABLE Reservation;
CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    MemberID INT,
    ItemID INT,
    ReservationDate DATE,
    ReturnDate DATE,
    Status VARCHAR2(10) CHECK (Status IN ('pending', 'approved', 'returned')),
    Purpose VARCHAR2(255)
);

--Insert data in reservation
-- Inserting data into Reservation table for ReservationID 201
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (201, 5, 10, TO_DATE('2024-04-24', 'YYYY-MM-DD'), TO_DATE('2024-04-30', 'YYYY-MM-DD'), 'pending', 'For academic project');

-- Inserting data into Reservation table for ReservationID 202
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (202, 12, 25, TO_DATE('2024-04-25', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'approved', 'For research purposes');

-- Inserting data into Reservation table for ReservationID 203
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (203, 35, 40, TO_DATE('2024-04-26', 'YYYY-MM-DD'), TO_DATE('2024-05-02', 'YYYY-MM-DD'), 'returned', 'For co-curricular activity');

-- Inserting data into Reservation table for ReservationID 204
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (204, 48, 17, TO_DATE('2024-04-27', 'YYYY-MM-DD'), TO_DATE('2024-05-03', 'YYYY-MM-DD'), 'pending', 'For competition preparation');

-- Inserting data into Reservation table for ReservationID 205
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (205, 70, 89, TO_DATE('2024-04-28', 'YYYY-MM-DD'), TO_DATE('2024-05-04', 'YYYY-MM-DD'), 'approved', 'For personal project');

-- Inserting data into Reservation table for ReservationID 206
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (206, 83, 72, TO_DATE('2024-04-29', 'YYYY-MM-DD'), TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'returned', 'For academic purposes');

-- Inserting data into Reservation table for ReservationID 207
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (207, 19, 95, TO_DATE('2024-04-30', 'YYYY-MM-DD'), TO_DATE('2024-05-06', 'YYYY-MM-DD'), 'pending', 'For robotics championship');

-- Inserting data into Reservation table for ReservationID 208
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (208, 26, 53, TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2024-05-07', 'YYYY-MM-DD'), 'approved', 'For practical training');

-- Inserting data into Reservation table for ReservationID 209
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (209, 41, 64, TO_DATE('2024-05-02', 'YYYY-MM-DD'), TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'returned', 'For educational purposes');

-- Inserting data into Reservation table for ReservationID 210
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose)
VALUES (210, 67, 77, TO_DATE('2024-05-03', 'YYYY-MM-DD'), TO_DATE('2024-05-09', 'YYYY-MM-DD'), 'pending', 'For learning robotics');

INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (211, 3, 28, TO_DATE('2024-05-04', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'approved', 'For project demonstration');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (212, 17, 45, TO_DATE('2024-05-05', 'YYYY-MM-DD'), TO_DATE('2024-05-11', 'YYYY-MM-DD'), 'pending', 'For robotics workshop');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (213, 24, 62, TO_DATE('2024-05-06', 'YYYY-MM-DD'), TO_DATE('2024-05-12', 'YYYY-MM-DD'), 'returned', 'For school project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (214, 39, 79, TO_DATE('2024-05-07', 'YYYY-MM-DD'), TO_DATE('2024-05-13', 'YYYY-MM-DD'), 'approved', 'For club activity');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (215, 51, 92, TO_DATE('2024-05-08', 'YYYY-MM-DD'), TO_DATE('2024-05-14', 'YYYY-MM-DD'), 'pending', 'For science fair');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (216, 65, 14, TO_DATE('2024-05-09', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'), 'approved', 'For hackathon competition');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (217, 78, 36, TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2024-05-16', 'YYYY-MM-DD'), 'returned', 'For personal experimentation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (218, 92, 54, TO_DATE('2024-05-11', 'YYYY-MM-DD'), TO_DATE('2024-05-17', 'YYYY-MM-DD'), 'pending', 'For team project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (219, 8, 72, TO_DATE('2024-05-12', 'YYYY-MM-DD'), TO_DATE('2024-05-18', 'YYYY-MM-DD'), 'approved', 'For thesis research');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (220, 16, 87, TO_DATE('2024-05-13', 'YYYY-MM-DD'), TO_DATE('2024-05-19', 'YYYY-MM-DD'), 'returned', 'For practical training');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (221, 29, 23, TO_DATE('2024-05-14', 'YYYY-MM-DD'), TO_DATE('2024-05-20', 'YYYY-MM-DD'), 'pending', 'For academic study');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (222, 42, 48, TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-05-21', 'YYYY-MM-DD'), 'approved', 'For innovation project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (223, 58, 68, TO_DATE('2024-05-16', 'YYYY-MM-DD'), TO_DATE('2024-05-22', 'YYYY-MM-DD'), 'returned', 'For lab experiment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (224, 71, 82, TO_DATE('2024-05-17', 'YYYY-MM-DD'), TO_DATE('2024-05-23', 'YYYY-MM-DD'), 'pending', 'For seminar presentation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (225, 85, 98, TO_DATE('2024-05-18', 'YYYY-MM-DD'), TO_DATE('2024-05-24', 'YYYY-MM-DD'), 'approved', 'For self-learning');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (226, 2, 12, TO_DATE('2024-05-19', 'YYYY-MM-DD'), TO_DATE('2024-05-25', 'YYYY-MM-DD'), 'returned', 'For class project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (227, 18, 33, TO_DATE('2024-05-20', 'YYYY-MM-DD'), TO_DATE('2024-05-26', 'YYYY-MM-DD'), 'pending', 'For fieldwork');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (228, 33, 56, TO_DATE('2024-05-21', 'YYYY-MM-DD'), TO_DATE('2024-05-27', 'YYYY-MM-DD'), 'approved', 'For internship');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (229, 47, 75, TO_DATE('2024-05-22', 'YYYY-MM-DD'), TO_DATE('2024-05-28', 'YYYY-MM-DD'), 'returned', 'For school project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (230, 61, 90, TO_DATE('2024-05-23', 'YYYY-MM-DD'), TO_DATE('2024-05-29', 'YYYY-MM-DD'), 'pending', 'For research project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (231, 7, 29, TO_DATE('2024-05-24', 'YYYY-MM-DD'), TO_DATE('2024-05-30', 'YYYY-MM-DD'), 'approved', 'For project presentation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (232, 22, 39, TO_DATE('2024-05-25', 'YYYY-MM-DD'), TO_DATE('2024-05-31', 'YYYY-MM-DD'), 'returned', 'For experimentation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (233, 36, 58, TO_DATE('2024-05-26', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'pending', 'For practical session');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (234, 52, 74, TO_DATE('2024-05-27', 'YYYY-MM-DD'), TO_DATE('2024-06-02', 'YYYY-MM-DD'), 'approved', 'For innovation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (235, 68, 93, TO_DATE('2024-05-28', 'YYYY-MM-DD'), TO_DATE('2024-06-03', 'YYYY-MM-DD'), 'returned', 'For group project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (236, 84, 13, TO_DATE('2024-05-29', 'YYYY-MM-DD'), TO_DATE('2024-06-04', 'YYYY-MM-DD'), 'pending', 'For robotics competition');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (237, 3, 34, TO_DATE('2024-05-30', 'YYYY-MM-DD'), TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'approved', 'For personal project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (238, 18, 50, TO_DATE('2024-05-31', 'YYYY-MM-DD'), TO_DATE('2024-06-06', 'YYYY-MM-DD'), 'returned', 'For educational purpose');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (239, 35, 69, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-07', 'YYYY-MM-DD'), 'pending', 'For research experiment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (240, 51, 81, TO_DATE('2024-06-02', 'YYYY-MM-DD'), TO_DATE('2024-06-08', 'YYYY-MM-DD'), 'approved', 'For group study');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (241, 67, 96, TO_DATE('2024-06-03', 'YYYY-MM-DD'), TO_DATE('2024-06-09', 'YYYY-MM-DD'), 'returned', 'For research project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (242, 82, 16, TO_DATE('2024-06-04', 'YYYY-MM-DD'), TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'pending', 'For hands-on experience');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (243, 98, 38, TO_DATE('2024-06-05', 'YYYY-MM-DD'), TO_DATE('2024-06-11', 'YYYY-MM-DD'), 'approved', 'For academic project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (244, 13, 57, TO_DATE('2024-06-06', 'YYYY-MM-DD'), TO_DATE('2024-06-12', 'YYYY-MM-DD'), 'returned', 'For school assignment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (245, 29, 73, TO_DATE('2024-06-07', 'YYYY-MM-DD'), TO_DATE('2024-06-13', 'YYYY-MM-DD'), 'pending', 'For club activity');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (246, 45, 88, TO_DATE('2024-06-08', 'YYYY-MM-DD'), TO_DATE('2024-06-14', 'YYYY-MM-DD'), 'approved', 'For self-learning');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (247, 61, 18, TO_DATE('2024-06-09', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'returned', 'For project demonstration');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (248, 77, 42, TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-06-16', 'YYYY-MM-DD'), 'pending', 'For lab experiment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (249, 93, 60, TO_DATE('2024-06-11', 'YYYY-MM-DD'), TO_DATE('2024-06-17', 'YYYY-MM-DD'), 'approved', 'For robotics workshop');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (250, 10, 76, TO_DATE('2024-06-12', 'YYYY-MM-DD'), TO_DATE('2024-06-18', 'YYYY-MM-DD'), 'returned', 'For research experiment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (251, 27, 95, TO_DATE('2024-06-13', 'YYYY-MM-DD'), TO_DATE('2024-06-19', 'YYYY-MM-DD'), 'pending', 'For academic study');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (252, 43, 22, TO_DATE('2024-06-14', 'YYYY-MM-DD'), TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'approved', 'For innovation project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (253, 59, 41, TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-06-21', 'YYYY-MM-DD'), 'returned', 'For personal project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (254, 75, 63, TO_DATE('2024-06-16', 'YYYY-MM-DD'), TO_DATE('2024-06-22', 'YYYY-MM-DD'), 'pending', 'For hands-on experience');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (255, 91, 83, TO_DATE('2024-06-17', 'YYYY-MM-DD'), TO_DATE('2024-06-23', 'YYYY-MM-DD'), 'approved', 'For group project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (256, 5, 7, TO_DATE('2024-06-18', 'YYYY-MM-DD'), TO_DATE('2024-06-24', 'YYYY-MM-DD'), 'returned', 'For research project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (257, 23, 31, TO_DATE('2024-06-19', 'YYYY-MM-DD'), TO_DATE('2024-06-25', 'YYYY-MM-DD'), 'pending', 'For educational purpose');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (258, 40, 52, TO_DATE('2024-06-20', 'YYYY-MM-DD'), TO_DATE('2024-06-26', 'YYYY-MM-DD'), 'approved', 'For club activity');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (259, 58, 71, TO_DATE('2024-06-21', 'YYYY-MM-DD'), TO_DATE('2024-06-27', 'YYYY-MM-DD'), 'returned', 'For project presentation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (260, 76, 85, TO_DATE('2024-06-22', 'YYYY-MM-DD'), TO_DATE('2024-06-28', 'YYYY-MM-DD'), 'pending', 'For self-learning');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (261, 2, 10, TO_DATE('2024-06-23', 'YYYY-MM-DD'), TO_DATE('2024-06-29', 'YYYY-MM-DD'), 'approved', 'For fieldwork');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (262, 19, 30, TO_DATE('2024-06-24', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 'returned', 'For experimentation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (263, 37, 53, TO_DATE('2024-06-25', 'YYYY-MM-DD'), TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'pending', 'For practical session');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (264, 54, 75, TO_DATE('2024-06-26', 'YYYY-MM-DD'), TO_DATE('2024-07-02', 'YYYY-MM-DD'), 'approved', 'For innovation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (265, 72, 97, TO_DATE('2024-06-27', 'YYYY-MM-DD'), TO_DATE('2024-07-03', 'YYYY-MM-DD'), 'returned', 'For group project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (266, 91, 12, TO_DATE('2024-06-28', 'YYYY-MM-DD'), TO_DATE('2024-07-04', 'YYYY-MM-DD'), 'pending', 'For robotics competition');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (267, 11, 31, TO_DATE('2024-06-29', 'YYYY-MM-DD'), TO_DATE('2024-07-05', 'YYYY-MM-DD'), 'approved', 'For personal project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (268, 29, 51, TO_DATE('2024-06-30', 'YYYY-MM-DD'), TO_DATE('2024-07-06', 'YYYY-MM-DD'), 'returned', 'For educational purpose');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (269, 48, 70, TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-07', 'YYYY-MM-DD'), 'pending', 'For research experiment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (270, 68, 90, TO_DATE('2024-07-02', 'YYYY-MM-DD'), TO_DATE('2024-07-08', 'YYYY-MM-DD'), 'approved', 'For group study');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (271, 88, 15, TO_DATE('2024-07-03', 'YYYY-MM-DD'), TO_DATE('2024-07-09', 'YYYY-MM-DD'), 'returned', 'For research project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (272, 7, 35, TO_DATE('2024-07-04', 'YYYY-MM-DD'), TO_DATE('2024-07-10', 'YYYY-MM-DD'), 'pending', 'For academic study');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (273, 28, 56, TO_DATE('2024-07-05', 'YYYY-MM-DD'), TO_DATE('2024-07-11', 'YYYY-MM-DD'), 'approved', 'For innovation project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (274, 49, 75, TO_DATE('2024-07-06', 'YYYY-MM-DD'), TO_DATE('2024-07-12', 'YYYY-MM-DD'), 'returned', 'For personal project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (275, 70, 96, TO_DATE('2024-07-07', 'YYYY-MM-DD'), TO_DATE('2024-07-13', 'YYYY-MM-DD'), 'pending', 'For hands-on experience');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (276, 92, 18, TO_DATE('2024-07-08', 'YYYY-MM-DD'), TO_DATE('2024-07-14', 'YYYY-MM-DD'), 'approved', 'For lab experiment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (277, 16, 38, TO_DATE('2024-07-09', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'returned', 'For robotics workshop');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (278, 35, 59, TO_DATE('2024-07-10', 'YYYY-MM-DD'), TO_DATE('2024-07-16', 'YYYY-MM-DD'), 'pending', 'For project demonstration');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (279, 54, 76, TO_DATE('2024-07-11', 'YYYY-MM-DD'), TO_DATE('2024-07-17', 'YYYY-MM-DD'), 'approved', 'For lab activity');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (280, 76, 97, TO_DATE('2024-07-12', 'YYYY-MM-DD'), TO_DATE('2024-07-18', 'YYYY-MM-DD'), 'returned', 'For academic project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (281, 98, 19, TO_DATE('2024-07-13', 'YYYY-MM-DD'), TO_DATE('2024-07-19', 'YYYY-MM-DD'), 'pending', 'For hands-on learning');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (282, 3, 39, TO_DATE('2024-07-14', 'YYYY-MM-DD'), TO_DATE('2024-07-20', 'YYYY-MM-DD'), 'approved', 'For practical session');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (283, 26, 60, TO_DATE('2024-07-15', 'YYYY-MM-DD'), TO_DATE('2024-07-21', 'YYYY-MM-DD'), 'returned', 'For club activity');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (284, 47, 80, TO_DATE('2024-07-16', 'YYYY-MM-DD'), TO_DATE('2024-07-22', 'YYYY-MM-DD'), 'pending', 'For self-learning');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (285, 69, 99, TO_DATE('2024-07-17', 'YYYY-MM-DD'), TO_DATE('2024-07-23', 'YYYY-MM-DD'), 'approved', 'For project development');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (286, 91, 20, TO_DATE('2024-07-18', 'YYYY-MM-DD'), TO_DATE('2024-07-24', 'YYYY-MM-DD'), 'returned', 'For innovation project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (287, 15, 42, TO_DATE('2024-07-19', 'YYYY-MM-DD'), TO_DATE('2024-07-25', 'YYYY-MM-DD'), 'pending', 'For personal project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (288, 36, 62, TO_DATE('2024-07-20', 'YYYY-MM-DD'), TO_DATE('2024-07-26', 'YYYY-MM-DD'), 'approved', 'For group project');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (289, 58, 84, TO_DATE('2024-07-21', 'YYYY-MM-DD'), TO_DATE('2024-07-27', 'YYYY-MM-DD'), 'returned', 'For hands-on experience');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (290, 80, 3, TO_DATE('2024-07-22', 'YYYY-MM-DD'), TO_DATE('2024-07-28', 'YYYY-MM-DD'), 'pending', 'For educational purpose');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (291, 6, 23, TO_DATE('2024-07-23', 'YYYY-MM-DD'), TO_DATE('2024-07-29', 'YYYY-MM-DD'), 'approved', 'For club activity');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (292, 28, 43, TO_DATE('2024-07-24', 'YYYY-MM-DD'), TO_DATE('2024-07-30', 'YYYY-MM-DD'), 'returned', 'For project presentation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (293, 52, 64, TO_DATE('2024-07-25', 'YYYY-MM-DD'), TO_DATE('2024-07-31', 'YYYY-MM-DD'), 'pending', 'For self-learning');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (294, 74, 88, TO_DATE('2024-07-26', 'YYYY-MM-DD'), TO_DATE('2024-08-01', 'YYYY-MM-DD'), 'approved', 'For academic study');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (295, 96, 9, TO_DATE('2024-07-27', 'YYYY-MM-DD'), TO_DATE('2024-08-02', 'YYYY-MM-DD'), 'returned', 'For research experiment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (296, 13, 29, TO_DATE('2024-07-28', 'YYYY-MM-DD'), TO_DATE('2024-08-03', 'YYYY-MM-DD'), 'pending', 'For practical session');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (297, 32, 50, TO_DATE('2024-07-29', 'YYYY-MM-DD'), TO_DATE('2024-08-04', 'YYYY-MM-DD'), 'approved', 'For innovation');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (298, 52, 74, TO_DATE('2024-07-30', 'YYYY-MM-DD'), TO_DATE('2024-08-05', 'YYYY-MM-DD'), 'returned', 'For project demonstration');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (299, 75, 91, TO_DATE('2024-07-31', 'YYYY-MM-DD'), TO_DATE('2024-08-06', 'YYYY-MM-DD'), 'pending', 'For lab experiment');
INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Status, Purpose) VALUES (300, 99, 14, TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2024-08-07', 'YYYY-MM-DD'), 'approved', 'For academic project');


--Create table AdminReq

--DROP TABLE AdminReq;
CREATE TABLE AdminReq(
    RequestID INT PRIMARY KEY,
    MemberID INT,
    Accepted CHAR(1) CHECK (Accepted IN ('Y', 'N'))
);

INSERT INTO adminreq  VALUES (1,8, 'N');
INSERT INTO adminreq  VALUES (2,17, 'N');
INSERT INTO adminreq  VALUES (3,26, 'N');
INSERT INTO adminreq  VALUES (4,35, 'N');
INSERT INTO adminreq  VALUES (5,44, 'N');
INSERT INTO adminreq  VALUES (6,53, 'N');
INSERT INTO adminreq  VALUES (7,62, 'N');
INSERT INTO adminreq  VALUES (8,71, 'N');
INSERT INTO adminreq  VALUES (9,80, 'N');
INSERT INTO adminreq  VALUES (10,89, 'N');
