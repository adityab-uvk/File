USE [SalesOrder]
GO

/****** Object:  Table [dbo].[TB_RepManUpdationAuditLogs]    Script Date: 07/04/2026 11:03:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_RepManUpdationAuditLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](100) NULL,
	[ColumnName] [nvarchar](100) NULL,
	[RecordId] [nvarchar](100) NULL,
	[OldValue] [nvarchar](200) NULL,
	[NewValue] [nvarchar](200) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TB_RepManUpdationAuditLogs] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO

