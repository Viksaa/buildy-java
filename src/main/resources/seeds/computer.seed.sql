BEGIN
    SET IDENTITY_INSERT [dbo].[computer] ON
    MERGE [dbo].[computer] AS T
    USING
        (
            SELECT *
            FROM (
                     VALUES
                     (1, N'a7568fd4-bb3a-4aed-af69-7c8c2c16e46a', 1, NULL, N'Viktor''s Pc', 1501, 4, 32, 250, 3, 16, 9, 23, 26, 21, 20, 16),
                     (2, N'f7066945-91b4-4c8d-9139-e8cdaf60ee77', 1, NULL, N'Chingo''s Pc', 2201, 4, 16, 250, 3, 16, 6, 4, 1, 5, 5, 6),
                     (3, N'3f1334ac-d17a-40f0-9b72-7731b9d04e42', 1, NULL, N'Mazhe''s Pc', 1596, 1, 32, 500, 1, 1, 1, 1, 1, 1, 1, 1),
                     (4, N'7cdf1bbd-fd2d-4440-8679-8e9a2baf9443', 1, NULL, N'Astor''s Pc', 2232, 2, 64, 2048, 2, 2, 2, 2, 2, 2, 2, 2)
                 )
                     AS temp ([id], [uid], [version], [deleted_on], [name], [price], [fan_count], [ram_amount], [storage_amount], [pc_case_fk], [cooling_fk], [cpu_fk], [gpu_fk], [motherboard_fk], [psu_fk], [ram_fk], [storage_fk])
        ) AS S
    ON T.id=S.id
    WHEN MATCHED THEN UPDATE SET
                                 T.[uid] = S.[uid],
                                 T.[version] = S.[version],
                                 T.[deleted_on] = S.[deleted_on],
                                 T.[name] = S.[name],
                                 T.[price] = S.[price],
                                 T.[fan_count] = S.[fan_count],
                                 T.[ram_amount] = S.[ram_amount],
                                 T.[storage_amount] = S.[storage_amount],
                                 T.[pc_case_fk] = S.[pc_case_fk],
                                 T.[cooling_fk] = S.[cooling_fk],
                                 T.[cpu_fk] = S.[cpu_fk],
                                 T.[gpu_fk] = S.[gpu_fk],
                                 T.[motherboard_fk] = S.[motherboard_fk],
                                 T.[psu_fk] = S.[psu_fk],
                                 T.[ram_fk] = S.[ram_fk],
                                 T.[storage_fk] = S.[storage_fk]
    WHEN NOT MATCHED THEN
        INSERT
        ([id], [uid], [version], [deleted_on], [name], [price], [fan_count], [ram_amount], [storage_amount], [pc_case_fk], [cooling_fk], [cpu_fk], [gpu_fk], [motherboard_fk], [psu_fk], [ram_fk], [storage_fk])
        VALUES
        (S.[id], S.[uid], S.[version], S.[deleted_on], S.[name], S.[price], S.[fan_count], S.[ram_amount], S.[storage_amount], S.[pc_case_fk], S.[cooling_fk], S.[cpu_fk], S.[gpu_fk], S.[motherboard_fk], S.[psu_fk], S.[ram_fk], S.[storage_fk]);

    SET IDENTITY_INSERT [dbo].[manufacturer] OFF
END
