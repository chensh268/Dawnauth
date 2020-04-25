USE [DawnAuthority]
GO

/****** Object:  Table [dbo].[dawn_auth_user_role]    Script Date: 2013-02-10 23:09:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dawn_auth_user_role](
	[map_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
	[map_time] [datetime] NOT NULL,
 CONSTRAINT [PK_dawn_auth_user_role] PRIMARY KEY CLUSTERED 
(
	[map_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[dawn_auth_user_role] ADD  CONSTRAINT [DF_dawn_auth_user_role_map_time]  DEFAULT (getdate()) FOR [map_time]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user_role', @level2type=N'COLUMN',@level2name=N'map_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user_role', @level2type=N'COLUMN',@level2name=N'user_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user_role', @level2type=N'COLUMN',@level2name=N'role_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user_role', @level2type=N'COLUMN',@level2name=N'map_time'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫӳ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_user_role'
GO

