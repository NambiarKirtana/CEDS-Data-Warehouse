CREATE TABLE [RDS].[FactK12StaffCounts] (
    [FactK12StaffCountId]                   INT             IDENTITY (1, 1) NOT NULL,
    [SchoolYearId]                          INT             CONSTRAINT [DF_FactK12StaffCounts_SchoolYearId] DEFAULT ((-1)) NOT NULL,
    [FactTypeId]                            INT             CONSTRAINT [DF_FactK12StaffCounts_FactTypeId] DEFAULT ((-1)) NOT NULL,
    [SeaId]                                 INT             CONSTRAINT [DF_FactK12StaffCounts_SeaId] DEFAULT ((-1)) NOT NULL,
    [LeaId]                                 INT             CONSTRAINT [DF_FactK12StaffCounts_LeaId] DEFAULT ((-1)) NOT NULL,
    [K12SchoolId]                           INT             CONSTRAINT [DF_FactK12StaffCounts_K12SchoolId] DEFAULT ((-1)) NOT NULL,
    [K12StaffId]                            BIGINT          CONSTRAINT [DF_FactK12StaffCounts_K12StaffId] DEFAULT ((-1)) NOT NULL,
    [K12StaffStatusId]                      INT             CONSTRAINT [DF_FactK12StaffCounts_K12StaffStatusId] DEFAULT ((-1)) NOT NULL,
    [K12StaffCategoryId]                    INT             CONSTRAINT [DF_FactK12StaffCounts_K12StaffCategoryId] DEFAULT ((-1)) NOT NULL,
    [TitleIIIStatusId]                      INT             CONSTRAINT [DF_FactK12StaffCounts_TitleIIIStatusId] DEFAULT ((-1)) NOT NULL,
    [CredentialIssuanceDateId] 				INT             CONSTRAINT [DF_FactK12StaffCounts_CredentialIssuanceDateId] DEFAULT ((-1)) NOT NULL,
    [CredentialExpirationDateId]         	INT             CONSTRAINT [DF_FactK12StaffCounts_CredentialExpirationDateId] DEFAULT ((-1)) NOT NULL,
    [StaffCount]                            INT             CONSTRAINT [DF_FactK12StaffCounts_StaffCount] DEFAULT ((1)) NOT NULL,
    [StaffFullTimeEquivalency]              DECIMAL (18, 3) NOT NULL,
    CONSTRAINT [PK_FactK12StaffCounts] PRIMARY KEY CLUSTERED ([FactK12StaffCountId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE),
    CONSTRAINT [FK_FactK12StaffCounts_FactTypeId] FOREIGN KEY ([FactTypeId]) REFERENCES [RDS].[DimFactTypes] ([DimFactTypeId]),
    CONSTRAINT [FK_FactK12StaffCounts_K12SchoolId] FOREIGN KEY ([K12SchoolId]) REFERENCES [RDS].[DimK12Schools] ([DimK12SchoolId]),
    CONSTRAINT [FK_FactK12StaffCounts_K12StaffCategoryId] FOREIGN KEY ([K12StaffCategoryId]) REFERENCES [RDS].[DimK12StaffCategories] ([DimK12StaffCategoryId]),
    CONSTRAINT [FK_FactK12StaffCounts_K12StaffId] FOREIGN KEY ([K12StaffId]) REFERENCES [RDS].[DimPeople] ([DimPersonId]),
    CONSTRAINT [FK_FactK12StaffCounts_K12StaffStatusId] FOREIGN KEY ([K12StaffStatusId]) REFERENCES [RDS].[DimK12StaffStatuses] ([DimK12StaffStatusId]),
    CONSTRAINT [FK_FactK12StaffCounts_LeaId] FOREIGN KEY ([LeaId]) REFERENCES [RDS].[DimLeas] ([DimLeaID]),
    CONSTRAINT [FK_FactK12StaffCounts_SchoolYearId] FOREIGN KEY ([SchoolYearId]) REFERENCES [RDS].[DimSchoolYears] ([DimSchoolYearId]),
    CONSTRAINT [FK_FactK12StaffCounts_SeaId] FOREIGN KEY ([SeaId]) REFERENCES [RDS].[DimSeas] ([DimSeaId]),
    CONSTRAINT [FK_FactK12StaffCounts_TitleIIIStatuses] FOREIGN KEY ([TitleIIIStatusId]) REFERENCES [RDS].[DimTitleIIIStatuses] ([DimTitleIIIStatusId]),
    CONSTRAINT [FK_FactK12StaffCounts_CredentialIssuanceDateId] FOREIGN KEY ([CredentialIssuanceDateId]) REFERENCES [RDS].[DimDates] ([DimDateId]),
    CONSTRAINT [FK_FactK12StaffCounts_CredentialExpirationDateId] FOREIGN KEY ([CredentialExpirationDateId]) REFERENCES [RDS].[DimDates] ([DimDateId])
);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_SeaId]
    ON [RDS].[FactK12StaffCounts]([SeaId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_FactTypeId]
    ON [RDS].[FactK12StaffCounts]([FactTypeId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_TitleIIIStatusId]
    ON [RDS].[FactK12StaffCounts]([TitleIIIStatusId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_K12SchoolId]
    ON [RDS].[FactK12StaffCounts]([K12SchoolId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_K12StaffCategoryId]
    ON [RDS].[FactK12StaffCounts]([K12StaffCategoryId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_K12Staffid]
    ON [RDS].[FactK12StaffCounts]([K12StaffId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_K12StaffStatusId]
    ON [RDS].[FactK12StaffCounts]([K12StaffStatusId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_LeaId]
    ON [RDS].[FactK12StaffCounts]([LeaId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_SchoolYearId]
    ON [RDS].[FactK12StaffCounts]([SchoolYearId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_CredentialIssuanceDateId]
    ON [RDS].[FactK12StaffCounts]([CredentialIssuanceDateId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StaffCounts_CredentialExpirationDateId]
    ON [RDS].[FactK12StaffCounts]([CredentialExpirationDateId] ASC) WITH (FILLFACTOR = 80, DATA_COMPRESSION = PAGE);


GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The year for a reported school session.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'School Year' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000243' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21243' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'StaffFullTimeEquivalency';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'StaffFullTimeEquivalency';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Staff Full Time Equivalency' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'StaffFullTimeEquivalency';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000118' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'StaffFullTimeEquivalency';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21118' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StaffCounts', @level2type=N'COLUMN',@level2name=N'StaffFullTimeEquivalency';
GO