BEGIN
    SET IDENTITY_INSERT [dbo].[psu_efficiency] ON
    MERGE [dbo].[psu_efficiency] AS T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'c5d9ab56-372b-47bf-82f6-42e3e0e88729', 1, NULL, N'80 Plus'),
                     (2, N'cc938cc8-2363-450e-ab7f-68dc903a7546', 1, NULL, N'80 Plus Bronze'),
                     (3, N'e40a83e2-bb66-4789-9346-98bd6d05b6cb', 1, NULL, N'80 Plus Silver'),
                     (4, N'41153cb7-9761-4711-965a-1e9c1a8a7e8e', 1, NULL, N'80 Plus Gold'),
                     (5, N'ff8c0331-08a1-4843-bdf2-9bac6d6ac045', 1, NULL, N'80 Plus Platinum'),
                     (6, N'88b5cf3e-7cd5-4b7f-8382-ba51ce5f043c', 1, NULL, N'80 Plus Titanium')
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name])
        ) AS S
    ON T.id=S.id
    WHEN MATCHED THEN UPDATE SET
                                 T.[uid] = S.[uid],
                                 T.[version] = S.[version],
                                 T.[deleted_on] = S.[deleted_on],
                                 T.[name] = S.[name]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name]);

    SET IDENTITY_INSERT [dbo].[psu_efficiency] OFF
END
