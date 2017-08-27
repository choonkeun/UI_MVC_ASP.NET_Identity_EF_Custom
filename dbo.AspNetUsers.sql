
DROP TABLE [dbo].[AspNetUsers] 
GO

CREATE TABLE [dbo].[AspNetUsers] (
    [Id]                   BIGINT         IDENTITY (1, 1) NOT NULL,
    [Email]                NVARCHAR (256) NULL,
    [PasswordHash]         NVARCHAR (MAX) NULL,
	[UserRole]             SMALLINT       NULL,
    [UserName]             NVARCHAR (256) NULL,
    [Gender]               SMALLINT       NOT NULL DEFAULT 0,
    [PhoneNumber]          NVARCHAR (MAX) NULL,
    [PhoneNumberConfirmed] BIT            NOT NULL,
    [SecondaryPhone]       NVARCHAR (MAX) NULL,
    [Address1]             NVARCHAR (MAX) NULL,
    [Address2]             NVARCHAR (MAX) NULL,
    [City]                 NVARCHAR (MAX) NULL,
    [Region]               NVARCHAR (MAX) NULL,
    [PostalCode]           NVARCHAR (MAX) NULL,
    [Country]              NVARCHAR (MAX) NULL,
    [EmailConfirmed]       BIT            NOT NULL,
    [SecurityStamp]        NVARCHAR (MAX) NULL,
    [TwoFactorEnabled]     BIT            NOT NULL,
    [LockoutEndDateUtc]    DATETIME       NULL,
    [LockoutEnabled]       BIT            NOT NULL,
    [AccessFailedCount]    INT            NOT NULL,
    [RegisterDate]         DATETIME       NULL, 
    [LastLoginDate]        DATETIME       NULL, 
    CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
    ON [dbo].[AspNetUsers]([UserName] ASC);

