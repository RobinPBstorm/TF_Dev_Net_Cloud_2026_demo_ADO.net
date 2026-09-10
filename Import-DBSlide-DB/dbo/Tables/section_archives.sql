CREATE TABLE [dbo].[section_archives] (
    [section_id]   INT          NOT NULL,
    [section_name] VARCHAR (50) NULL,
    [delegate_id]  INT          NULL,
    CONSTRAINT [pk_section_archives] PRIMARY KEY CLUSTERED ([section_id] ASC)
);

