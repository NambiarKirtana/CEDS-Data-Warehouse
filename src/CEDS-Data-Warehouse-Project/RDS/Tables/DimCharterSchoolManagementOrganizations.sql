CREATE TABLE [RDS].[DimCharterSchoolManagementOrganizations] (
    [DimCharterSchoolManagementOrganizationId]                     INT            IDENTITY (1, 1) NOT NULL,
    [CharterSchoolManagementOrganizationOrganizationName]          NVARCHAR (MAX) NULL,
    [CharterSchoolManagementOrganizationOrganizationIdentifierSea] NVARCHAR (MAX) NULL,
    [StateAbbreviationDescription]                                 NVARCHAR (MAX) NULL,
    [StateAbbreviationCode]                                        NVARCHAR (MAX) NULL,
    [StateANSICode]                                                NVARCHAR (MAX) NULL,
    [CharterSchoolManagementOrganizationTypeCode]                  NVARCHAR (50)  NULL,
    [CharterSchoolManagementOrganizationTypeDescription]           NVARCHAR (100) NULL,
    [CharterSchoolManagementOrganizationTypeEdfactsCode]           NVARCHAR (50)  NULL,
    [MailingAddressCity]                                           NVARCHAR (30)  NULL,
    [MailingAddressPostalCode]                                     NVARCHAR (17)  NULL,
    [MailingAddressStateAbbreviation]                              NVARCHAR (50)  NULL,
    [MailingAddressStreetNumberAndName]                            NVARCHAR (150) NULL,
    [PhysicalAddressCity]                                          NVARCHAR (30)  NULL,
    [PhysicalAddressPostalCode]                                    NVARCHAR (17)  NULL,
    [PhysicalAddressStateAbbreviation]                             NVARCHAR (50)  NULL,
    [PhysicalAddressStreetNumberAndName]                           NVARCHAR (150) NULL,
    [TelephoneNumber]                                              NVARCHAR (24)  NULL,
    [WebSiteAddress]                                               NVARCHAR (300) NULL,
    [OutOfStateIndicator]                                          BIT            NULL,
    [RecordStartDateTime]                                          DATETIME       NULL,
    [RecordEndDateTime]                                            DATETIME       NULL,
    [OrganizationIdentifierFein]                                   VARCHAR (50)   NULL,
    CONSTRAINT [PK_DimCharterSchoolManagementOrganizations] PRIMARY KEY CLUSTERED ([DimCharterSchoolManagementOrganizationId] ASC)
);


GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationIdentifierSea';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A unique number or alphanumeric code assigned to an organization by a school, school system, a state, or other agency or entity.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationIdentifierSea';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Organization Identifier' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationIdentifierSea';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000826' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationIdentifierSea';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21825' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationIdentifierSea';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The name of a non-person entity such as an organization, institution, agency or business.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Organization Name' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000204' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21204' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationOrganizationName';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Charter School Management Organization Type' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001650' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22631' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeCode';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Charter School Management Organization Type' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001650' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22631' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeEdfactsCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeEdfactsCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Charter School Management Organization Type' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeEdfactsCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001650' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeEdfactsCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22631' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'CharterSchoolManagementOrganizationTypeEdfactsCode';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The name of the city in which an address is located.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Address City' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000040' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21040' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A number that identifies each postal delivery area in the United States used as a portion of an address.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Address Postal Code' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000214' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21214' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'State Abbreviation' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000267' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21267' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The street number and street name or post office box number of an address.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Address Street Number and Name' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000269' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21269' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'MailingAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'OrganizationIdentifierFein';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A unique number or alphanumeric code assigned to an organization by a school, school system, a state, or other agency or entity.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'OrganizationIdentifierFein';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Organization Identifier' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'OrganizationIdentifierFein';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000826' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'OrganizationIdentifierFein';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21825' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'OrganizationIdentifierFein';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The name of the city in which an address is located.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Address City' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000040' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21040' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressCity';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A number that identifies each postal delivery area in the United States used as a portion of an address.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Address Postal Code' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000214' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21214' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressPostalCode';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'State Abbreviation' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000267' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21267' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStateAbbreviation';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The street number and street name or post office box number of an address.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Address Street Number and Name' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000269' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21269' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'PhysicalAddressStreetNumberAndName';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordEndDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The end date and, optionally, time that a record is active as used to support version control.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordEndDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Record End Date Time' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordEndDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001918' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordEndDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22899' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordEndDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordStartDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The start date and, optionally, time that a record is active as used to support version control.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordStartDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Record Start Date Time' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordStartDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001917' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordStartDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22898' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'RecordStartDateTime';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'State Abbreviation' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000267' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21267' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'State Abbreviation' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000267' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21267' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateANSICode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The American National Standards Institute (ANSI) two-digit code for the state.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateANSICode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'State ANSI Code' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateANSICode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000424' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateANSICode';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21414' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'StateANSICode';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'TelephoneNumber';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The telephone number including the area code, and extension, if applicable.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'TelephoneNumber';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Telephone Number' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'TelephoneNumber';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000279' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'TelephoneNumber';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21279' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'TelephoneNumber';
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'WebSiteAddress';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The Uniform Resource Locator (URL) for the unique address of a Web page.' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'WebSiteAddress';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Web Site Address' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'WebSiteAddress';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000704' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'WebSiteAddress';
GO
EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21300' , @level0type=N'SCHEMA',@level0name=N'RDS', @level1type=N'TABLE',@level1name=N'DimCharterSchoolManagementOrganizations', @level2type=N'COLUMN',@level2name=N'WebSiteAddress';
GO