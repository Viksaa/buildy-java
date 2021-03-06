BEGIN
    SET IDENTITY_INSERT [dbo].[motherboard] ON
    MERGE [dbo].[motherboard] T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'c3116a8d-6343-46c6-9df8-2185f92f2996', 1, NULL, N'B450 TOMAHAWK', 115, N'https://cdn.pcpartpicker.com/static/forever/images/product/76a05556b1231db294600c672f605747.1600.jpg', 4, 64, N'ATX', 5, 5, 4),
                     (2, N'1527db2e-0c8f-4e87-8384-ffca4a1ff585', 1, NULL, N'ROG STRIX B450-F GAMING', 120, N'https://cdn.pcpartpicker.com/static/forever/images/product/ae3eca9a74b37b6a2dafadcc948c208d.1600.jpg', 4, 64, N'ATX', 5, 5, 18),
                     (3, N'4b95c03a-5500-432f-b6b3-50bf3627679c', 1, NULL, N'B450M DS3H', 73, N'https://cdn.pcpartpicker.com/static/forever/images/product/75eae1d6254dc2bd453a2cf64b601ede.1600.jpg', 4, 64, N'MICRO_ATX', 5, 5, 11),
                     (4, N'8d4946bf-2aa4-47a0-8ac2-7abd36e47c04', 1, NULL, N'ROG STRIX Z390-E', 115, N'https://images-eu.ssl-images-amazon.com/images/I/51mDZNleLaL.jpg', 4, 64, N'ATX', 2, 8, 18),
                     (5, N'dce4529b-0332-4fad-8c22-1d1b4a9585dc', 1, NULL, N'Z390-A PRO', 130, N'https://cdn.pcpartpicker.com/static/forever/images/product/fcc113830e84371c4f0f83c5ed5f4ae4.1600.jpg', 4, 64, N'ATX', 2, 8, 4),
                     (6, N'b7ab8da6-4c3a-4f8d-8f36-f49418a031c0', 1, NULL, N'B450 Gaming Pro', 130, N'https://cdn.pcpartpicker.com/static/forever/images/product/a6ae20785466eef236198522ad3a4fa5.1600.jpg', 4, 64, N'ATX', 5, 5, 4),
                     (7, N'35e0d0dd-087c-44a2-9352-cfa9f8aa9285', 1, NULL, N'B450M MORTAR TITANIUM', 70, N'https://cdn.pcpartpicker.com/static/forever/images/product/00d01d92abc6b855882834ca3a480d98.1600.jpg', 4, 64, N'MICRO_ATX', 5, 5, 4),
                     (8, N'9f253ce5-e127-48be-ada2-1b01a53d913c', 1, NULL, N'GA-AB350-GAMING 3', 70, N'https://images-eu.ssl-images-amazon.com/images/I/51IFLBU8jpL.jpg', 4, 128, N'ATX', 5, 6, 4),
                     (9, N'c95f444e-098a-42c0-b389-ddb68c4e9a80', 1, NULL, N'X570 AORUS XTREME', 370, N'https://cdn.pcpartpicker.com/static/forever/images/product/7d5e0519ee3f05ab4720ae4d15ea14c1.1600.jpg', 4, 64, N'ATX', 5, 1, 11),
                     (10, N'c54bc01e-7604-474b-aab7-b0bd7c68e1a8', 1, NULL, N'ROG STRIX X470-I GAMING', 105, N'https://cdn.pcpartpicker.com/static/forever/images/product/2d6aec01983abcfd48c2d450cc27ce1b.1600.jpg', 2, 32, N'ATX', 5, 2, 18),
                     (11, N'6870c725-782a-4df2-a44f-c4be257b9022', 1, NULL, N'PRIME B450-PLUS', 200, N'https://cdn.pcpartpicker.com/static/forever/images/product/a6ae20785466eef236198522ad3a4fa5.1600.jpg', 4, 64, N'ATX', 5, 5, 18),
                     (12, N'e49e0cb0-65f0-4017-8b2e-34ad9a137050', 1, NULL, N'MEG X570 ACE', 80, N'https://cdn.pcpartpicker.com/static/forever/images/product/ef675852c52dc65806e9e2edf192436c.1600.jpg', 4, 128, N'ATX', 5, 1, 4),
                     (13, N'4ec0e5ee-67d5-4a5a-a30f-9be14b9130cf', 1, NULL, N'ROG STRIX B360-I GAMING', 110, N'https://images-na.ssl-images-amazon.com/images/I/51k0l-O2gqL.jpg', 2, 32, N'MINI_ATX', 2, 10, 18),
                     (14, N'a6ba70a5-68df-4b49-9c1c-dfa25727d3e1', 1, NULL, N'MPG Z390 GAMING EDGE AC', 180, N'https://images-eu.ssl-images-amazon.com/images/I/51DZf-KOjZL.jpg', 4, 128, N'MINI_ATX', 2, 8, 4),
                     (15, N'be33eaed-7272-4be8-8d4d-90091468b211', 1, NULL, N'PG Z390 GAMING PRO CARBON', 185, N'https://cdn.pcpartpicker.com/static/forever/images/product/91d7402ac6c9d16afc48f31c5165cf3d.1600.jpg', 4, 128, N'ATX', 2, 8, 4),
                     (16, N'96c2ff3c-d909-45a8-91a5-46b8041ae4ea', 1, NULL, N'Z390 AORUS ULTRA ATX', 130, N'https://cdn.pcpartpicker.com/static/forever/images/product/a6ae20785466eef236198522ad3a4fa5.1600.jpg', 4, 64, N'ATX', 2, 8, 4),
                     (17, N'ff3074e0-58a8-47e9-a51d-25639927fa95', 1, NULL, N'ROG MAXIMUS XI FORMULA', 425, N'https://images-na.ssl-images-amazon.com/images/I/51a%2BH%2BWRXPL.jpg', 4, 128, N'ATX', 2, 8, 18),
                     (18, N'79b8319f-332c-4cf7-b665-0ed3daa1041a', 1, NULL, N'MPG Z390 GAMING PRO CARBON AC', 200, N'https://cdn.pcpartpicker.com/static/forever/images/product/cd20ba2d9fea29fc03b304c320510e7d.1600.jpg', 4, 128, N'ATX', 2, 8, 4),
                     (19, N'276edc25-80e8-4e3b-8605-229b690f1d1e', 1, NULL, N'B360 HD3', 95, N'https://cdn.pcpartpicker.com/static/forever/images/product/11ea676aa40218876173f6fa1020ba00.1600.jpg', 4, 64, N'ATX', 2, 10, 11),
                     (20, N'67facc81-a6e1-4930-8736-b598b89df0ae', 1, NULL, N'PRIME Z270-P', 145, N'https://images-na.ssl-images-amazon.com/images/I/91mMGp3pTPL._SX466_.jpg', 4, 64, N'ATX', 2, 11, 18),
                     (21, N'407ff667-4bf4-4f60-9ddc-158db3aaf1b0', 1, NULL, N'B450I GAMING PLUS AC', 130, N'https://cdn.pcpartpicker.com/static/forever/images/product/813923da0e8510b2adaec8e131b8c7fd.1600.jpg', 2, 32, N'MINI_ATX', 5, 5, 4),
                     (22, N'f67afb09-92b7-4e5a-94d5-20e0543ffc7a', 1, NULL, N'PRIME X570-PRO', 240, N'https://cdn.pcpartpicker.com/static/forever/images/product/b06a90d7ec5a485121a21751cdc3d9b9.1600.jpg', 4, 128, N'ATX', 5, 1, 18),
                     (23, N'671f7b77-1df7-40bf-8a8e-e19373a68bcd', 1, NULL, N'ROG Strix X570-E Gaming', 320, N'https://cdn.pcpartpicker.com/static/forever/images/product/8edda8b2608b4fe4e5c3777f9e6df4fd.1600.jpg', 4, 128, N'ATX', 5, 1, 18),
                     (24, N'ea8523cc-41a2-4720-a737-04b555ae2177', 1, NULL, N'TUF GAMING X570-PLUS', 190, N'https://cdn.pcpartpicker.com/static/forever/images/product/c96321a1e039a1f7fd1bc917c5ae72b7.1600.jpg', 4, 64, N'ATX', 5, 1, 18),
                     (25, N'6eeaab9b-be1f-468d-855b-e2b850c6ab23', 1, NULL, N'MPG Z390 GAMING PLUS', 130, N'https://cdn.pcpartpicker.com/static/forever/images/product/a6ae20785466eef236198522ad3a4fa5.1600.jpg', 4, 64, N'ATX', 2, 8, 4),
                     (26, N'1e68a032-cf53-4dce-8b77-768f511f4c49', 1, NULL, N'X470 AORUS ULTRA GAMING', 165, N'https://images-na.ssl-images-amazon.com/images/I/61fgOAI2PuL.jpg', 4, 64, N'ATX', 5, 2, 11)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [number_of_dimm_slots], [memory_supported], [motherboard_type], [socket_fk], [chipset_fk], [manufacturer_fk])
        ) AS S
    ON T.id=S.id
    WHEN MATCHED THEN UPDATE SET
                                 T.[uid] = S.[uid],
                                 T.[version] = S.[version],
                                 T.[deleted_on] = S.[deleted_on],
                                 T.[name] = S.[name],
                                 T.[price] = S.[price],
                                 T.[image_url] = S.[image_url],
                                 T.[number_of_dimm_slots] = S.[number_of_dimm_slots],
                                 T.[memory_supported] = S.[memory_supported],
                                 T.[motherboard_type] = S.[motherboard_type],
                                 T.[socket_fk] = S.[socket_fk],
                                 T.[chipset_fk] = S.[chipset_fk],
                                 T.[manufacturer_fk] = S.[manufacturer_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [number_of_dimm_slots], [memory_supported], [motherboard_type], [socket_fk], [chipset_fk], [manufacturer_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[image_url], S.[number_of_dimm_slots], S.[memory_supported], S.[motherboard_type], S.[socket_fk], S.[chipset_fk], S.[manufacturer_fk]);

    SET IDENTITY_INSERT [dbo].[motherboard] OFF
END
