USE [DawnAuthority]
GO

/****** Object:  Table [dbo].[dawn_auth_user]    Script Date: 2013-11-22 18:46:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dawn_auth_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[dpt_id] [int] NOT NULL,
	[user_time] [datetime] NOT NULL,
	[user_status] [tinyint] NOT NULL,
	[user_grade] [tinyint] NOT NULL,
	[user_surname] [nvarchar](20) NOT NULL,
	[user_name] [varchar](16) NOT NULL,
	[user_pwd] [varchar](32) NOT NULL,
	[user_mobile] [varchar](15) NOT NULL,
	[user_email] [varchar](50) NOT NULL,
	[user_desc] [nvarchar](300) NULL,
	[user_field_one] [int] NULL,
	[user_field_two] [int] NULL,
	[user_field_three] [tinyint] NULL,
	[user_field_four] [tinyint] NULL,
	[user_field_five] [varchar](500) NULL,
	[user_field_six] [varchar](500) NULL,
 CONSTRAINT [PK_dawn_auth_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dawn_auth_user] ADD  CONSTRAINT [DF_dawn_auth_user_user_time]  DEFAULT (getdate()) FOR [user_time]
GO

ALTER TABLE [dbo].[dawn_auth_user] ADD  CONSTRAINT [DF_dawn_auth_user_user_grade]  DEFAULT ((1)) FOR [user_grade]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ű��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'dpt_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_time'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˺�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_status'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_grade'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_surname'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˺�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˺�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_pwd'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_mobile'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_email'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_desc'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ�һ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_field_one'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶζ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_field_two'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_field_three'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_field_four'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_field_five'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user', @level2type=N'COLUMN',@level2name=N'user_field_six'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ա��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user'
GO


