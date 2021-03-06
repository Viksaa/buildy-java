BEGIN
    SET IDENTITY_INSERT [dbo].[storage] ON
    MERGE [dbo].[storage] T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'ad2dacb5-c2ca-4360-ba9a-66a7acb36e69', 1, NULL, N'660p Series', 185, N'https://images-fe.ssl-images-amazon.com/images/I/41-UBTlEZwL.jpg', 2048, 800, 700, N'M2', 3),
                     (2, N'c4256203-55fe-4969-b812-fea46c97adb1', 1, NULL, N'Caviar Blue', 43, N'http://ecx.images-amazon.com/images/I/51fbLQLVJFL.jpg', 1000, 150, 120, N'HDD', 14),
                     (3, N'ebb83873-7636-42f7-9460-5aba83fa2776', 1, NULL, N'860 Evo', 75, N'https://images-na.ssl-images-amazon.com/images/I/41JX1N9gi1L.jpg', 500, 500, 750, N'SSD', 9),
                     (4, N'045b02aa-75f1-419e-94dc-62bc75f82c72', 1, NULL, N'970 Evo', 90, N'https://images-eu.ssl-images-amazon.com/images/I/41x8zIrgC3L.jpg', 500, 900, 300, N'M2', 9),
                     (5, N'afe86e3c-62ec-4456-9163-0c241e125f2d', 1, NULL, N'A400', 32, N'https://cdn.pcpartpicker.com/static/forever/images/product/97e2bd828644767c8a80b71f8cb14743.1600.jpg', 240, 400, 750, N'SSD', 10),
                     (6, N'05620a09-840a-4b17-b680-3f59a9e2677c', 1, NULL, N'970 Evo', 170, N'https://images-eu.ssl-images-amazon.com/images/I/41x8zIrgC3L.jpg', 1024, 900, 400, N'M2', 9),
                     (7, N'614c8418-f89b-4e18-a05f-5e41566d93c5', 1, NULL, N'A400', 31, N'https://images-na.ssl-images-amazon.com/images/I/41UKoJx2tZL.jpg', 250, 500, 250, N'SSD', 9),
                     (8, N'c7ad40d0-eed6-4762-aac4-d4265472a841', 1, NULL, N'Blue', 65, N'https://cdn.pcpartpicker.com/static/forever/images/product/5d75e5e4274a02ca8924d7c4d2a575b2.1600.jpg', 500, 300, 350, N'M2', 14),
                     (9, N'd2d3f3c0-c764-49ee-b956-155ca0a45fee', 1, NULL, N'660p Series', 190, N'https://cdn.pcpartpicker.com/static/forever/images/product/72ac6b04347d22c2592029d4a49bc5ed.1600.jpg', 2048, 500, 350, N'M2', 3),
                     (10, N'44e7cd4a-3246-4799-afab-063d62b2bcb7', 1, NULL, N'660p Series', 32, N'https://cdn.pcpartpicker.com/static/forever/images/product/72ac6b04347d22c2592029d4a49bc5ed.1600.jpg', 512, 500, 450, N'M2', 3),
                     (11, N'363764d3-a914-489c-a89e-9d7ce1dc9ef0', 1, NULL, N'970 Evo Plus', 110, N'https://images-eu.ssl-images-amazon.com/images/I/41x8zIrgC3L.jpg', 500, 550, 450, N'M2', 9),
                     (12, N'6d9091a3-56b6-4836-b558-2b975762670a', 1, NULL, N'970 Evo Plus', 62, N'https://images-eu.ssl-images-amazon.com/images/I/41x8zIrgC3L.jpg', 250, 550, 400, N'M2', 9),
                     (13, N'3ccee5aa-d2e9-4ab4-aec2-c58461cdd8fb', 1, NULL, N'A400', 52, N'https://images-na.ssl-images-amazon.com/images/I/41UKoJx2tZL.jpg', 480, 500, 450, N'SSD', 9),
                     (14, N'c86aecb6-8efa-4baf-98b4-896caa321705', 1, NULL, N'970 Evo Plus', 215, N'https://images-eu.ssl-images-amazon.com/images/I/41x8zIrgC3L.jpg', 1024, 550, 450, N'M2', 9),
                     (15, N'8fd2ca35-f58a-4feb-be54-7dc9574da1c1', 1, NULL, N'970 Evo Plus', 450, N'https://images-eu.ssl-images-amazon.com/images/I/41x8zIrgC3L.jpg', 2048, 550, 450, N'M2', 9),
                     (16, N'bf760fa2-f182-4d44-bf36-d813482f3aba', 1, NULL, N'860 Evo', 54, N'https://images-na.ssl-images-amazon.com/images/I/41JX1N9gi1L.jpg', 250, 500, 420, N'SSD', 9),
                     (17, N'17da482f-cb6e-46d5-9d08-df21c65cdbff', 1, NULL, N'860 Evo', 900, N'https://images-na.ssl-images-amazon.com/images/I/41JX1N9gi1L.jpg', 4000, 500, 420, N'SSD', 9),
                     (18, N'cf7468b5-88ab-45d3-bce0-04094d18d784', 1, NULL, N'860 Evo', 280, N'https://images-na.ssl-images-amazon.com/images/I/41JX1N9gi1L.jpg', 2048, 500, 420, N'SSD', 9),
                     (19, N'81a3ae35-62c0-40be-9be0-0f93d9fc2756', 1, NULL, N'Blue', 110, N'https://cdn.pcpartpicker.com/static/forever/images/product/5d75e5e4274a02ca8924d7c4d2a575b2.1600.jpg', 1024, 300, 250, N'M2', 14),
                     (20, N'fb12d873-00f2-4545-8847-28d79d0096a7', 1, NULL, N'970 Evo Plus', 400, N'https://images-eu.ssl-images-amazon.com/images/I/41x8zIrgC3L.jpg', 2048, 550, 450, N'M2', 9)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [capacity], [reading_speed], [writing_speed], [storage_type], [manufacturer_fk])
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
                                 T.[reading_speed] = S.[reading_speed],
                                 T.[writing_speed] = S.[writing_speed],
                                 T.[storage_type] = S.[storage_type],
                                 T.[manufacturer_fk] = S.[manufacturer_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [capacity], [reading_speed], [writing_speed], [storage_type], [manufacturer_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[image_url], S.[capacity], S.[reading_speed], S.[writing_speed], S.[storage_type], S.[manufacturer_fk]);

    SET IDENTITY_INSERT [dbo].[storage] OFF
END
