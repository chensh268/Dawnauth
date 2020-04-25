USE [DawnAuthority]
GO

/******************************����ɫӳ�����******************************/

----------------------------------------------------------------------------------------------
----��ģ�����ߣ��νܾ���----����ϵ�ѣѣ�6808240��----������ʱ�䣺2013��02��28�� 13:20:14��----
----------------------------------------------------------------------------------------------

/********************���ݱ�DawnAuthUserRole����Ӵ洢����********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleInsert]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleInsert]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@MapId  ϵͳ���
@UserId  �û���� 
@RoleId  ��ɫ��� 
@MapTime  ���ʱ�� 
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleInsert]
	@MapId int output,
	@UserId int,
	@RoleId int,
	@MapTime datetime
AS
	SET NOCOUNT ON
	insert into dawn_auth_user_role
	(
		[user_id],
		[role_id],
		[map_time]
	) 
	values
	(
		@UserId,
		@RoleId,
		@MapTime
	)
	set @MapId=scope_identity()
	return @@error
GO

/********************���ݱ�DawnAuthUserRole���޸Ĵ洢����********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleUpdate]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleUpdate]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@MapId  ϵͳ���
@UserId  �û���� 
@RoleId  ��ɫ��� 
@MapTime  ���ʱ�� 
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleUpdate]
	@MapId int,
	@UserId int,
	@RoleId int,
	@MapTime datetime
AS
 SET NOCOUNT ON
 UPDATE [dawn_auth_user_role] SET
		[user_id] = @UserId,
		[role_id] = @RoleId,
		[map_time] = @MapTime
 WHERE
		[map_id] = @MapId
    return @@error
GO

/********************���ݱ�DawnAuthUserRole��ɾ���洢����********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleDelete]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleDelete]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@MapId  ϵͳ���
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleDelete]
	@MapId int
AS
	SET NOCOUNT ON
	delete from [dawn_auth_user_role] where  [map_id] = @MapId
	return @@error
GO

/********************���ݱ�DawnAuthUserRole������ɾ���洢����********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleDeleteWhere]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleDeleteWhere]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@where ɾ������
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleDeleteWhere]
	@where varchar(8000) = ' 1<>1 '
AS
	SET NOCOUNT ON
    declare @filter varchar(8000)
    set @filter = 'delete from [dbo].[dawn_auth_user_role] where '
    exec ( @filter + @where )
	return @@error
GO

/********************��ѯ���ݱ�DawnAuthUserRole�����м�¼********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleSelectAll]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleSelectAll]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@sortField �����ֶ�
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleSelectAll]
    @sortField varchar(100) = ' [map_id] DESC '
AS
	SET NOCOUNT ON
	declare @filter varchar(8000)
	set @filter = 'SELECT * FROM [dbo].[dawn_auth_user_role] order by '
	exec ( @filter + @sortField  )
	RETURN @@Error
go

/********************��ѯ���ݱ�DawnAuthUserRole��ĳһ����¼********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleSelect]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleSelect]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@MapId  ϵͳ���
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleSelect]
    @MapId int
AS
	SET NOCOUNT ON
	SELECT * FROM [dbo].[dawn_auth_user_role]
		where [map_id] = @MapId
	RETURN @@Error
GO

/********************ͨ��ָ����������ѯ���ݱ�DawnAuthUserRole����¼********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleSelectByParams]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleSelectByParams]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@where ��ѯ����
@sortField �����ֶ�
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleSelectByParams]
    @where varchar(8000) = ' 1=1 ',
    @sortField varchar(100) = ' [map_id] DESC '
AS
	SET NOCOUNT ON
    if @where is null or @where=''    ----û�����ò�ѯ����
	begin
		SET @where = ' 1=1 '
	end
	declare @filter varchar(8000)
	set @filter = 'SELECT * FROM [dbo].[dawn_auth_user_role]	where '
	exec ( @filter + @where + ' ORDER BY ' + @sortField )
	RETURN @@Error
GO

/********************ͨ��ָ����������ѯ���ݱ�DawnAuthUserRole����¼��********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleCountByWhere]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleCountByWhere]
GO
--����˵��
-------------------------------------------------------------
/*
@where ��ѯ����
@recordCount ��¼��
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleCountByWhere]
    @where varchar(8000) = ' 1=1 ',
    @recordCount int output
AS
	SET NOCOUNT ON
	declare @sqlCount nvarchar(4000)
	set @sqlCount= 'SELECT @Count=count(-1) FROM [dbo].[dawn_auth_user_role] WHERE ' + @where
	--print @sqlCount 
	exec sp_executesql @sqlCount,N'@Count int output',@recordCount output  
	RETURN @@Error
GO

/********************ͨ��ָ����������ҳ��ѯ���ݱ�DawnAuthUserRole����¼********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleSelectByPagerParams]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleSelectByPagerParams]
GO
--����˵��
-------------------------------------------------------------
/*
@pageSize ÿҳ��ʾ������
@pageIndex ?��ǰ��ʾ�ڼ�ҳ
@where ��ѯ����
@sortField �����ֶ�
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleSelectByPagerParams]
    @pageSize int = 10,
    @pageIndex int = 1,
    @where varchar(8000) = ' 1=1 ',
    @sortField varchar(100) = ' [map_id] DESC '
AS
	SET NOCOUNT ON
	declare @filter varchar(8000)	
	set @filter = '
		SELECT TOP ' + CONVERT(VARCHAR(8),@pageSize) + ' * FROM [dbo].[dawn_auth_user_role]
		where [map_id] not in (SELECT TOP ' + CONVERT(VARCHAR(8),@pageSize * (@pageIndex - 1)) 
		+ ' [map_id] FROM [dbo].[dawn_auth_user_role]
		WHERE ' + @where + ' ORDER BY ' + @sortField + ' ) AND ' + @where + ' ORDER BY ' + @sortField
	--print @filter 
	exec ( @filter )
	RETURN @@Error
GO

/********************ͨ��ϵͳ��Ų�ѯ���ݱ�DawnAuthUserRole����¼�Ƿ����********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleIsExist]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleIsExist]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@MapId  ϵͳ���
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleIsExist]
    @MapId int
AS
	SET NOCOUNT ON
	SELECT count(-1) FROM [dbo].[dawn_auth_user_role]
		where [map_id] = @MapId
	RETURN @@Error
GO

/********************ͨ��ָ��������ѯ���ݱ�DawnAuthUserRole����¼�Ƿ����********************/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id (N'[dbo].[DawnAuthUserRoleIsExistByWhere]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[DawnAuthUserRoleIsExistByWhere]
GO
-------------------------------------------------------------
--����˵��
-------------------------------------------------------------
/*
@where ��ѯ����
*/	
CREATE PROCEDURE [dbo].[DawnAuthUserRoleIsExistByWhere]
    @where varchar(8000) = ' 1=1 '
AS
	SET NOCOUNT ON
    declare @filter varchar(8000)
    set @filter = 'SELECT count(-1) FROM [dbo].[dawn_auth_user_role]	where '
    exec ( @filter + @where )
    RETURN @@Error
GO



