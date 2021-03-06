BEGIN
    SET IDENTITY_INSERT [dbo].[psu] ON
    MERGE [dbo].[psu] T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'9d836fba-5cba-427d-93ae-9d706508d441', 1, NULL, N'CXM', 70, N'http://ecx.images-amazon.com/images/I/51RxdsALapL.jpg', 550, N'SEMI_MODULAR', 2, 18),
                     (2, N'e4b995da-ca59-46da-8dd9-387dc2e316e3', 1, NULL, N'SuperNOVA G3', 127, N'https://cdn.pcpartpicker.com/static/forever/images/product/2a2172d1f17661103de901f43d831187.1600.jpg', 750, N'MODULAR', 4, 5),
                     (3, N'1e956d2a-5301-46e3-b661-3841e410f1e8', 1, NULL, N'RMx (2018)', 85, N'https://images-na.ssl-images-amazon.com/images/I/51icxwzI9VL.jpg', 650, N'MODULAR', 4, 18),
                     (4, N'e31af92f-3d5e-4248-afd3-d6c31c5e6043', 1, NULL, N'MASTERWATT MAKER MIJ', 200, N'https://cdn.pcpartpicker.com/static/forever/images/product/244afeb4bd3917774842c887571a9803.1600.jpg', 1200, N'MODULAR', 4, 6),
                     (5, N'ae095713-ad39-4d87-904e-50f38074c1e0', 1, NULL, N'Master V', 180, N'https://cdn.pcpartpicker.com/static/forever/images/product/c28253b1b63474d96ab2f28ff5cdcdce.1600.jpg', 1000, N'MODULAR', 6, 6),
                     (6, N'bbc57f4e-eb67-4927-b2f0-d7b993e4f77b', 1, NULL, N'MasterWatt', 90, N'https://cdn.pcpartpicker.com/static/forever/images/product/d6645bc4330f5a00dabba3d69728af42.1600.jpg', 750, N'SEMI_MODULAR', 5, 6),
                     (7, N'b07521af-a24f-40d7-b4f4-b3bc0ff08176', 1, NULL, N'RMx (2018) 750 W', 120, N'https://images-na.ssl-images-amazon.com/images/I/513mVXq9TiL.jpg', 750, N'MODULAR', 2, 19),
                     (8, N'16ebaecf-90c5-434b-a721-09f27b934ac7', 1, NULL, N'RMx (2018) 850 W', 125, N'https://images-na.ssl-images-amazon.com/images/I/51lUqysCuDL.jpg', 850, N'MODULAR', 2, 19),
                     (9, N'2de20771-7521-45c9-a02b-9d064042ade0', 1, NULL, N'BQ', 50, N'https://images-na.ssl-images-amazon.com/images/I/512voawCsuL.jpg', 600, N'NON_MODULAR', 2, 5),
                     (10, N'87295de7-5b1a-4657-9ee9-61d957995189', 1, NULL, N'CXM (2015) 450 W', 45, N'http://ecx.images-amazon.com/images/I/51ZqerxDFcL.jpg', 450, N'NON_MODULAR', 2, 19),
                     (11, N'cb04d041-57bb-4933-bdc6-3c66f19bef52', 1, NULL, N'1600 W 80+ Titanium Certified', 450, N'https://cdn.pcpartpicker.com/static/forever/images/product/1d57cf53a1289e4dfff1aed9b1cc272a.1600.jpg', 1600, N'MODULAR', 6, 19),
                     (12, N'900f2b9f-478a-4296-a8a9-ab4d447e208b', 1, NULL, N'500 W 80+', 40, N'http://ecx.images-amazon.com/images/I/51PiQrWaNjL.jpg', 500, N'NON_MODULAR', 6, 5),
                     (13, N'f1ea533a-c2fa-4706-bf69-4bfc50aba653', 1, NULL, N'SuperNOVA G1+ 650 W', 100, N'https://cdn.pcpartpicker.com/static/forever/images/product/cef75cc13e5787d7c29760e9087905f4.1600.jpg', 650, N'MODULAR', 4, 5),
                     (14, N'f24ce4be-5a95-4d9f-9c1e-96c3776fce8d', 1, NULL, N'RM (2019) 750 W', 120, N'https://cdn.pcpartpicker.com/static/forever/images/product/02951377c9eed1e21fc3d8ba6092717e.1600.jpg', 750, N'MODULAR', 4, 19),
                     (15, N'22528893-c805-4dc4-ad2c-86ea20761424', 1, NULL, N'SF 600 W', 120, N'https://images-na.ssl-images-amazon.com/images/I/41qUzlhfWKL.jpg', 600, N'MODULAR', 5, 19),
                     (16, N'a22e366f-fe96-47b3-9a61-96f6316381e4', 1, NULL, N'1200 W 80+', 300, N'https://cdn.pcpartpicker.com/static/forever/images/product/5b4d3a0c8ba785ed560565371fb5b0a6.1600.jpg', 1200, N'MODULAR', 5, 18),
                     (17, N'977cd072-17f0-441c-a8b5-7ff027ad18ed', 1, NULL, N'BQ', 60, N'http://ecx.images-amazon.com/images/I/51J5s4nQnWL.jpg', 750, N'NON_MODULAR', 2, 6),
                     (18, N'd86d61e1-bd8a-4c22-a8ca-8dc8fb2eb1d2', 1, NULL, N'CXM 750 W', 90, N'https://cdn.pcpartpicker.com/static/forever/images/product/23a8f923c23d6de30026d889136bf175.1600.jpg', 750, N'SEMI_MODULAR', 2, 19),
                     (19, N'a1f00d87-ebbc-450b-8624-264b4ac0dec4', 1, NULL, N'VS', 35, N'https://images-na.ssl-images-amazon.com/images/I/51pKHarWxGL.jpg', 450, N'NON_MODULAR', 1, 19),
                     (20, N'0c64445b-c682-4ca6-953b-ff0d19320d5f', 1, NULL, N'RMx White (2018)', 130, N'https://cdn.pcpartpicker.com/static/forever/images/product/78afeb3cab692533f7fad2eba2975750.1600.jpg', 750, N'MODULAR', 4, 19),
                     (21, N'ea3bc280-faaa-430d-9c8c-70b050c5826d', 1, NULL, N'V 750 80+ GOLD', 150, N'https://cdn.pcpartpicker.com/static/forever/images/product/aa78454363b18d03d4bc6ec320f4c729.256p.jpg', 750, N'MODULAR', 4, 6)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [capacity], [modularity_type], [psu_efficiency_fk], [manufacturer_fk])
        ) AS S
    ON T.id=S.id
    WHEN MATCHED THEN UPDATE SET
                                 T.[uid] = S.[uid],
                                 T.[version] = S.[version],
                                 T.[deleted_on] = S.[deleted_on],
                                 T.[name] = S.[name],
                                 T.[price] = S.[price],
                                 T.[image_url] = S.[image_url],
                                 T.[capacity] = S.[capacity],
                                 T.[modularity_type] = S.[modularity_type],
                                 T.[psu_efficiency_fk] = S.[psu_efficiency_fk],
                                 T.[manufacturer_fk] = S.[manufacturer_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [capacity], [modularity_type], [psu_efficiency_fk], [manufacturer_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[image_url], S.[capacity], S.[modularity_type], S.[psu_efficiency_fk], S.[manufacturer_fk]);

    SET IDENTITY_INSERT [dbo].[psu] OFF
END
