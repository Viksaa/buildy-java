BEGIN
    SET IDENTITY_INSERT [dbo].[ram] ON
    MERGE [dbo].[ram] T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'757b72ad-2c16-40f3-ab5a-2fca555ee7ba', 1, NULL, N'Vengeance LPX', 38, N'https://cdn.pcpartpicker.com/static/forever/images/product/ef1c9d46308283f227a0ba51e4179ff1.1600.jpg', 2400, 8, NULL, N'DDR4', 19),
                     (2, N'ed020b40-62ac-47b6-a953-2de6401fbdb4', 1, NULL, N'Vengeance LPX', 73, N'https://cdn.pcpartpicker.com/static/forever/images/product/897d32aa11f4462641daa6c62d1322f5.1600.jpg', 3000, 16, N'16-20-20-38', N'DDR4', 19),
                     (3, N'8640828d-c74e-453a-bf70-c2723b36b41d', 1, NULL, N'Ripjaws V Series', 66, N'http://ecx.images-amazon.com/images/I/41XcDGwMsBL.jpg', 2400, 16, NULL, N'DDR4', 12),
                     (4, N'1a816054-1262-4b36-b7fd-dc5c262a602e', 1, NULL, N'Ripjaws V', 78, N'https://cdn.pcpartpicker.com/static/forever/images/product/72816e43251cd35c4b3f598eb8fc16e0.1600.jpg', 3600, 16, N'19-20-20-40', N'DDR4', 12),
                     (5, N'234931b6-21da-4da6-bda8-7f1be94be29c', 1, NULL, N'HyperX Predator', 43, N'https://cdn.pcpartpicker.com/static/forever/images/product/f25ee4f0e1776a3d15c2286d35feeb8c.1600.jpg', 2666, 8, NULL, N'DDR4', 10),
                     (6, N'd38ae837-f752-41d4-ae6e-6cfaa67a8594', 1, NULL, N'HyperX Fury', 40, N'https://cdn.pcpartpicker.com/static/forever/images/product/14c2a7f4a3a06e1d0e81f25fb7c2a42a.1600.jpg', 2666, 8, NULL, N'DDR4', 10),
                     (7, N'c75a780c-e294-4c77-9a68-156ab5923860', 1, NULL, N'HyperX Fury', 55, N'https://cdn.pcpartpicker.com/static/forever/images/product/14c2a7f4a3a06e1d0e81f25fb7c2a42a.1600.jpg', 3200, 8, NULL, N'DDR4', 10),
                     (8, N'10681988-c80f-42ac-9343-d7d3e1e5d6a9', 1, NULL, N'Vengeance', 35, N'https://cdn.pcpartpicker.com/static/forever/images/product/6a3b0f143de7182ae0c995ac4b357d19.med.1600.jpg', 1866, 8, NULL, N'DDR4', 19),
                     (9, N'faf3900c-ce08-4a07-a680-959af5929ad6', 1, NULL, N'HyperX Fury', 96, N'https://cdn.pcpartpicker.com/static/forever/images/product/d39bd7cede4c3af6acc60c517645ab7c.1600.jpg', 3200, 16, NULL, N'DDR4', 10),
                     (10, N'2687d5b6-5154-47b3-abbe-34620e95a122', 1, NULL, N'HyperX Fury', 40, N'https://cdn.pcpartpicker.com/static/forever/images/product/14c2a7f4a3a06e1d0e81f25fb7c2a42a.1600.jpg', 2400, 8, NULL, N'DDR4', 10),
                     (11, N'a2dad957-b5b0-41ba-9d6a-6f0f87e88ceb', 1, NULL, N'Vengeance LPX', 170, N'https://cdn.pcpartpicker.com/static/forever/images/product/7c04b120a9d93500b574655bd99b93aa.1600.jpg', 3000, 32, NULL, N'DDR4', 19),
                     (12, N'e2d10037-b68a-496d-b6af-9ddeb133073b', 1, NULL, N'Ripjaws V', 48, N'https://cdn.pcpartpicker.com/static/forever/images/product/c0fe82c5c039e038cd14a5833293d591.1600.jpg', 3600, 8, NULL, N'DDR4', 12),
                     (13, N'b37262ec-6c5b-46ed-aa24-8b795c80b447', 1, NULL, N'Vengeance LPX 8 GB', 40, N'https://cdn.pcpartpicker.com/static/forever/images/product/9b6014a1b219eb2ba07ec3d12c0c639f.1600.jpg', 2666, 8, NULL, N'DDR4', 19),
                     (14, N'a1eb3921-8107-4f2e-b634-596c99d0aa81', 1, NULL, N'Ripjaws V', 80, N'https://cdn.pcpartpicker.com/static/forever/images/product/72816e43251cd35c4b3f598eb8fc16e0.1600.jpg', 3600, 16, NULL, N'DDR4', 12),
                     (15, N'10fef06f-e94a-4603-83bc-021c97a0edd6', 1, NULL, N'HyperX Fury Black', 80, N'http://ecx.images-amazon.com/images/I/41Vkj6Q5vtL.jpg', 2133, 8, NULL, N'DDR4', 10),
                     (16, N'71122a11-c0d2-42a5-b537-2f769121b77e', 1, NULL, N'HyperX Fury Blue', 30, N'https://cdn.pcpartpicker.com/static/forever/images/product/420350537fa9e0e49b1e491fe9c4810d.1600.jpg', 1600, 8, NULL, N'DDR4', 10),
                     (17, N'c0727be8-46e0-4581-b48c-5af3071f5379', 1, NULL, N'Ripjaws V Series 8 GB', 33, N'http://ecx.images-amazon.com/images/I/41UyfTQGqiL.jpg', 2400, 8, NULL, N'DDR4', 12),
                     (18, N'68b4fc7b-080b-440e-a6e1-8de25e66d4ae', 1, NULL, N'Aegis', 47, N'https://cdn.pcpartpicker.com/static/forever/images/product/0c6edb82799a2627d1ea10e7cba3abfb.1600.jpg', 2666, 16, NULL, N'DDR4', 12),
                     (19, N'62e10ae9-8ecd-499b-9bcc-b3aad8e50788', 1, NULL, N'Aegis', 38, N'https://cdn.pcpartpicker.com/static/forever/images/product/cecd6ed1bee7da70050efd4881c95968.1600.jpg', 2666, 8, NULL, N'DDR4', 12),
                     (20, N'999d68bf-7b05-4e66-8ee3-fb69fdb76299', 1, NULL, 'Flare X', 110, N'https://images-eu.ssl-images-amazon.com/images/I/41Rho8VJhRL.jpg', 3200, 16, N'14-14-14-34', N'DDR4', 12)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [frequency], [size], [timing], [memory_type], [manufacturer_fk])
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
                                 T.[size] = S.[size],
                                 T.[timing] = S.[timing],
                                 T.[memory_type] = S.[memory_type],
                                 T.[manufacturer_fk] = S.[manufacturer_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [frequency], [size], [timing], [memory_type], [manufacturer_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[image_url], S.[frequency], S.[size], S.[timing], S.[memory_type], S.[manufacturer_fk]);

    SET IDENTITY_INSERT [dbo].[ram] OFF
END
