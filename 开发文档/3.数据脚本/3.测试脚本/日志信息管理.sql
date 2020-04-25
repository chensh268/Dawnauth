USE [DawnAuthority]
GO

/*----- ϵͳ��־��Ϣ��
--------------------------------------------------*/
-- truncate table dawn_auth_logs
-- select * from dawn_auth_logs order by log_rating desc

declare @start int
declare @recordCount int
declare @rating int
set @start = 0
set @recordCount = 1000
set @rating = 1
while (@start < @recordCount)
begin
	insert into dawn_auth_logs
	(
		log_time, log_rating, log_table, log_action, log_memo, log_uid, log_uname
	)
	values
	(
		getdate(), @rating, 'dawn_auth_user', '�� AAA �ǲ��Բ��Բ��Բ��Բ��Զ���������', '����Ա��Ϣ����', 1, 'dzssystem'
	),
	(
		getdate(), @rating, 'dawn_auth_user', '�� AAA �ǲ��Բ��Բ��Բ��Բ��Զ���������', '����Ա��Ϣ����', 2, 'dzsyewu'
	),
	(
		getdate(), @rating, 'dawn_auth_user', '�� AAA �ǲ��Բ��Բ��Բ��Բ��Զ���������', '����Ա��Ϣ����', 3, 'dawnxz'
	),
	(
		getdate(), @rating, 'dawn_auth_user_pic', '�� BBB �ǲ��Բ��Բ��Բ��Բ��Զ���������', '����Ա��Ƭ����', 1, 'dzssystem'
	),
	(
		getdate(), @rating, 'dawn_auth_user_pic', '�� BBB �ǲ��Բ��Բ��Բ��Բ��Զ���������', '����Ա��Ƭ����', 2, 'dzsyewu'
	),
	(
		getdate(), @rating, 'dawn_auth_user_pic', '�� BBB �ǲ��Բ��Բ��Բ��Բ��Զ���������', '����Ա��Ƭ����', 3, 'dawnxz'
	),
	(
		getdate(), @rating, 'dawn_auth_user_login', '�� CCC �ǲ��Բ��Բ��Բ��Բ��Զ���������', '��¼��־����', 1, 'dzssystem'
	),
	(
		getdate(), @rating, 'dawn_auth_user_login', '�� CCC �ǲ��Բ��Բ��Բ��Բ��Զ���������', '��¼��־����', 2, 'dzsyewu'
	),
	(
		getdate(), @rating, 'dawn_auth_user_login', '�� CCC �ǲ��Բ��Բ��Բ��Բ��Զ���������', '��¼��־����', 3, 'dawnxz'
	)
	set @start = @start + 1
	set @rating = @rating + 1
	if @rating > 255 set @rating = 1
end
