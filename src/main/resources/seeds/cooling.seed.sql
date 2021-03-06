BEGIN
    SET IDENTITY_INSERT [dbo].[cooling] ON
    MERGE [dbo].[cooling] AS T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'ed3212a1-4f61-4404-941d-b277521d8f25', 1, NULL, N'AER RGB', 28, N'https://cdn.pcpartpicker.com/static/forever/images/product/b19d6a6fea838158bcca998fcae5e6b0.1600.jpg', 120, 1, 1500, N'AIR', 8),
                     (2, N'04f93841-baee-4362-9c75-549b10404f6f', 1, NULL, N'LL120 RGB LED', 30, N'https://cdn.pcpartpicker.com/static/forever/images/product/4e2045757086fab56d2420d84fcf9619.1600.jpg', 120, 1, 1500, N'AIR', 19),
                     (3, N'a1ba99b7-7baa-4b55-a3dd-5239aefa2e55', 1, NULL, N'LL140 RGB', 40, N'https://cdn.pcpartpicker.com/static/forever/images/product/af0e3ae9695b1702e6e1b5d4f6200db6.1600.jpg', 140, 1, 1300, N'AIR', 19),
                     (4, N'79f1a002-1712-46ff-8f77-8f35c4d7e5ef', 1, NULL, N'SickleFlow', 10, N'https://images-na.ssl-images-amazon.com/images/I/4187AIcuisL._SX466_.jpg', 120, 0, 2000, N'AIR', 6),
                     (5, N'ad765c1b-0b02-4226-832f-4f4b4b08c38f', 1, NULL, N'ML120 PRO RGB', 30, N'https://cdn.pcpartpicker.com/static/forever/images/product/637d55a951c6564584edaa513645859e.1600.jpg', 120, 1, 1600, N'AIR', 19),
                     (6, N'79bac514-61ee-401a-b4ef-5b136913621a', 1, NULL, N'ML120 PRO', 24, N'http://ecx.images-amazon.com/images/I/51cneTiL46L.jpg', 120, 0, 1600, N'AIR', 19),
                     (7, N'c1ef7095-221f-43d5-88c2-dd4b02b7f533', 1, NULL, N'iCUE SP120', 25, N'https://cdn.pcpartpicker.com/static/forever/images/product/a26d9e55f89e849dbb15cbcb5e327e72.1600.jpg', 120, 1, 1400, N'AIR', 19),
                     (8, N'baa481b8-5e48-49fd-acda-74331ecc0653', 1, NULL, N'NF-A14 PWM', 20, N'http://ecx.images-amazon.com/images/I/51uz3Oi-I8L.jpg', 140, 0, 1500, N'AIR', 20),
                     (9, N'730dd903-6d8f-4296-acdd-9bf81b521334', 1, NULL, N'NF-F12 PWM', 20, N'http://ecx.images-amazon.com/images/I/51u748R1j1L.jpg', 140, 0, 1500, N'AIR', 20),
                     (10, N'e3327123-4e24-4d42-be1a-64ebc9323924', 1, NULL, N'NF-P12 redux', 13, N'https://images-na.ssl-images-amazon.com/images/I/513cdf4%2B-SL.jpg', 140, 0, 1700, N'AIR', 20),
                     (11, N'd65456e1-0a4f-4a9f-829c-390f66d0ddea', 1, NULL, N'ML140 PRO', 25, N'http://ecx.images-amazon.com/images/I/514BYMyIhbL.jpg', 140, 0, 2000, N'AIR', 19),
                     (12, N'cfd2c327-534f-4c1e-9e2f-4f1c9e088df6', 1, NULL, N'ML120 PRO', 28, N'http://ecx.images-amazon.com/images/I/51Iktd3q0jL.jpg', 120, 0, 1700, N'AIR', 19),
                     (13, N'804efd54-0353-4a51-bc6d-b149803a65db', 1, NULL, N'ML120 PRO LED', 27, N'https://cdn.pcpartpicker.com/static/forever/images/product/ae67a9e317a6e28209c2f276f2609bd4.1600.jpg', 120, 1, 1500, N'AIR', 6),
                     (14, N'3eebc1c2-f91c-4fbc-889c-ba22f421612f', 1, NULL, N'SP120 RGB', 17, N'https://cdn.pcpartpicker.com/static/forever/images/product/204befc450a5aa5cc5d2f9b980481d9f.1600.jpg', 120, 1, 1400, N'AIR', 19),
                     (15, N'01ad04e7-c05d-4aff-bf6b-ad1d3de52d40', 1, NULL, N'NF-R8 redux', 9, N'http://ecx.images-amazon.com/images/I/51IUhpueJWL.jpg', 80, 0, 1800, N'AIR', 20),
                     (16, N'17ea6a7a-7cbb-49de-a7ce-36b0308c5ea9', 1, NULL, N'Pure Wings 2 PWM High-Speed', 22, N'https://m.media-amazon.com/images/I/41uKYoqTsNL.jpg', 140, 0, 1600, N'AIR', 20)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [size], [is_rgb], [speed], [cooling_type], [manufacturer_fk])
        ) AS S
    ON T.id=S.id
    WHEN MATCHED THEN UPDATE SET
                                 T.[uid] = S.[uid],
                                 T.[version] = S.[version],
                                 T.[deleted_on] = S.[deleted_on],
                                 T.[name] = S.[name],
                                 T.[price] = S.[price],
                                 T.[image_url] = S.[image_url],
                                 T.[size] = S.[size],
                                 T.[is_rgb] = S.[is_rgb],
                                 T.[speed] = S.[speed],
                                 T.[cooling_type] = S.[cooling_type],
                                 T.[manufacturer_fk] = S.[manufacturer_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [size], [is_rgb], [speed], [cooling_type], [manufacturer_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[image_url], S.[size], S.[is_rgb], S.[speed], S.[cooling_type], S.[manufacturer_fk]);

    SET IDENTITY_INSERT [dbo].[cooling] OFF
END
