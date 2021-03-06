BEGIN
    SET IDENTITY_INSERT [dbo].[socket] ON
    MERGE [dbo].[socket] AS T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'c8790fbf-baf9-4111-83da-c1bab0b382ea', 1, NULL, N'LGA 1150'),
                     (2, N'82f8d0a4-33f3-4b40-b479-3ec25b010bd4', 1, NULL, N'LGA 1151'),
                     (3, N'584682a6-d627-4d18-859b-8e3e0eff3d1e', 1, NULL, N'PGA'),
                     (4, N'23125f88-eef6-4983-868a-a5af7ba7159a', 1, NULL, N'AM3'),
                     (5, N'0c36cc8e-5c23-4c6c-bd45-edb4256f7c5d', 1, NULL, N'AM4'),
                     (6, N'c7510cee-73e0-4ed4-b772-39c5695e7305', 1, NULL, N'TR4')
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

    SET IDENTITY_INSERT [dbo].[socket] OFF
END
