USE [DawnAuthority]
GO

/*----- ����Ա��Ϣ�����
--------------------------------------------------*/
-- truncate table dawn_auth_user
-- select * from dawn_auth_user
-- 52CB4D6B43FA16991CFBF704ADC22809
-- dawn123456

insert into dawn_auth_user
(
	dpt_id, user_status, user_grade, user_surname, user_name, user_pwd, user_mobile, user_email, user_desc
)
values
--(
--	1, 1, 1, 'ҵ�����Ա', 'dzsyewu', '52CB4D6B43FA16991CFBF704ADC22809', '13800000000', 'dzsyewu@dzs.org.cn' , 'ҵ�����ϵͳרҵ��Ա[��ɾ��]'
--),
--(
--	1, 1, 2, 'ϵͳ����Ա', 'dzssystem', '52CB4D6B43FA16991CFBF704ADC22809', '13800000000', 'dzssystem@dzs.org.cn' , 'Ȩ�޹���ϵͳרҵ��Ա[��ɾ��]'
--),
(
	1, 1, 3, '����С��', 'dawnxz', '52CB4D6B43FA16991CFBF704ADC22809', '13811011045', 'roach888@126.com' , '������Ա����ר���˺�[��ɾ��] '
)
