USE [DawnAuthority]
GO

/*----- ����Ա��Ƭ�����
--------------------------------------------------*/
-- truncate table dawn_auth_user_pic
-- select * from dawn_auth_user_pic

insert into dawn_auth_user_pic
(
	user_id, pic_time, pic_photo
)
values
(
	1, getdate(), ''
)
