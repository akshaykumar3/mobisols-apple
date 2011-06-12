create trg_tol_loc_aft_upd after update on toll_locations_all as
--update the existing
start transaction;
update toll_location_history
set end_date := sysdate()-'1'
where 
toll_location_id = new.toll_location_id
and end_date = '1-1-3000';

--insert the new
insert into toll_location_history(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flga5,created_on,last_modified_on,last_modified_by,start_date,end_date,action) 
values(null,new.tlh_id,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,new.start_date,new.end_date,new.action));
update toll_location_history
set start_date:= sysdate(),end_date := '1-1-3000',action := 'update'
where toll_location_id= new.toll_location_id
and end_date = NULL and start_date =NULL;
commit;
