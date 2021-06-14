USE [tinkesh];
SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_admin]([admin_id], [admin_name], [admin_password])
SELECT 1, N'Tinkesh', N'123456' UNION ALL
SELECT 2, N'Alex', N'alex123'
COMMIT;
RAISERROR (N'[dbo].[tbl_admin]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_age_group]([age_id], [age_name])
SELECT 1, N'Gaming Laptop' UNION ALL
SELECT 2, N'2 in 1 Laptop' UNION ALL
SELECT 3, N'Notebook' UNION ALL
SELECT 4, N'Work Laptop' UNION ALL
SELECT 5, N'Home Laptop' UNION ALL
SELECT 6, N'MacBooks'
COMMIT;
RAISERROR (N'[dbo].[tbl_age_group]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_attribute]([attribute_id], [attribute_name])
SELECT 1, N'HDD' UNION ALL
SELECT 2, N'SSD' UNION ALL
SELECT 3, N'DDR1' UNION ALL
SELECT 4, N'DDR2' UNION ALL
SELECT 5, N'DDR3' UNION ALL
SELECT 6, N'DDR4' UNION ALL
SELECT 7, N'BATTERY' UNION ALL
SELECT 8, N'BRAND' UNION ALL
SELECT 9, N'COLOR' UNION ALL
SELECT 10, N'OS' UNION ALL
SELECT 11, N'SCREEN TYPE' UNION ALL
SELECT 12, N'SCREEN SIZE' UNION ALL
SELECT 13, N'TOUCHSCREEN' UNION ALL
SELECT 14, N'PROCESSOR' UNION ALL
SELECT 15, N'WARRANTY' UNION ALL
SELECT 16, N'GRAPHICS' UNION ALL
SELECT 17, N'RATING'
COMMIT;
RAISERROR (N'[dbo].[tbl_attribute]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_bill]([billid], [userid], [total], [dt])
SELECT 1, 1, 45489, '20180217 11:10:54.353' UNION ALL
SELECT 2, 1, 149309, '20180309 11:20:01.627' UNION ALL
SELECT 3, 1, 38990, '20180309 20:46:26.747'
COMMIT;
RAISERROR (N'[dbo].[tbl_bill]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_billitems]([itemid], [billid], [product_id], [qty], [total])
SELECT 1, 1, 20, 1, 45489 UNION ALL
SELECT 2, 2, 1, 2, 77980 UNION ALL
SELECT 3, 3, 1, 1, 38990 UNION ALL
SELECT 4, 4, 1, 1, 38990 UNION ALL
SELECT 5, 5, 1, 1, 38990 UNION ALL
SELECT 6, 6, 1, 1, 38990 UNION ALL
SELECT 7, 7, 1, 1, 38990 UNION ALL
SELECT 8, 8, 1, 1, 38990 UNION ALL
SELECT 9, 9, 19, 1, 62790 UNION ALL
SELECT 10, 10, 1, 1, 38990 UNION ALL
SELECT 11, 2, 1, 1, 38990 UNION ALL
SELECT 12, 2, 13, 1, 69959 UNION ALL
SELECT 13, 2, 14, 1, 40360 UNION ALL
SELECT 14, 3, 1, 1, 38990
COMMIT;
RAISERROR (N'[dbo].[tbl_billitems]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_category]([category_id], [category_name])
SELECT 1, N'LAPTOPS' UNION ALL
SELECT 2, N'SPARE PARTS' UNION ALL
SELECT 3, N'ACCESSORIES'
COMMIT;
RAISERROR (N'[dbo].[tbl_category]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_enquiry]([name], [email], [message])
SELECT N'Siddhartha', N'xyz@gmail.com', N'can i get insurance on hp laptops??' UNION ALL
SELECT N'Aniket', N'pqrs@gmail.com', N'Is there any offer on laptops?? Or any sale on festival??? '
COMMIT;
RAISERROR (N'[dbo].[tbl_enquiry]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_feedback]([name], [email], [rating], [message])
SELECT N'fgdvdgd', N'svsfbdbbzgd', N'Excellent', N'cbvbzsjfvnzflbnkzdlgjbgfbljzjldf' UNION ALL
SELECT N'Tinkesh', N'abcd@gmail.com', N'Excellent', N'This is cool website. No need to do anything...'
COMMIT;
RAISERROR (N'[dbo].[tbl_feedback]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_product]([product_id], [product_name], [product_details], [category_id], [age_id], [sales_price], [MRP], [image1], [image2], [image3], [enable])
SELECT 1, N'HP 15-bs145tu 15.6-inch FHD Laptop (8th Gen Intel Core i5-8250U/8GB/1TB/Free DOS/Integrated Graphics), Sparkling Black', N'8th Gen Intel Core i5 - 8250U Processor (1.6 GHz base frequency, up to 3.4 GHz with Intel Turbo Boost Technology, 6 MB cache, 4 cores)
8 GB DDR4 RAM
1TB 5400rpm Serial ATA hard drive
15.6-inch Full HD (1920 x 1080) Display
Intel UHD 620 Graphics
Free DOS Operating System
Weighs only 2.1 Kg
Touchpad with multi-touch gesture support', 1, 5, 38990, 41058, N'1_1.jpg', N'1_2.jpg', N'1_3.jpg', 1 UNION ALL
SELECT 2, N'iBall CompBook Exemplaire+14-inch Laptop (Atom x5-Z8350/4GB/32GB/Windows 10/Integrated Graphics)', N'Intel Quad-Core Processor,
32GB in-build storage,
4GB DDR3 RAM,
Windows 10,
Can update the HDD upto 1TB.', 1, 5, 13999, 15589, N'2_1.jpg', N'2_2.jpg', N'2_3.jpg', 1 UNION ALL
SELECT 3, N'Dell Inspiron 15 3565 15-inch Laptop (7th Gen E2-9000/4GB/1TB/Win. 10 /Integrated Graphics), Black', N'Up to 1.8GHz AMD E2-9000 7th Gen processor,
4GB DDR4 RAM,
1 TB Serial ATA hard drive,
15-inch screen, Integrated Graphics,
Windows 10 operating system with preloded ms-office.', 1, 5, 23775, 26470, N'3_1.jpg', N'3_2.jpg', N'3_3.jpg', 1 UNION ALL
SELECT 7, N'ACER A515-51G-58GJ ( INTEL CORE I5- 8250U /8TH GEN / 4GB DDR4 RAM / 1TB HDD / 15.6 LED SCREEN / 2GB NVIDIA / DOS ) STEEL GRAY', N'ACER ASPIRE 5(A515-51G-58GJ) NX.GT1SI.001 LAPTOP / STEEL GRAY
INTEL CORE I5- 8250U /8TH GEN / 4GB DDR4 RAM / 1TB HARDISK /
NVIDIA® GeForce® MX150 2GB RAM / 15.6Inches HD (1366 x 768) / WIFI /
BLUETOOTH / WEBCAM / DOS / UPTO 6 HOURS BACK UP / NO DVDRW.
1 YEAR ONSITE WARRANTY. (WITHOUT DVDRW)', 1, 5, 40444, 46999, N'7_1.jpg', N'7_2.jpg', N'7_3.jpg', 1 UNION ALL
SELECT 8, N'Lenovo 80X400HCIN 14-inch Laptop (i3-7130U/4GB/1TB/Windows 10 Home Premium, 64/32Bit/Integrated Graphics)', N'GHz Intel i3-7130U processor,
4GB DDR4 RAM,
1TB hard drive,
14-inch screen, Integrated Graphics,
Windows 10 Home Premium, 64/32Bit operating system,
1.69kg laptop.', 1, 5, 35990, 45190, N'8_1.jpg', N'8_2.jpg', N'8_3.jpg', 1 UNION ALL
SELECT 9, N'Asus X541NA-GO125T 15.6-inch Laptop (Pentium Quad Core N4200 CPU / 4GB Ram / 1TB HDD / Win10/), Silver With 1 Yrs Warranty By Asus India Service Center', N'Call on Asus Toll Free 1800 2090 365 Monday to Saturday from 9:00 to 18:00,Intel Pentium Quad Core 4200 CPU,
4 GB DDR4 Ram,
1 TB Sata HDD,
15.6-inch LED Screen,
Win 10.', 1, 5, 24399, 26800, N'9_1.jpg', N'9_2.jpg', N'9_3.jpg', 1 UNION ALL
SELECT 10, N'Dell Inspiron APU Dual Core A6 7th Gen - (4 GB/1 TB HDD/UBUNTU) 3565 Laptop (15.6 inch, Black)', N'AMD APU Dual Core A6 Processor (7th Gen),
4 GB DDR4 RAM,
Linux/Ubuntu Operating System,
1TB HDD,
15.6 inch Display.', 1, 5, 21990, 26800, N'10_1.jpg', N'10_2.jpg', N'10_3.jpg', 1 UNION ALL
SELECT 11, N'Dell Vostro 3468 14-inch Laptop (7th Gen Corei3-7100U/4GB/1TB/Windows 10/Integrated Graphics), Black', N'2.4GHz Intel Core i3-7100U processor,
4GB DDR4 RAM,
1TB 5400rpm Serial ATA hard drive,
14-inch screen, Intel HD Graphics Graphics,
Windows 10 operating system,
1.75kg laptop,
Anti glare display, TPM chip for bit locker security.', 1, 5, 33990, 34623, N'11_1.jpg', N'11_2.jpg', N'11_3.jpg', 1 UNION ALL
SELECT 12, N'Dell Inspiron 5570 8thGen Corei5,8GB RAM,1TB HDD,2GB Graphics,Win10 Laptop', N'Dell 5570 Inspiron,
8thGeneration Corei5,
8GB RAM, 1TB Hard Drive,
Windows 10+MS OFFICE,
15.6 Inch Screen.', 1, 5, 56190, 58450, N'12_1.jpg', N'12_2.jpg', N'12_3.jpg', 1 UNION ALL
SELECT 13, N'ASUS S510UN-BQ052T 2017 15.6-inch Laptop (Core i7-8550U/8GB/1TB/Windows 10 (64bit)/2GB Graphics), Gold', N'Nvidia MX150 Graphics,
17.9 mm Thin and 1.7 kg Light with Spun Metal Finish,
Full HD IPS Nano Edge Display,
Ultra Narrow Bezel: 7.8mm NanoEdge bezel with 80% Screen to Body Ratio with 178 Degree Wide Viewing Angle,
Fast Charging Battery Upto 60% Capacity in Just 49 Minutes
8 hrs Battery Life,
Call on Asus Toll Free 1800 2090 365 Monday to Saturday from 9:00 to 18:00.', 1, 5, 69959, 76990, N'13_1.jpg', N'13_2.jpg', N'13_3.jpg', 1 UNION ALL
SELECT 14, N'HP Pavilion x360 ad031tu/Core i3 7th gen /4 GB DDR4/1 TB/HD Graphics 620/Windows 10 Home', N'Intel® CoreTM i3-7130U Processor (2.7 GHz, 3 MB cache, 2 cores),
Windows 10 Home Single Language 64,
Intel® HD Graphics 620,
1 TB 5400 rpm SATA,
4 GB DDR4-2133 SDRAM (1 x 4 GB).', 1, 5, 40360, 42550, N'14_1.jpg', N'14_2.jpg', N'14_3.jpg', 1 UNION ALL
SELECT 15, N'ASUS VivoBook S510UN-BQ132T (8th Gen Intel® Core™ i7 8550U (1.80 GHz. with Turbo Boost Upto 4.0 GHz.) / 16GB DDR4 / 1TB+128GB SSD / 15.6" FULL HD (1920*1080) / NVIDIA GeForce MX 150 with 2 GB DDR5 VRAM / NO ODD / WIN 10 / 2 Year Warranty / Gold)', N'Powerful 8th Generation Intel Core i7-8550U 1.80GHz (Turbo up to 4.0 GHz) Processor with improved media engine for smooth and uninterrupted FULL HD playback or encoding
15.6-inch FULL HD LED (1080*1920) 178Ëš wide-viewing angle display and NVidia GeForce MX150 2GB DDR5 discrete graphics for flawless visuals and mainstream gaming; 16GB DDR4 2400MHz RAM (Expandable Upto 32 GB) and 1 TB HDD + 128 GB SSD,
Ergonomic backlit keyboard with fingerprint sensor.
Comprehensive connections with USB 3.1 Type-C (Gen1), USB 3.1 Type-A, USB 2.0, HDMI, & headphone/mike ports for every device. / 802.11ac (Dual band) 2*2 Wifi & 4.2 Bluetooth
Durable & long-lasting lithium polymer battery with fast charging technology that charges up to 60% capacity in just 49 minutes / 2 Years Global Manufacturing Warranty.', 1, 1, 81890, 83450, N'15_1.jpg', N'15_2.jpg', N'15_3.jpg', 1 UNION ALL
SELECT 16, N'HP Notebook 15- bs146tu Intel (Core™ i5-8250U 8th Gen, 1.6GHz /4GB DDR4 /1TB HDD / 39.62 cm(15.6) diagonal FHD SVA anti-glare WLED-backlit/ Windows 10 Home ) Black', N'Intel® CoreTM i5-8250U (1.6 GHz base frequency, up to 3.4 GHz with Intel® Turbo Boost Technology, 6 MB cache, 4 cores)
4 GB DDR4-2400 SDRAM (1 x 4 GB) ; 1 TB 5400 rpm SATA
DVD-Writer ; Integrated 10/100/1000 GbE LAN.
HP TrueVision HD Camera with integrated digital microphone ; Dual speakers.
Windows 10 Home Single Language 64 ; McAfee LiveSafeTM ; HP 3D DriveGuard; HP ePrint; HP Recovery Manager; HP Support Assistant; HP Audio Switch; HP Sure Connect; HP JumpStart; HP Documentation.', 1, 5, 39832, 41250, N'16_1.jpg', N'16_2.jpg', N'16_3.jpg', 1 UNION ALL
SELECT 17, N'Acer Swift SF314-52 14-inch Notebook (Intel Core i3 7100U Processor/4GB/256GB SSD/Linux/Intel HD Graphics 620), Silver', N'GHz Intel Core i3 7100U processor,
4GB DDR4 RAM,
256GB hard drive,
14-inch screen, Intel HD Graphics 620 Graphics,
Linux operating system.', 1, 3, 41989, 43740, N'17_1.jpg', N'17_2.jpg', N'17_3.jpg', 1 UNION ALL
SELECT 19, N'Dell Inspiron 5379 8th Generation Corei5,8GB RAM,1TB Hard Drive,13.3 -inch FHD Touch Screen Laptop,Windows 10', N'8thGeneration Corei5,
8 GB RAM, 1TB Hard Drive,
13.3" Full HD Touch Screen,
Windows 10,
2-in-1 Laptop.', 1, 2, 62790, 63989, N'19_1.jpg', N'19_2.jpg', N'19_3.jpg', 1 UNION ALL
SELECT 4, N'Micromax Canvas Lapbook L1160 11.6-inch Laptop Black (Intel Quad Core/2GB/32GB/Windows 10/Integrated Graphics)', N'Impressive Display, User-Friendly If you are a Windows-user looking for a decent laptop with a range of features, the Micromax Canvas Lapbook L1160 could be a great choice for you. Featuring a 11.6 inches Laptop, the notebook offers a great viewing experience. With Windows 10 to run the operations, the laptop has a great user interface, which gives you a better experience whether you enjoy the wonderful customized tile-wall home screen, multitask. Efficient Performance, Reliable Storage Space The Canvas notebook is powered by 1.83 GHz Intel Atom Quad Core processor to provide you with an efficient performance. The 2 GB DDR3 RAM ensures a smooth multitasking experience. 1 HDMI and Bluetooth 4.0, And, using Canvas high-speed Wi-Fi', 1, 5, 9999, 11999, N'4_1.jpg', N'4_2.jpg', N'4_3.jpg', 1 UNION ALL
SELECT 5, N'Lenovo V110-80TDA00HIN AMD A6 9210@2.4 Ghz. With Turbo Boost to 2.8 Ghz/ 4GB RAM / 1TB HDD/ 15.6 Inch AntiGlare Screen/ With ODD / 1 YEAR WARRANTY', N'Lenovo V110 AMD Laptop With Best Performance Processor,
Screen Opens flat to 180º to offer the optimal viewing angle in any situation.
Laptop With 15.6 HD AntiGlare Screen
4 GB Ram,
1 Tb Hard Disk Drive.', 1, 5, 20799, 22550, N'5_1.jpg', N'5_2.jpg', N'5_3.jpg', 1 UNION ALL
SELECT 6, N'Dell Inspiron 5567 CORE i3-6006U 6TH GEN/4GB/1TB/15.6 Inches FHD/W10 (Black)', N'Operating System - W10,
HDD Capacity - 1 TB HDD,
System Memory - 4 GB DDR4 RAM,
Resolution - 1920 x 1080 pixel, English Backlit Keyboard,
Warranty - One Year from Dell India.', 1, 5, 31890, 42990, N'6_1.jpg', N'6_2.jpg', N'6_3.jpg', 1 UNION ALL
SELECT 18, N'Newest HP Pavilion x360 14-ba123tu Anti-Glare 14 Inch FHD Touchscreen Convertible Laptop (8th Gen Intel i5-8250U/8GB DDR4/1TB SSHD/Win 10/Backlit keyboard/MS Office Home and Student 2016) Natural Silver', N'14 inch diagonal FHD IPS WLED-backlit multitouch-enabled edge-to-edge glass (1920 x 1080) Touchscreen Display
8th Gen Intel® CoreTM i5-8250U Processor(1.6 GHz base frequency, up to 3.4 GHz with Intel® Turbo Boost Technology, 6 MB cache, 4 cores) | Intel® UHD Graphics 620,
8 GB DDR4-2400 SDRAM | 1 TB 5400 rpm SATA Solid State Hybrid Drive (SSHD), 8 GB,
Windows 10 Home (64-bit) Operating System | Full-size Backlit Island Style Keyboard with Multi-touch gesture support.
Lightweight at just 1.63 kgs | 3-cell, 41 Wh Li-ion prismatic battery with HP Fast Charge Technology.', 1, 3, 64990, 69925, N'18_1.jpg', N'18_2.jpg', N'18_3.jpg', 1 UNION ALL
SELECT 20, N'HP NOTEBOOK 15- BS179TX (INTEL CORE I5 8th Gen (8250U)/ 8GB RAM / 1TB HDD /DOS/ 39.62 cm(15.6) diagonal FHD SVA anti-glare / AMD Radeon™ 520 Graphics 2 GB DDR3 dedicated)', N'Intel® CoreTM i5-8250U (1.6 GHz base frequency, up to 3.4 GHz with Intel® Turbo Boost Technology, 6 MB cache, 4 cores)
8 GB DDR4-2400 SDRAM (1 x 8 GB) , AMD RadeonTM 520 Graphics (2 GB DDR3 dedicated) , 1 TB 5400 rpm SATA
DVD-Writer , 39.62 cm(15.6) diagonal FHD SVA anti-glare WLED-backlit (1920 x 1080) , 802.11b/g/n (1x1) and Bluetooth® 4.0 combo / Dual speakers,
2 USB 3.1 Gen 1 (Data transfer only); 1 USB 2.0; 1 HDMI; 1 RJ-45; 1 headphone/microphone combo / 65 W AC power adapter / 4-cell, 41 Wh Li-ion,
FreeDOS 2.0 / HP TrueVision HD Camera with integrated digital microphone hp toll free 1800-200-0047.', 1, 3, 45489, 48725, N'20_1.jpg', N'20_2.jpg', N'20_3.jpg', 1
COMMIT;
RAISERROR (N'[dbo].[tbl_product]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_product_attribute]([prod_attr_id], [product_id], [attribute_id], [attribute_value])
SELECT 14, 2, 17, N'4.4' UNION ALL
SELECT 15, 2, 1, N'1 TB' UNION ALL
SELECT 16, 2, 2, N'No' UNION ALL
SELECT 17, 2, 5, N'4 GB' UNION ALL
SELECT 18, 2, 8, N'iBall' UNION ALL
SELECT 19, 2, 9, N'Sapphire Blue' UNION ALL
SELECT 20, 2, 10, N'Windows 10' UNION ALL
SELECT 21, 2, 12, N'14 Inches' UNION ALL
SELECT 22, 2, 14, N'Intel' UNION ALL
SELECT 23, 2, 15, N'1 Year' UNION ALL
SELECT 24, 2, 16, N'Integrated Graphics' UNION ALL
SELECT 25, 3, 17, N'4.6' UNION ALL
SELECT 26, 3, 1, N'1 TB' UNION ALL
SELECT 27, 3, 2, N'No' UNION ALL
SELECT 28, 3, 6, N'4 GB' UNION ALL
SELECT 29, 3, 7, N'Lithium Ion 2 Cells' UNION ALL
SELECT 30, 3, 8, N'Dell' UNION ALL
SELECT 31, 3, 9, N'Black' UNION ALL
SELECT 32, 3, 10, N'Windows 10' UNION ALL
SELECT 33, 3, 12, N'15 Inches' UNION ALL
SELECT 34, 3, 14, N'AMD E Series Dual-Core E2-2000' UNION ALL
SELECT 35, 3, 15, N'1 Year' UNION ALL
SELECT 36, 3, 16, N'Intel Integrated Graphics' UNION ALL
SELECT 37, 4, 17, N'4.0' UNION ALL
SELECT 38, 4, 1, N'32 GB' UNION ALL
SELECT 39, 4, 2, N'No' UNION ALL
SELECT 40, 4, 5, N'2 GB' UNION ALL
SELECT 41, 4, 7, N'Lithium Ion 5 Cells' UNION ALL
SELECT 42, 4, 8, N'Micromax' UNION ALL
SELECT 43, 4, 9, N'Black' UNION ALL
SELECT 44, 4, 10, N'Windows 10' UNION ALL
SELECT 50, 5, 17, N'4.8' UNION ALL
SELECT 46, 4, 12, N'11.6 Inches' UNION ALL
SELECT 47, 4, 14, N'Intel-Atom' UNION ALL
SELECT 48, 4, 15, N'1 Year' UNION ALL
SELECT 49, 4, 16, N'Intel Integrated Graphics' UNION ALL
SELECT 51, 5, 1, N'1 TB' UNION ALL
SELECT 52, 5, 2, N'No' UNION ALL
SELECT 53, 5, 5, N'4 GB' UNION ALL
SELECT 54, 5, 7, N'Lithium Ion 2 Cells' UNION ALL
SELECT 55, 5, 8, N'Lenovo' UNION ALL
SELECT 56, 5, 9, N'Black' UNION ALL
SELECT 57, 5, 10, N'DOS' UNION ALL
SELECT 58, 5, 11, N'HD AntiGlare Screen' UNION ALL
SELECT 59, 5, 12, N'15.6 Inches' UNION ALL
SELECT 60, 5, 14, N'AMD A-Series Quad-Core A6' UNION ALL
SELECT 61, 5, 15, N'1 Year' UNION ALL
SELECT 62, 5, 16, N'No' UNION ALL
SELECT 63, 6, 17, N'4.4' UNION ALL
SELECT 64, 6, 1, N'1 TB'
COMMIT;
RAISERROR (N'[dbo].[tbl_product_attribute]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_product_attribute]([prod_attr_id], [product_id], [attribute_id], [attribute_value])
SELECT 65, 6, 2, N'No' UNION ALL
SELECT 66, 6, 6, N'4 GB' UNION ALL
SELECT 67, 6, 7, N'Lithium Ion 6 Cells' UNION ALL
SELECT 68, 6, 8, N'Dell' UNION ALL
SELECT 69, 6, 9, N'Black' UNION ALL
SELECT 70, 6, 10, N'Windows 10' UNION ALL
SELECT 71, 6, 11, N'FHD' UNION ALL
SELECT 72, 6, 12, N'15.6 Inches' UNION ALL
SELECT 73, 6, 14, N'Intel Core i3' UNION ALL
SELECT 74, 6, 15, N'1 Year' UNION ALL
SELECT 75, 6, 16, N'No' UNION ALL
SELECT 76, 7, 17, N'4.4' UNION ALL
SELECT 77, 7, 1, N'1 TB' UNION ALL
SELECT 78, 7, 2, N'No' UNION ALL
SELECT 79, 7, 6, N'4 GB' UNION ALL
SELECT 80, 7, 7, N'Lithium Ion 3 Cells' UNION ALL
SELECT 81, 7, 8, N'Acer' UNION ALL
SELECT 82, 7, 9, N'Steel Gray' UNION ALL
SELECT 83, 7, 10, N'DOS' UNION ALL
SELECT 84, 7, 11, N'HD LED Screen' UNION ALL
SELECT 85, 7, 12, N'15.6 Inches' UNION ALL
SELECT 86, 7, 14, N'Intel Core i5' UNION ALL
SELECT 87, 7, 15, N'1 Year' UNION ALL
SELECT 88, 7, 16, N'NVIDIA&#174; GeForce&#174; MX150 2GB RAM' UNION ALL
SELECT 89, 8, 17, N'4.6' UNION ALL
SELECT 90, 8, 1, N'1 TB' UNION ALL
SELECT 91, 8, 2, N'No' UNION ALL
SELECT 92, 8, 6, N'4 GB' UNION ALL
SELECT 93, 8, 7, N'Lithium Ion 2 Cells' UNION ALL
SELECT 94, 8, 8, N'Lenovo' UNION ALL
SELECT 95, 8, 9, N'Gray' UNION ALL
SELECT 96, 8, 10, N'Windows 10 Home' UNION ALL
SELECT 97, 8, 12, N'14 Inches' UNION ALL
SELECT 98, 8, 14, N'Intel Core i3' UNION ALL
SELECT 99, 8, 15, N'1 Year' UNION ALL
SELECT 100, 8, 16, N'Integrated Graphics' UNION ALL
SELECT 101, 9, 17, N'4.5' UNION ALL
SELECT 102, 9, 1, N'1 TB' UNION ALL
SELECT 103, 9, 2, N'No' UNION ALL
SELECT 104, 9, 6, N'4 GB' UNION ALL
SELECT 105, 9, 7, N'Lithium Ion 2 Cells' UNION ALL
SELECT 106, 9, 8, N'Asus' UNION ALL
SELECT 107, 9, 9, N'Silver' UNION ALL
SELECT 108, 9, 10, N'Windows 10' UNION ALL
SELECT 109, 9, 11, N'LED Screen' UNION ALL
SELECT 110, 9, 12, N'15.6 Inches' UNION ALL
SELECT 111, 9, 14, N'Intel Core 2 Quad' UNION ALL
SELECT 112, 9, 15, N'1 Year' UNION ALL
SELECT 113, 10, 17, N'4.7' UNION ALL
SELECT 114, 10, 1, N'1 TB'
COMMIT;
RAISERROR (N'[dbo].[tbl_product_attribute]: Insert Batch: 2.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_product_attribute]([prod_attr_id], [product_id], [attribute_id], [attribute_value])
SELECT 115, 10, 2, N'No' UNION ALL
SELECT 116, 10, 6, N'4 GB' UNION ALL
SELECT 117, 10, 7, N'Lithium Ion 2 Cells' UNION ALL
SELECT 118, 10, 8, N'Dell' UNION ALL
SELECT 119, 10, 9, N'Black' UNION ALL
SELECT 120, 10, 10, N'Ubuntu' UNION ALL
SELECT 121, 10, 12, N'15.6 Inches' UNION ALL
SELECT 122, 10, 14, N'AMD APU Dual Core A6' UNION ALL
SELECT 123, 10, 15, N'1 Year' UNION ALL
SELECT 124, 11, 17, N'4.6' UNION ALL
SELECT 125, 11, 1, N'1 TB' UNION ALL
SELECT 126, 11, 2, N'No' UNION ALL
SELECT 127, 11, 6, N'4 GB' UNION ALL
SELECT 128, 11, 7, N'Lithium Ion 4 Cells' UNION ALL
SELECT 129, 11, 8, N'Dell' UNION ALL
SELECT 130, 11, 9, N'Black' UNION ALL
SELECT 131, 11, 10, N'Windows 10' UNION ALL
SELECT 132, 11, 11, N'HD LED Screen' UNION ALL
SELECT 133, 11, 12, N'14 Inches' UNION ALL
SELECT 134, 11, 14, N'Intel Core i3' UNION ALL
SELECT 135, 11, 15, N'1 Year' UNION ALL
SELECT 136, 11, 16, N'Intel HD Graphics' UNION ALL
SELECT 137, 12, 17, N'3.8' UNION ALL
SELECT 138, 12, 1, N'1 TB' UNION ALL
SELECT 139, 12, 2, N'No' UNION ALL
SELECT 140, 12, 6, N'8 GB' UNION ALL
SELECT 141, 12, 7, N'Lithium Ion 4 Cells' UNION ALL
SELECT 142, 12, 8, N'Dell' UNION ALL
SELECT 143, 12, 9, N'White' UNION ALL
SELECT 144, 12, 10, N'Windows 10' UNION ALL
SELECT 145, 12, 12, N'15.6 Inches' UNION ALL
SELECT 146, 12, 14, N'Intel Core i5' UNION ALL
SELECT 147, 12, 15, N'1 Year' UNION ALL
SELECT 148, 12, 16, N'Intel 2 GB Graphics' UNION ALL
SELECT 149, 13, 17, N'4.7' UNION ALL
SELECT 150, 13, 1, N'1 TB' UNION ALL
SELECT 151, 13, 2, N'No' UNION ALL
SELECT 152, 13, 6, N'8 GB' UNION ALL
SELECT 153, 13, 7, N'Lithium Ion 2 Cells' UNION ALL
SELECT 154, 13, 8, N'Asus' UNION ALL
SELECT 155, 13, 9, N'Gold' UNION ALL
SELECT 156, 13, 10, N'Windows 10' UNION ALL
SELECT 157, 13, 12, N'15.6 Inches' UNION ALL
SELECT 158, 13, 14, N'Intel Core i7' UNION ALL
SELECT 159, 13, 15, N'1 Year' UNION ALL
SELECT 160, 13, 16, N'Nvidia MX150 Graphics' UNION ALL
SELECT 161, 14, 17, N'4.5' UNION ALL
SELECT 162, 14, 1, N'1 TB' UNION ALL
SELECT 163, 14, 2, N'No' UNION ALL
SELECT 164, 14, 6, N'4 GB'
COMMIT;
RAISERROR (N'[dbo].[tbl_product_attribute]: Insert Batch: 3.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_product_attribute]([prod_attr_id], [product_id], [attribute_id], [attribute_value])
SELECT 165, 14, 7, N'Lithium Ion 4 Cells' UNION ALL
SELECT 166, 14, 8, N'Hp' UNION ALL
SELECT 167, 14, 9, N'Natural Silver' UNION ALL
SELECT 168, 14, 10, N'Windows 10 Home' UNION ALL
SELECT 169, 14, 11, N'HD Screen' UNION ALL
SELECT 170, 14, 12, N'15.6 Inches' UNION ALL
SELECT 171, 14, 14, N'Intel Core i3' UNION ALL
SELECT 172, 14, 15, N'1 Year' UNION ALL
SELECT 173, 14, 16, N'Intel HD Graphics 620' UNION ALL
SELECT 1, 1, 17, N'4.5' UNION ALL
SELECT 2, 1, 1, N'1 TB' UNION ALL
SELECT 3, 1, 2, N'No' UNION ALL
SELECT 4, 1, 6, N'8 GB' UNION ALL
SELECT 5, 1, 7, N'Lithium Ion 4 Cells' UNION ALL
SELECT 6, 1, 8, N'Hp' UNION ALL
SELECT 7, 1, 9, N'Sparkling Black' UNION ALL
SELECT 8, 1, 10, N'Free DOS' UNION ALL
SELECT 9, 1, 11, N'FHD' UNION ALL
SELECT 10, 1, 12, N'15.6 Inches' UNION ALL
SELECT 11, 1, 14, N'Intel Core i5' UNION ALL
SELECT 12, 1, 15, N'1 Year' UNION ALL
SELECT 13, 1, 16, N'Intel UHD Graphics 620' UNION ALL
SELECT 174, 14, 13, N'Yes' UNION ALL
SELECT 175, 15, 17, N'4.8' UNION ALL
SELECT 176, 15, 1, N'1 TB' UNION ALL
SELECT 177, 15, 2, N'128 GB' UNION ALL
SELECT 178, 15, 6, N'16 GB' UNION ALL
SELECT 179, 15, 7, N'Lithium Ion 2 Cells' UNION ALL
SELECT 180, 15, 8, N'Asus' UNION ALL
SELECT 181, 15, 9, N'Gold Metal' UNION ALL
SELECT 182, 15, 10, N'Windows 10' UNION ALL
SELECT 183, 15, 11, N'Full HD LED Screen' UNION ALL
SELECT 184, 15, 12, N'15.6 Inches' UNION ALL
SELECT 185, 15, 14, N'Intel Core i7' UNION ALL
SELECT 186, 15, 15, N'2 Years' UNION ALL
SELECT 187, 15, 16, N'NVIDIA GeForce MX150 (N17S-G1)' UNION ALL
SELECT 188, 16, 17, N'4.4' UNION ALL
SELECT 189, 16, 1, N'1 TB' UNION ALL
SELECT 190, 16, 2, N'No' UNION ALL
SELECT 191, 16, 6, N'4 GB' UNION ALL
SELECT 192, 16, 7, N'Lithium Ion 6 Cells' UNION ALL
SELECT 193, 16, 8, N'Hp' UNION ALL
SELECT 194, 16, 9, N'Black' UNION ALL
SELECT 195, 16, 10, N'Windows 10 Home' UNION ALL
SELECT 196, 16, 12, N'15.6 Inches' UNION ALL
SELECT 197, 16, 14, N'Intel Core i5' UNION ALL
SELECT 198, 16, 15, N'1 Year' UNION ALL
SELECT 199, 16, 16, N'Intel UHD Graphics 620' UNION ALL
SELECT 200, 17, 17, N'4.5' UNION ALL
SELECT 201, 17, 1, N'256 GB'
COMMIT;
RAISERROR (N'[dbo].[tbl_product_attribute]: Insert Batch: 4.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_product_attribute]([prod_attr_id], [product_id], [attribute_id], [attribute_value])
SELECT 202, 17, 2, N'No' UNION ALL
SELECT 203, 17, 6, N'4 GB' UNION ALL
SELECT 204, 17, 7, N'Lithium Ion 2 Cells' UNION ALL
SELECT 205, 17, 8, N'Acer' UNION ALL
SELECT 206, 17, 9, N'Silver' UNION ALL
SELECT 207, 17, 10, N'Linux' UNION ALL
SELECT 208, 17, 12, N'14 Inches' UNION ALL
SELECT 209, 17, 14, N'Intel Core i3' UNION ALL
SELECT 210, 17, 15, N'1 Year' UNION ALL
SELECT 211, 17, 16, N'Intel HD Graphics 620' UNION ALL
SELECT 212, 18, 17, N'4.6' UNION ALL
SELECT 213, 18, 1, N'1 TB' UNION ALL
SELECT 214, 18, 2, N'No' UNION ALL
SELECT 215, 18, 6, N'8 GB' UNION ALL
SELECT 216, 18, 7, N'Lithium Ion 3 Cells' UNION ALL
SELECT 217, 18, 8, N'Hp' UNION ALL
SELECT 218, 18, 9, N'Natural Silver' UNION ALL
SELECT 219, 18, 10, N'Windows 10 Home' UNION ALL
SELECT 220, 18, 11, N'LED Screen' UNION ALL
SELECT 221, 18, 12, N'14 Inches' UNION ALL
SELECT 222, 18, 13, N'y' UNION ALL
SELECT 223, 18, 14, N'Intel Core i5' UNION ALL
SELECT 224, 18, 15, N'1 Year' UNION ALL
SELECT 225, 18, 16, N'Intel UHD Graphics 620' UNION ALL
SELECT 226, 19, 17, N'4.5' UNION ALL
SELECT 227, 19, 1, N'1 TB' UNION ALL
SELECT 228, 19, 2, N'No' UNION ALL
SELECT 229, 19, 5, N'8 GB' UNION ALL
SELECT 230, 19, 7, N'Lithium Ion 3 Cells' UNION ALL
SELECT 231, 19, 8, N'Dell' UNION ALL
SELECT 232, 19, 9, N'Sparkling Black' UNION ALL
SELECT 233, 19, 10, N'Windows 10' UNION ALL
SELECT 234, 19, 11, N'Full HD Touch Screen' UNION ALL
SELECT 235, 19, 12, N'13.3 Inches' UNION ALL
SELECT 236, 19, 13, N'Yes' UNION ALL
SELECT 237, 19, 14, N'Intel Core i5' UNION ALL
SELECT 238, 19, 15, N'1 Year' UNION ALL
SELECT 239, 19, 16, N'No' UNION ALL
SELECT 240, 20, 17, N'4.5' UNION ALL
SELECT 241, 20, 1, N'1 TB' UNION ALL
SELECT 242, 20, 2, N'No' UNION ALL
SELECT 243, 20, 6, N'8 GB' UNION ALL
SELECT 244, 20, 7, N'Lithium Ion 6 Cells' UNION ALL
SELECT 245, 20, 8, N'Hp' UNION ALL
SELECT 246, 20, 9, N'Black' UNION ALL
SELECT 247, 20, 10, N'DOS' UNION ALL
SELECT 248, 20, 11, N'FHD Screen' UNION ALL
SELECT 249, 20, 12, N'15.6 Inches' UNION ALL
SELECT 250, 20, 14, N'Intel Core i5' UNION ALL
SELECT 251, 20, 15, N'1 Year'
COMMIT;
RAISERROR (N'[dbo].[tbl_product_attribute]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_product_attribute]([prod_attr_id], [product_id], [attribute_id], [attribute_value])
SELECT 252, 20, 16, N'AMD Radeon™ 520 Graphics'
COMMIT;
RAISERROR (N'[dbo].[tbl_product_attribute]: Insert Batch: 6.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_user]([userid], [username], [passw], [email], [address], [mobile])
SELECT 3, N'me', N'me1234', N'qwertyui', N'qwertyuioplkjhgfdsazxcvbnm', 1234567 UNION ALL
SELECT 2, N'oreo', N'oreo1234', N'uweygdjedg', N'ekncekc3.kn3.rdkn3.edkn3', 9876540987 UNION ALL
SELECT 1, N'Tinkesh', N'tinkesh123', N'abcd@gmail.com', N'xyz', 1234567890
COMMIT;
RAISERROR (N'[dbo].[tbl_user]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

