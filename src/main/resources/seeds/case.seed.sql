BEGIN
    SET IDENTITY_INSERT [dbo].[pc_case] ON
    MERGE [dbo].[pc_case] AS T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'7683e5f9-baa0-473f-ab3c-4257219c6011', 1, NULL, N'H510 Elite', 170, N'https://sta3-nzxtcorporation.netdna-ssl.com/uploads/product_image/image/2428/large_b2feaa953e1c78d9.jpg', 210, 435, 428, 4, N'ATX', 8),
                     (2, N'2af48151-aa9c-4af1-b7e2-0155a0e79e0c', 1, NULL, N'H710i', 200, N'https://sta3-nzxtcorporation.netdna-ssl.com/uploads/product_image/image/2462/large_caaa8ad6b19de81c.jpg', 230, 516, 494, 5, N'ATX', 8),
                     (3, N'6c8262ad-16b5-40d4-bfac-551e3abd73d5', 1, NULL, N'H500', 75, N'https://www.scan.co.uk/images/products/2948278-a.jpg', 210, 435, 428, 4, N'ATX', 8),
                     (4, N'59461cf6-a903-482f-a1ee-ed3875df5365', 1, NULL, N'H210i', 120, N'https://sta3-nzxtcorporation.netdna-ssl.com/uploads/product_image/image/2262/large_2fbdddad9178e815.jpg', 210, 349, 372, 4, N'MICRO_ATX', 8),
                     (5, N'553bf349-a26b-4625-bc8f-c363a6ff7e79', 1, NULL, N'H510', 80, N'https://sta3-nzxtcorporation.netdna-ssl.com/uploads/product_image/image/2385/large_119c49cc79b97b94.jpg', 210, 435, 428, 4, N'ATX', 8),
                     (6, N'5988db65-d85d-42b4-b1bb-82169491a49a', 1, NULL, N'Obsidian 500D RGB SE', 280, N'https://images-eu.ssl-images-amazon.com/images/I/41tzS2mBxyL.jpg', 210, 435, 428, 6, N'ATX', 19),
                     (7, N'84465106-8d18-4127-98f1-32d7244adcc8', 1, NULL, N'200R', 70, N'http://ecx.images-amazon.com/images/I/41qTCywCUvL.jpg', 497, 210, 429, 4, N'ATX', 19),
                     (8, N'055c38db-89a6-420e-8a8a-00277b3ac83f', 1, NULL, N'MasterBox Pro 5 RGB', 95, N'https://images-eu.ssl-images-amazon.com/images/I/41Foz%2B%2BKvmL.jpg', 500, 223, 475, 5, N'ATX', 6),
                     (9, N'37ef16bb-4bf5-470f-b736-fccfb1d1612a', 1, NULL, N'Master MasterCase H500', 120, N'https://cdn.pcpartpicker.com/static/forever/images/product/8058a5658a08dbd68ed2f88ab8e70df7.1600.jpg', 210, 435, 428, 4, N'ATX', 6),
                     (10, N'c4ece413-dae7-4d5b-a0da-ba81875c92ad', 1, NULL, N'SPEC-DELTA RGB', 90, N'https://cdn.pcpartpicker.com/static/forever/images/product/b35ad4944a6207c0e307154137834af6.1600.jpg', 440, 210, 450, 6, N'ATX', 19),
                     (11, N'9dfada59-0090-4bfb-afe3-01d1f5eb135d', 1, NULL, N'Master MasterBox Lite 5', 55, N'https://cdn.pcpartpicker.com/static/forever/images/product/17fa8a2537f9c8b4daed00429246ba26.1600.jpg', 210, 435, 428, 4, N'ATX', 6),
                     (12, N'5dd57ddd-2351-4fdd-880f-9b5c7505a047', 1, NULL, N'Crystal Series 680X RGB', 250, N'https://cdn.pcpartpicker.com/static/forever/images/product/6c64c4140c5b621d9e2177d0498cd43a.1600.jpg', 210, 435, 428, 6, N'ATX', 19),
                     (13, N'6bda411a-fc85-4bad-abcb-962e09fa0941', 1, NULL, N'MasterCase H500M', 200, N'https://cdn.pcpartpicker.com/static/forever/images/product/3b22338d08cddc21f3cd6150ec431a31.1600.jpg', 248, 544, 546, 4, N'ATX', 6),
                     (14, N'9b1f47a2-954a-406d-aaa6-e83a6ef9ada3', 1, NULL, N'1000D', 500, N'https://cdn.pcpartpicker.com/static/forever/images/product/a7a0359ad235cd8cb78730230deb4666.1600.jpg', 248, 544, 546, 6, N'ATX', 19),
                     (15, N'fd66e7ba-f199-4745-a48e-d97c551bb1b4', 1, NULL, N'Master MasterBox Q300P', 92, N'https://cdn.pcpartpicker.com/static/forever/images/product/d5515cc352c490650ff658bd3608857f.1600.jpg', 230, 455, 458, 4, N'MICRO_ATX', 6),
                     (16, N'ef8661c8-7cd3-483f-a7b3-1777d379b5cd', 1, NULL, N'H400i', 150, N'https://cdn.pcpartpicker.com/static/forever/images/product/6eefe518c7238492e201cad2e26ac36a.1600.jpg', 210, 435, 428, 4, N'MICRO_ATX', 8),
                     (17, N'dffa36a0-574f-44bb-99dd-dab5fd1506d0', 1, NULL, N'H400', 115, N'https://cdn.pcpartpicker.com/static/forever/images/product/6eefe518c7238492e201cad2e26ac36a.1600.jpg', 210, 435, 428, 4, N'MICRO_ATX', 8),
                     (18, N'787974b1-c9fd-41d1-9b4f-2930c6b83f6b', 1, NULL, N'SILENCIO S400', 90, N'https://cdn.pcpartpicker.com/static/forever/images/product/7c65bcaf0b488afa25432eac27991ce0.1600.jpg', 210, 435, 428, 4, N'MICRO_ATX', 6),
                     (19, N'd796c284-a0be-49c8-b089-d97bdde17096', 1, NULL, N'Manta', 75, N'http://ecx.images-amazon.com/images/I/41s6YuZbkKL.jpg', 210, 335, 328, 2, N'MINI_ATX', 8),
                     (20, N'c040779a-18ad-4676-a435-6b1ef3b66b25', 1, NULL, N'Elite 130', 100, N'https://cdn.pcpartpicker.com/static/forever/images/product/f23d251fb57394eedf211f122d84e934.1600.jpg', 210, 235, 228, 4, N'MINI_ATX', 6)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [width], [height], [depth], [number_of_fans_supported], [motherboard_type], [manufacturer_fk])
        ) AS S
    ON T.id=S.id
    WHEN MATCHED THEN UPDATE SET
                                 T.[uid] = S.[uid],
                                 T.[version] = S.[version],
                                 T.[deleted_on] = S.[deleted_on],
                                 T.[name] = S.[name],
                                 T.[price] = S.[price],
                                 T.[image_url] = S.[image_url],
                                 T.[width] = S.[width],
                                 T.[height] = S.[height],
                                 T.[depth] = S.[depth],
                                 T.[number_of_fans_supported] = S.[number_of_fans_supported],
                                 T.[motherboard_type] = S.[motherboard_type],
                                 T.[manufacturer_fk] = S.[manufacturer_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [width], [height], [depth], [number_of_fans_supported], [motherboard_type], [manufacturer_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[image_url], S.[width], S.[height], S.[depth], S.[number_of_fans_supported], S.[motherboard_type], S.[manufacturer_fk]);

    SET IDENTITY_INSERT [dbo].[pc_case] OFF
END
