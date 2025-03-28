CREATE TABLE [RDS].[FactK12StudentEconomicDisadvantages] (
    [FactK12StudentEconomicDisadvantageId] INT    IDENTITY (1, 1) NOT NULL,
    [SchoolYearId]                         INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_SchoolYearId] DEFAULT ((-1)) NOT NULL,
    [CountDateId]                          INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_CountDateId] DEFAULT ((-1)) NOT NULL,
    [DataCollectionId]                     INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_DataCollectionId] DEFAULT ((-1)) NOT NULL,
    [NcesSideVintageBeginYearDateId]       INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_NcesSideVantageBeginYearDateId] DEFAULT ((-1)) NOT NULL,
    [NcesSideVintageEndYearDateId]         INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_NcesSideVantageEndYearDateId] DEFAULT ((-1)) NOT NULL,
    [SeaId]                                INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_SeaId] DEFAULT ((-1)) NOT NULL,
    [IeuId]                                INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_IeuId] DEFAULT ((-1)) NOT NULL,
    [LeaId]                                INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_LeaId] DEFAULT ((-1)) NOT NULL,
    [K12SchoolId]                          INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_K12SchoolId] DEFAULT ((-1)) NOT NULL,
    [K12StudentId]                         BIGINT CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_K12StudentId] DEFAULT ((-1)) NOT NULL,
    [K12DemographicId]                     INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_K12DemographicId] DEFAULT ((-1)) NOT NULL,
    [EconomicallyDisadvantagedStatusId]    INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_EconomicallyDisadvantagedStatusId] DEFAULT ((-1)) NOT NULL,
    [PersonAddressId]                      INT    CONSTRAINT [DF_FactK12StudentEconomicDisadvantages_PersonAddressId] DEFAULT ((-1)) NOT NULL,
    [NcesSideEstimate]                     INT    NOT NULL,
    [NcesSideStandardError]                INT    NOT NULL,
    CONSTRAINT [PK_FactK12StudentEconomicDisadvantages] PRIMARY KEY CLUSTERED ([FactK12StudentEconomicDisadvantageId] ASC),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_CountDateId] FOREIGN KEY ([CountDateId]) REFERENCES [RDS].[DimDates] ([DimDateId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_DataCollectionId] FOREIGN KEY ([DataCollectionId]) REFERENCES [RDS].[DimDataCollections] ([DimDataCollectionId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_EconomicallyDisadvantagedStatusId] FOREIGN KEY ([EconomicallyDisadvantagedStatusId]) REFERENCES [RDS].[DimEconomicallyDisadvantagedStatuses] ([DimEconomicallyDisadvantagedStatusId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_IeuId] FOREIGN KEY ([IeuId]) REFERENCES [RDS].[DimIeus] ([DimIeuId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_K12DemographicId] FOREIGN KEY ([K12DemographicId]) REFERENCES [RDS].[DimK12Demographics] ([DimK12DemographicId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_K12SchoolId] FOREIGN KEY ([K12SchoolId]) REFERENCES [RDS].[DimK12Schools] ([DimK12SchoolId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_K12StudentId] FOREIGN KEY ([K12StudentId]) REFERENCES [RDS].[DimPeople] ([DimPersonId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_LeaId] FOREIGN KEY ([LeaId]) REFERENCES [RDS].[DimLeas] ([DimLeaID]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_NcesSideVintageBeginYearId] FOREIGN KEY ([NcesSideVintageBeginYearDateId]) REFERENCES [RDS].[DimDates] ([DimDateId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_NcesSideVintageEndYearId] FOREIGN KEY ([NcesSideVintageEndYearDateId]) REFERENCES [RDS].[DimDates] ([DimDateId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_PersonAddressId] FOREIGN KEY ([PersonAddressId]) REFERENCES [RDS].[DimPersonAddresses] ([DimPersonAddressId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_SchoolYearId] FOREIGN KEY ([SchoolYearId]) REFERENCES [RDS].[DimSchoolYears] ([DimSchoolYearId]),
    CONSTRAINT [FK_FactK12StudentEconomicDisadvantages_SeaId] FOREIGN KEY ([SeaId]) REFERENCES [RDS].[DimSeas] ([DimSeaId])
);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_NcesSideVantageDateYearDateId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([NcesSideVintageEndYearDateId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_SchoolYearId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([SchoolYearId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_PersonAddressId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([PersonAddressId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_CountDateId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([CountDateId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_SeaId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([SeaId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_DataCollectionId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([DataCollectionId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_IeuId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([IeuId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_EconomicallyDisadvantagedStatusId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([EconomicallyDisadvantagedStatusId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_K12DemographicId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([K12DemographicId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_K12SchoolId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([K12SchoolId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_LeaId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([LeaId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_K12StudentId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([K12StudentId] ASC);


GO

CREATE NONCLUSTERED INDEX [IXFK_FactK12StudentEconomicDisadvantages_NcesSideVantageBeginYearDateId]
    ON [RDS].[FactK12StudentEconomicDisadvantages]([NcesSideVintageBeginYearDateId] ASC);


GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'CountDateId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The effective month, day, and year on which the data was counted.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'CountDateId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Count Date' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'CountDateId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001760' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'CountDateId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22741' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'CountDateId';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The year for a reported school session.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'School Year' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000243' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21243' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'SchoolYearId';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'NcesSideEstimate';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The National Center for Education Statistics (NCES) spatially interpolated demographic estimate (SIDE) based on the person''s latitude and longitude location.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'NcesSideEstimate';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'NCES SIDE Estimate' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'NcesSideEstimate';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001948' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'NcesSideEstimate';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22944' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'FactK12StudentEconomicDisadvantages', @level2type=N'COLUMN',@level2name=N'NcesSideEstimate';
GO