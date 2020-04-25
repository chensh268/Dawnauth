USE [DawnAuthority]
GO

/****** Object:  Table [dbo].[dawn_auth_status]    Script Date: 2013-04-05 23:36:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dawn_auth_status](
	[stat_id] [int] IDENTITY(1,1) NOT NULL,
	[mdl_id] [int] NOT NULL,
	[stat_time] [datetime] NOT NULL,
	[stat_name] [nvarchar](50) NOT NULL,
	[stat_code] [varchar](50) NOT NULL,
	[stat_mark] [int] NOT NULL,
	[stat_desc] [nvarchar](300) NULL,
	[stat_field_one] [int] NULL,
	[stat_field_two] [tinyint] NULL,
	[stat_field_three] [varchar](50) NULL,
 CONSTRAINT [PK_dawn_auth_status] PRIMARY KEY CLUSTERED 
(
	[stat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dawn_auth_status] ADD  CONSTRAINT [DF_dawn_auth_status_stat_time]  DEFAULT (getdate()) FOR [stat_time]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ����Ϣ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'mdl_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_time'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬��ʶ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_mark'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_desc'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ�һ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_field_one'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶζ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_field_two'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status', @level2type=N'COLUMN',@level2name=N'stat_field_three'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬���ƹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_status'
GO

