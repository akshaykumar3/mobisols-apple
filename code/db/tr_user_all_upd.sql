create trg_user_all_aft_upd after update on user_all as
--update the existing
start transaction;
update user_history
set end_date = SYSDATE()-INTERVAL 1 SECOND
where 
user_id = new.user_id
and end_date ='1-1-3000';

--insert the new
insert into user_history(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.user_id,new.user_name,new.password,new.locale,new.utype_id,new.last_login_time,new.is_active,new.contact_no,new.client_id,'',
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,NULL,NULL);
update user_history
set start_date= sysdate(),end_date := '1-1-3000',action := ‘update’
where user_id= new.user_id
and end_date = NULL and start_date =NULL;
commit;
