CREATE TABLE [dbo].[Test] (
    [Id]     INT            IDENTITY (1, 1) NOT NULL,
    [FROM]   NVARCHAR (MAX) NOT NULL,
    [SELECT] NVARCHAR (50)  NULL,
    [Prix]   MONEY          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [ck_prix] CHECK ([Prix]>=(0))
);

