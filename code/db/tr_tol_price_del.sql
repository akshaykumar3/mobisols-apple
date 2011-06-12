create trg_tol_price_on_del 
before delete on toll_price_all as
start transaction;
update toll_price_history
set end_date := sysdate()-'1'
where 
toll_price_id = new.toll_price_id
and end_date = '1-1-3000'; 
insert into toll_price_history(tph_id,toll_price_id,toll_location_id,vehicle_type_id,direction,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date_end_date)
values(null,new.toll_price_id,new.toll_location_id,new.vehicle_type_id,new.direction,new.cost_price,new.selling_price,new.action,new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,
new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,new.start_date_end_date));
update toll_price_history
set start_date:= sysdate(),end_date := sysdate(),action := 'delete'
where toll_price_id= new.toll_price_id
and end_date = NULL and start_date =NULL;
commit;
