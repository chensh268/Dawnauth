USE [DawnAuthority]
GO

/****** Object:  Table [dbo].[dawn_auth_function]    Script Date: 2013-04-05 23:37:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dawn_auth_function](
	[fun_id] [int] IDENTITY(1,1) NOT NULL,
	[mdl_id] [int] NOT NULL,
	[fun_time] [datetime] NOT NULL,
	[fun_name] [nvarchar](50) NOT NULL,
	[fun_code] [varchar](50) NOT NULL,
	[fun_ident] [int] NULL,
	[fun_mark] [int] NOT NULL,
	[fun_parent_mark] [int] NOT NULL,
	[fun_desc] [nvarchar](300) NULL,
 CONSTRAINT [PK_dawn_auth_function] PRIMARY KEY CLUSTERED 
(
	[fun_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dawn_auth_function] ADD  CONSTRAINT [DF_dawn_auth_function_fun_time]  DEFAULT (getdate()) FOR [fun_time]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'fun_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ����Ϣ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'mdl_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'fun_time'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'fun_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'fun_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'fun_ident'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܱ�ʶ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'fun_mark'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڲ���ʶ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'fun_parent_mark'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function', @level2type=N'COLUMN',@level2name=N'fun_desc'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ�鹦�ܹ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dawn_auth_function'
GO

