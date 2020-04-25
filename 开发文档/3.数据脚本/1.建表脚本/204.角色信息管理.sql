USE [DawnAuthority]
GO

/****** Object:  Table [dbo].[dawn_auth_role]    Script Date: 2013-02-10 22:57:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dawn_auth_role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_time] [datetime] NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
	[role_code] [varchar](50) NOT NULL,
	[role_authority] [varchar](max) NULL,
	[role_desc] [nvarchar](300) NULL,
	[role_field_one] [int] NULL,
	[role_field_two] [tinyint] NULL,
	[role_field_three] [varchar](50) NULL,
 CONSTRAINT [PK_dawn_auth_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dawn_auth_role] ADD  CONSTRAINT [DF_dawn_auth_role_role_time]  DEFAULT (getdate()) FOR [role_time]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_time'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫȨ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_authority'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_desc'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ�һ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_field_one'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶζ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_field_two'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role', @level2type=N'COLUMN',@level2name=N'role_field_three'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_role'
GO

