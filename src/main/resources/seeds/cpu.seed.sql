BEGIN
    SET IDENTITY_INSERT [dbo].[cpu] ON
    MERGE [dbo].[cpu] AS T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'7028ef48-43e7-4702-8356-e4b1f8458287', 1, NULL, N'Ryzen 5 3600', 193, N'https://cdn.pcpartpicker.com/static/forever/images/product/c7baf2c9c9cc15ae23adb24c2f4316fc.1600.jpg', 6, 12, 3.0, 32, 1, 5, 2),
                     (2, N'e9a6e619-61d6-454e-a1ff-d82f426e069f', 1, NULL, N'Ryzen 7 3700X', 350, N'https://cdn.pcpartpicker.com/static/forever/images/product/23cd3adfd50037c1b44d6d53edb15248.1600.jpg', 8, 16, 4.0, 32, 1, 5, 2),
                     (3, N'df019e7c-111a-48ba-8027-f05e7b96e3ca', 1, NULL, N'Ryzen 9 3900X', 500, N'https://cdn.pcpartpicker.com/static/forever/images/product/14adcd1fc88ebf386b746037c966b6af.1600.jpg', 12, 24, 4.0, 64, 1, 5, 2),
                     (4, N'9429bfec-4bdd-41e9-9d3d-7817faec5c6b', 1, NULL, N'Core i7-9700K', 340, N'https://cdn.pcpartpicker.com/static/forever/images/product/3760e89d1820da393f084e2c18a62e3b.1600.jpg', 8, 8, 4.9, 12, 0, 2, 3),
                     (5, N'2d53bb87-1c28-46a8-a77a-750e03003df3', 1, NULL, N'Core i9-9900K', 500, N'https://images-na.ssl-images-amazon.com/images/I/41EDFtP5hpL.jpg', 8, 16, 5.0, 32, 0, 2, 3),
                     (6, N'8c1d5da7-4962-4707-95c4-04589e4bfa80', 1, NULL, N'Ryzen 5 2600', 130, N'https://cdn.pcpartpicker.com/static/forever/images/product/55aea2dd64e2e3a3e3b1d678048d8d76.1600.jpg', 6, 12, 3.4, 32, 1, 5, 2),
                     (7, N'89233759-d8e7-4c6c-9587-f27bc25f9083', 1, NULL, N'Core i5-9400F', 140, N'https://cdn.pcpartpicker.com/static/forever/images/product/3b2d769c28b9890779f87a7568887dfc.1600.jpg', 6, 6, 2.9, 32, 1, 2, 3),
                     (8, N'54161376-55e6-44ec-8c0f-f869ce823df2', 1, NULL, N'Ryzen 5 2600X', 150, N'https://cdn.pcpartpicker.com/static/forever/images/product/55aea2dd64e2e3a3e3b1d678048d8d76.1600.jpg', 6, 12, 3.6, 32, 1, 5, 2),
                     (9, N'b3d9b83a-edd2-4a66-a0d3-2e8960b07401', 1, NULL, N'Ryzen 7 2700X', 250, N'https://cdn.pcpartpicker.com/static/forever/images/product/4e84967ef18c9b42e543b58c836d73ef.1600.jpg', 8, 16, 4.3, 32, 1, 5, 2),
                     (10, N'c44c4114-eb3a-42b2-b507-58781ab21d0a', 1, NULL, N'Ryzen 3 2200G', 80, N'https://cdn.pcpartpicker.com/static/forever/images/product/ad2e56d88c77de3053dcc5dada363f58.1600.jpg', 4, 8, 3.5, 32, 1, 5, 2),
                     (11, N'97dc7d6c-e693-4b84-84cf-8a8a024fc789', 1, NULL, N'Ryzen 5 3600X', 240, N'https://cdn.pcpartpicker.com/static/forever/images/product/c7baf2c9c9cc15ae23adb24c2f4316fc.1600.jpg', 6, 12, 3.8, 32, 1, 5, 2),
                     (12, N'fa3050c7-d68d-4ed3-8606-f3b0cbdfdc04', 1, NULL, N'Core i7-8700K', 350, N'https://cdn.pcpartpicker.com/static/forever/images/product/3760e89d1820da393f084e2c18a62e3b.1600.jpg', 6, 12, 3.7, 12, 0, 2, 3),
                     (13, N'1b90934a-f011-49c1-8ffc-9d6b005eea1f', 1, NULL, N'Ryzen 7 2700', 180, N'https://cdn.pcpartpicker.com/static/forever/images/product/4e84967ef18c9b42e543b58c836d73ef.1600.jpg', 8, 16, 4.1, 32, 1, 5, 2),
                     (14, N'31af5bf4-3165-4924-87a3-c230e25127c4', 1, NULL, N'Ryzen 5 3400G', 140, N'https://cdn.pcpartpicker.com/static/forever/images/product/43e2914b40ccb9ab7ce39eb656db3b44.1600.jpg', 4, 8, 3.7, 32, 1, 5, 2),
                     (15, N'a9723595-7c73-4543-8d43-f858c9e19c8d', 1, NULL, N'Core i5-9600K', 230, N'https://cdn.pcpartpicker.com/static/forever/images/product/33f96aec821c5c10f4b1fd636a7d1881.1600.jpg', 6, 12, 4.6, 32, 0, 2, 3),
                     (16, N'08c5b25f-5ebd-4db7-9ca1-082e12f1e1fd', 1, NULL, N'Core i3-9100F', 170, N'https://cdn.pcpartpicker.com/static/forever/images/product/0d74fb44f832ad674549787311aafa0f.1600.jpg', 4, 8, 4.2, 32, 1, 2, 3),
                     (17, N'a32de93c-c0de-46c3-921a-61787b822890', 1, NULL, N'Core i7-6700K', 170, N'https://cdn.pcpartpicker.com/static/forever/images/product/614a9c530cce56d1fafbc5ba97920ab1.1600.jpg', 4, 8, 4.0, 32, 0, 2, 3),
                     (18, N'0ed817c7-a945-4e84-a4d1-ac48785bd826', 1, NULL, N'Core i5-8400', 140, N'https://images-eu.ssl-images-amazon.com/images/I/515kqMHI1IL.jpg', 6, 12, 2.8, 32, 1, 2, 3),
                     (19, N'1813f03c-4a48-452e-86f4-44b77a17ce8e', 1, NULL, N'Core i7-7700K', 330, N'https://cdn.pcpartpicker.com/static/forever/images/product/3760e89d1820da393f084e2c18a62e3b.1600.jpg', 4, 8, 4.2, 16, 1, 2, 3),
                     (20, N'9c9abf04-dbf2-49a8-8473-9ce1f8b108e2', 1, NULL, N'Ryzen 7 1700X', 165, N'https://cdn.pcpartpicker.com/static/forever/images/product/4e84967ef18c9b42e543b58c836d73ef.1600.jpg', 8, 16, 3.4, 32, 1, 5, 2),
                     (21, N'b0d17247-d838-4229-9d1e-f381f0ea1bab', 1, NULL, N'Core i7-9700', 330, N'https://cdn.pcpartpicker.com/static/forever/images/product/3760e89d1820da393f084e2c18a62e3b.1600.jpg', 8, 8, 3.0, 14, 1, 2, 3),
                     (22, N'b9b068b5-632a-4dbb-834a-0f6949c3ffba', 1, NULL, N'Core i5-9400', 170, N'https://cdn.pcpartpicker.com/static/forever/images/product/64bf363daabaca441f6b8f07b54005cc.1600.jpg', 6, 6, 2.9, 16, 1, 2, 3),
                     (23, N'8bf482ae-31b4-4374-a425-3146c639299b', 1, NULL, N'Core i5-8600K', 260, N'https://cdn.pcpartpicker.com/static/forever/images/product/64bf363daabaca441f6b8f07b54005cc.1600.jpg', 6, 12, 3.9, 12, 1, 2, 3),
                     (24, N'e75911a6-2da3-4cfe-bea2-2e7710e979c7', 1, NULL, N'Core i3-8100F', 120, N'https://cdn.pcpartpicker.com/static/forever/images/product/0d74fb44f832ad674549787311aafa0f.1600.jpg', 4, 8, 3.6, 32, 1, 2, 3),
                     (25, N'86b63159-4c41-42b4-9390-64e685749224', 1, NULL, N'Core i5-6600K', 220, N'https://cdn.pcpartpicker.com/static/forever/images/product/64bf363daabaca441f6b8f07b54005cc.1600.jpg', 4, 8, 3.5, 16, 0, 2, 3),
                     (26, N'509afef4-789c-49fd-9630-9cfbb7f4a726', 1, NULL, N'Threadripper 2950X', 400, N'https://cdn.pcpartpicker.com/static/forever/images/product/09734bbf8632da3f135375bbb4ea6f94.1600.jpg', 16, 32, 3.5, 64, 0, 6, 2),
                     (27, N'b700172e-995a-4e35-8d38-983711e7e327', 1, NULL, N'Core i7-7700', 300, N'https://cdn.pcpartpicker.com/static/forever/images/product/3760e89d1820da393f084e2c18a62e3b.1600.jpg', 4, 8, 3.6, 12, 1, 2, 3),
                     (28, N'3b471323-7dd8-41e9-9458-1d304c79c70d', 1, NULL, N'Core i5-9600KF', 220, N'https://cdn.pcpartpicker.com/static/forever/images/product/658de8a85dd1c0af16b8f020ed5bb2da.1600.jpg', 6, 12, 3.7, 12, 0, 2, 3),
                     (29, N'd150985b-5112-4d24-9fb7-e6895845444a', 1, NULL, N'Core i5-7400', 180, N'https://cdn.pcpartpicker.com/static/forever/images/product/658de8a85dd1c0af16b8f020ed5bb2da.1600.jpg', 4, 8, 3.0, 12, 1, 2, 3),
                     (30, N'6b0af910-cb31-4ec2-b742-06adcad5356b', 1, NULL, N'Ryzen 7 1700', 224, N'https://cdn.pcpartpicker.com/static/forever/images/product/4e84967ef18c9b42e543b58c836d73ef.1600.jpg', 8, 16, 3.0, 32, 1, 5, 2),
                     (31, N'e93176b5-af2f-42c3-b45a-e8ff015626c7', 1, NULL, N'Core i7-8086K', 350, N'https://cdn.pcpartpicker.com/static/forever/images/product/452fefc7712153b364268a36d1674efb.1600.jpg', 6, 12, 4.0, 12, 1, 2, 3)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [cores], [threads], [frequency], [cache], [cooling_solution], [socket_fk], [manufacturer_fk])
        ) AS S
    ON T.id=S.id
    WHEN MATCHED THEN UPDATE SET
                                 T.[uid] = S.[uid],
                                 T.[version] = S.[version],
                                 T.[deleted_on] = S.[deleted_on],
                                 T.[name] = S.[name],
                                 T.[price] = S.[price],
                                 T.[image_url] = S.[image_url],
                                 T.[cores] = S.[cores],
                                 T.[threads] = S.[threads],
                                 T.[frequency] = S.[frequency],
                                 T.[cache] = S.[cache],
                                 T.[cooling_solution] = S.[cooling_solution],
                                 T.[socket_fk] = S.[socket_fk],
                                 T.[manufacturer_fk] = S.[manufacturer_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [image_url], [cores], [threads], [frequency], [cache], [cooling_solution], [socket_fk], [manufacturer_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[image_url], S.[cores], S.[threads], S.[frequency], S.[cache], S.[cooling_solution], S.[socket_fk], S.[manufacturer_fk]);

    SET IDENTITY_INSERT [dbo].[cpu] OFF
END
