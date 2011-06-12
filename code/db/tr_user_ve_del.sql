create trg_user_vehicle_on_del 
before delete on user_vehicle_detail_all as
start transaction;
update user_vehicle_history
set end_date := sysdate()-'1'
where 
user_vehicle_id = new.user_vehicle_id
and end_date = '1-1-3000'; 
insert into user_vehicle_history(uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action) 
values(null,new.uvh_id,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,NULL,NULL,NULL));
update user_vehicle_history
set start_date:= sysdate(),end_date := sysdate(),action := 'delete'
where user_vehicle_id= new.user_vehicle_id
and end_date = NULL and start_date =NULL;
commit;
