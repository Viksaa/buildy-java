BEGIN
    SET IDENTITY_INSERT [dbo].[chipset] ON
    MERGE [dbo].[chipset] AS T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'cd8aaf53-f3db-4a0d-bb29-3299036ac663', 1, NULL, N'X570'),
                     (2, N'af6dcb61-f54e-4111-a82f-02a52292b00c', 1, NULL, N'X470'),
                     (3, N'7bec65bb-3fc1-465a-8217-d790d9d80c97', 1, NULL, N'X370'),
                     (4, N'2a72f8d1-b236-4481-b30b-40706448d71a', 1, NULL, N'B550'),
                     (5, N'630b91e3-4930-45be-ae09-79821da62fb2', 1, NULL, N'B450'),
                     (6, N'932333e7-a976-4c80-aaab-6ea88cc92238', 1, NULL, N'B350'),
                     (7, N'b2c1e015-6085-4cf1-86e8-5ea5d585b8ee', 1, NULL, N'Z370'),
                     (8, N'74846613-695b-4717-af41-44b2c19b6c85', 1, NULL, N'Z390'),
                     (9, N'9c865368-5e47-43aa-a4c3-c3d8b7e1ffda', 1, NULL, N'H370'),
                     (10, N'7e577732-1757-4fa2-bdf1-f651470943fb', 1, NULL, N'B360'),
                     (11, N'4efbc799-616e-48b4-8d43-a3ff486a9579', 1, NULL, N'Z270')
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

    SET IDENTITY_INSERT [dbo].[chipset] OFF
END
