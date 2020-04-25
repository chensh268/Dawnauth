USE [DawnAuthority]
GO

/****** Object:  Table [dbo].[dawn_auth_department]    Script Date: 2013-11-22 18:46:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dawn_auth_department](
	[dpt_id] [int] NOT NULL,
	[dpt_name] [nvarchar](50) NOT NULL,
	[dpt_father] [int] NOT NULL,
	[dpt_path] [varchar](max) NOT NULL,
	[dpt_code] [varchar](50) NULL,
	[dpt_ident] [int] NULL,
	[dpt_rank] [int] NULL,
	[dpt_click] [int] NULL,
	[dpt_counts] [int] NULL,
	[dpt_desc] [nvarchar](300) NULL,
	[dpt_time] [datetime] NOT NULL,
 CONSTRAINT [PK_dawn_auth_department] PRIMARY KEY CLUSTERED 
(
	[dpt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dawn_auth_department] ADD  CONSTRAINT [DF_dawn_auth_department_dpt_rank]  DEFAULT ((255)) FOR [dpt_rank]
GO

ALTER TABLE [dbo].[dawn_auth_department] ADD  CONSTRAINT [DF_dawn_auth_department_dpt_click]  DEFAULT ((0)) FOR [dpt_click]
GO

ALTER TABLE [dbo].[dawn_auth_department] ADD  CONSTRAINT [DF_dawn_auth_department_dpt_counts]  DEFAULT ((0)) FOR [dpt_counts]
GO

ALTER TABLE [dbo].[dawn_auth_department] ADD  CONSTRAINT [DF_dawn_auth_department_dpt_time]  DEFAULT (getdate()) FOR [dpt_time]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ű�ʶ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_father'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_path'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ű���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_ident'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_rank'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ŵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_click'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ͳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_counts'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_desc'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department', @level2type=N'COLUMN',@level2name=N'dpt_time'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ���Ź���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_department'
GO


