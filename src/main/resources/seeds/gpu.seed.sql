BEGIN
    SET IDENTITY_INSERT [dbo].[gpu] ON
    MERGE [dbo].[gpu] T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'3298d9b7-f11d-4c38-bbf9-ab65954c4992', 1, NULL, N'RTX 2080 Black', 675, N'https://cdn.pcpartpicker.com/static/forever/images/product/8f9aabc24178caf70135e2e6dc2f5445.1600.jpg', 1515.0, 14000.0, N'1', 8.0, N'GDDR6', 5),
                     (2, N'8da138a8-fe2f-4d28-adf8-daf918ddb1e5', 1, NULL, N'RTX 2080 Ti Black', 1070, N'https://cdn.pcpartpicker.com/static/forever/images/product/8f9aabc24178caf70135e2e6dc2f5445.1600.jpg', 1350.0, 14000.0, N'1', 11.0, N'GDDR6', 5),
                     (3, N'c87492e1-d19f-4dc2-8bfa-bd8f280bdcc3', 1, NULL, N'RTX 2080 Ti ULTRA GAMING', 1400, N'https://cdn.pcpartpicker.com/static/forever/images/product/03524d3eecccc31527c359f9de79d9c7.1600.jpg', 1755.0, 14000.0, N'1', 11.0, N'GDDR6', 5),
                     (4, N'2568024a-78b9-4313-b5cb-1ab5b4c6f3d2', 1, NULL, N'RTX 2080 Ti ROG Strix Gaming OC', 1400, N'https://cdn.pcpartpicker.com/static/forever/images/product/0174f5005fe9f34decdf2d379bfe7221.1600.jpg', 1350.0, 14000.0, N'1', 11.0, N'GDDR6', 18),
                     (5, N'780f11fc-98ae-43b9-a905-db548b61086c', 1, NULL, N'RTX 2080 ROG Strix Gaming', 770, N'https://cdn.pcpartpicker.com/static/forever/images/product/d15b18b5b4b518256c4b8003672424c7.1600.jpg', 1515.0, 14000.0, N'1', 8.0, N'GDDR6', 18),
                     (6, N'26785546-074c-4e99-bf62-cedf45dfd440', 1, NULL, N'RTX 2060 6 GB STRIX GAMING OC', 400, N'https://images-na.ssl-images-amazon.com/images/I/41HBsLEE01L.jpg', 1365.0, 14000.0, N'1', 6.0, N'GDDR6', 18),
                     (7, N'31f025d2-1783-4109-8704-be3ddce61fea', 1, NULL, N'GeForce RTX 2060 VENTUS OC', 350, N'https://cdn.pcpartpicker.com/static/forever/images/product/e623089ba2b3010c09c7015f9538a311.1600.jpg', 1300.0, 14000.0, N'1', 6.0, N'GDDR6', 6),
                     (8, N'97650829-b19c-48ff-a0d9-fd46e83d3ece', 1, NULL, N'GeForce RTX 2070 8 GB STRIX GAMING OC', 420, N'https://images-na.ssl-images-amazon.com/images/I/51%2B5qM9Ia3L.jpg', 1410.0, 14000.0, N'1', 8.0, N'GDDR6', 18),
                     (9, N'e8bfef5c-e770-4266-a4e0-1dcc3edf77e3', 1, NULL, N'GeForce RTX 2070 SUPER 8 GB GAMING X TRIO', 580, N'https://cdn.pcpartpicker.com/static/forever/images/product/ca23ff3065e60b6a75ef9443e25b2a31.1600.jpg', 1450.0, 14000.0, N'1', 8.0, N'GDDR6', 6),
                     (10, N'ea90551c-b167-417d-abe0-a5d1e5e5faf7', 1, NULL, N'GeForce RTX 2070 SUPER 8 GB XC GAMING', 540, N'https://images-na.ssl-images-amazon.com/images/I/41lKk8cJ-JL.jpg', 1600.0, 14000.0, N'1', 8.0, N'GDDR6', 5),
                     (11, N'daca39e1-a7e6-4137-9c55-e597b67192c1', 1, NULL, N'GeForce GTX 1080 Ti 11 GB GAMING X', 650, N'https://cdn.pcpartpicker.com/static/forever/images/product/188bc2e653c9415cd65739ccbb223943.1600.jpg', 1400.0, 14000.0, N'1', 11.0, N'GDDR5', 6),
                     (12, N'838f0c2a-6351-4018-8a95-d94759433d75', 1, NULL, N'GeForce GTX 1080 Ti 11 GB STRIX GAMING', 700, N'https://images-na.ssl-images-amazon.com/images/I/81a2aBCgDML._SX466_.jpg', 1450.0, 14000.0, N'1', 11.0, N'GDDR5', 18),
                     (13, N'15c04fc2-52e0-4e5a-9d36-61591394c435', 1, NULL, N'GeForce GTX 1070 Ti 8 GB SC GAMING ACX 3.0 Black Edition', 550, N'https://images-na.ssl-images-amazon.com/images/I/51PLpT-02fL.jpg', 1400.0, 14000.0, N'1', 8.0, N'GDDR5', 5),
                     (14, N'e359303b-6be7-486c-9e91-efcc0b1e864c', 1, NULL, N'GeForce GTX 1070 8 GB G1', 500, N'http://ecx.images-amazon.com/images/I/41lXcLke4GL.jpg', 1380.0, 14000.0, N'1', 8.0, N'GDDR6', 11),
                     (15, N'ebeefae3-28ee-435e-85cc-d199ab1a97bb', 1, NULL, N'Radeon RX 580 8 GB ARMOR OC', 200, N'https://cdn.pcpartpicker.com/static/forever/images/product/d53db7190559b6287a4ff549f3bf5904.1600.jpg', 1300.0, 8000.0, N'1', 8.0, N'GDDR5', 6),
                     (16, N'dacf0b6e-3913-4b74-b4e3-3b8f37416020', 1, NULL, N'Radeon RX 580 8 GB ROG STRIX', 350, N'https://images-na.ssl-images-amazon.com/images/I/91q5KBUBiaL._SX425_.jpg', 1400.0, 8000.0, N'1', 8.0, N'GDDR5', 18),
                     (17, N'cf291f16-785f-48af-b02c-cea80bb416cd', 1, NULL, N'Radeon RX 580 8 GB Gaming 8G', 350, N'https://images-na.ssl-images-amazon.com/images/I/410U1dG4GtL.jpg', 1380.0, 8000.0, N'1', 8.0, N'GDDR5', 11),
                     (18, N'aaf7bfa3-423c-43a6-84a3-7571c927e6f9', 1, NULL, N'Radeon RX 5700 XT 8 GB GAMING OC', 420, N'https://cdn.pcpartpicker.com/static/forever/images/product/1b6084a197c46a295eb03b6ed062eda2.1600.jpg', 1400.0, 14000.0, N'1', 8.0, N'GDDR6', 11),
                     (19, N'74af02eb-d61a-4604-a679-e485bfc0e758', 1, NULL, N'Radeon RX 5700 8 GB MECH OC', 360, N'https://cdn.pcpartpicker.com/static/forever/images/product/f35fedb0450427dec520c5efb19d9c46.1600.jpg', 1380.0, 14000.0, N'1', 8.0, N'GDDR6', 6),
                     (20, N'36e37a36-1499-4fb8-a1f3-2c378b8298d8', 1, NULL, N'GeForce GTX 1050 Ti 4 GB', 150, N'https://cdn.pcpartpicker.com/static/forever/images/product/05cdbb665a59f5f73dcaf1a414c8ad04.1600.jpg', 1350.0, 8000.0, N'1', 4.0, N'GDDR5', 6),
                     (21, N'b48e092e-d7bd-45f0-be9f-5470cd1167ed', 1, NULL, N'GeForce GTX 1050 Ti 4 GB GAMING X 4G', 170, N'https://cdn.pcpartpicker.com/static/forever/images/product/2fab0ac0a13fef6a74ca8171b62e28dc.1600.jpg', 1380.0, 8000.0, N'1', 4.0, N'GDDR5', 6),
                     (22, N'f6dcff58-0595-41b8-844d-fd0d3774c996', 1, NULL, N'GeForce GTX 1050 2 GB', 100, N'https://cdn.pcpartpicker.com/static/forever/images/product/d622ea150f25f44d91631a29c59f42a8.1600.jpg', 1300.0, 8000.0, N'1', 2.0, N'GDDR5', 6),
                     (23, N'8d66fa59-1e58-4846-89b7-4b1333d196e6', 1, NULL, N'GeForce RTX 2070 GAMING OC', 499, N'https://cdn.pcpartpicker.com/static/forever/images/product/00b450d148890048c09aba486c9e749f.1600.jpg', 1620.0, 6800, N'1', 8.0, N'GDDR6', 11)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [frequency], [memory_clock], [timing], [ram_size], [memory_type], [manufacturer_fk])
        ) AS S
    ON T.id=S.id
    WHEN MATCHED THEN UPDATE SET
                                 T.[uid] = S.[uid],
                                 T.[version] = S.[version],
                                 T.[deleted_on] = S.[deleted_on],
                                 T.[name] = S.[name],
                                 T.[price] = S.[price],
                                 T.[image_url] = S.[image_url],
                                 T.[frequency] = S.[frequency],
                                 T.[memory_clock] = S.[memory_clock],
                                 T.[timing] = S.[timing],
                                 T.[ram_size] = S.[ram_size],
                                 T.[memory_type] = S.[memory_type],
                                 T.[manufacturer_fk] = S.[manufacturer_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [frequency], [memory_clock], [timing], [ram_size], [memory_type], [manufacturer_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[image_url], S.[frequency], S.[memory_clock], S.[timing], S.[ram_size], S.[memory_type], S.[manufacturer_fk]);

    SET IDENTITY_INSERT [dbo].[gpu] OFF
END
