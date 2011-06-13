create trg_user_payment_bfr_del 
before delete on user_payment_detail_all as
update user_payment_detail_history
set end_date := GetEndDate()
where 
upd_id = old.upd_id
and end_date = GetInfFuture(); 
insert into user_payment_detail_history(updh_id,upd_id,user_id,cc_type_id,cc_ac_name,cc_number,cc_exp_month,cc_exp_year,cc_cvv,bank_routing,bank_account,address1,address2,city,
state,country,zip,pay_prefer,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.upd_id,new.user_id,new.cc_type_id,new.cc_ac_name,new.cc_number,new.cc_exp_month,new.cc_exp_year,new.cc_cvv,new.bank_routing,new.bank_account,new.address1,new.address2,
new.city,new.state,new.country,new.zip,new.pay_prefer,'delete',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,
new.last_modified_on,new.last_modified_by,GetStartDate(),GetStartDate());
-----------------------------------------------------------------------------

create trg_user_payment_aft_ins 
after insert on user_payment_detail_all as
insert into user_payment_detail_history(updh_id,upd_id,user_id,cc_type_id,cc_ac_name,cc_number,cc_exp_month,cc_exp_year,cc_cvv,bank_routing,bank_account,address1,address2,city,
state,country,zip,pay_prefer,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.upd_id,new.user_id,new.cc_type_id,new.cc_ac_name,new.cc_number,new.cc_exp_month,new.cc_exp_year,new.cc_cvv,new.bank_routing,new.bank_account,new.address1,new.address2,
new.city,new.state,new.country,new.zip,new.pay_prefer,'insert',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,
new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
-----------------------------------------------------------------------------

create trg_user_payment_aft_upd 
after update on user_payment_detail_all as
--update the existing
update user_payment_detail_history
set end_date := GetEndDate() 
where 
upd_id = new.upd_id
and end_date = GetInfFuture();

--insert the new
insert into user_payment_detail_history(updh_id,upd_id,user_id,cc_type_id,cc_ac_name,cc_number,cc_exp_month,cc_exp_year,cc_cvv,bank_routing,bank_account,address1,address2,city,
state,country,zip,pay_prefer,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.upd_id,new.user_id,new.cc_type_id,new.cc_ac_name,new.cc_number,new.cc_exp_month,new.cc_exp_year,new.cc_cvv,new.bank_routing,new.bank_account,new.address1,new.address2,
new.city,new.state,new.country,new.zip,new.pay_prefer,'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,
new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
----------------------------------------------------------------------------

create trg_tol_loc_bfr_del 
before delete on toll_location_all as
update toll_location_history
set end_date := GetEndDate()
where 
toll_location_id = old.toll_location_id
and end_date = GetInfFuture(); 
insert into toll_location_history(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flga5,created_on,last_modified_on,last_modified_by,start_date,end_date,action) 
values(null,new.tlh_id,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,new.zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetStartDate(),'delete');
---------------------------------------------------------------------------

create trg_tol_loc_aft_ins 
after insert on toll_location_all  as
insert into toll_location_history(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flga5,created_on,last_modified_on,last_modified_by,start_date,end_date,action) 
values(null,new.tlh_id,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert');
---------------------------------------------------------------------------

create trg_tol_loc_aft_upd 
after update on toll_locations_all as
--update the existing

update toll_location_history
set end_date := GetEndDate()
where 
toll_location_id = new.toll_location_id
and end_date = GetInfFuture();

--insert the new
insert into toll_location_history(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flga5,created_on,last_modified_on,last_modified_by,start_date,end_date,action) 
values(null,new.tlh_id,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,new.zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'update');

--------------------------------------------------------------------------
create trg_tol_price_bfr_del 
before delete on toll_price_all as
update toll_price_history
set end_date := GetEndDate()
where 
toll_price_id = old.toll_price_id
and end_date = GetInfFuture(); 
insert into toll_price_history(tph_id,toll_price_id,toll_location_id,vehicle_type_id,direction,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date)
values(null,new.toll_price_id,new.toll_location_id,new.vehicle_type_id,new.direction,new.cost_price,new.selling_price,'delete',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,
new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetStartDate());

------------------------------------------------------------------------------
create trg_toll_price_all_aft_ins 
after insert on toll_price_all  as
insert into toll_price_history(tph_id,toll_price_id,toll_location_id,vehicle_type_id,direction,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date)
values(null,new.toll_price_id,new.toll_location_id,new.vehicle_type_id,new.direction,new.cost_price,new.selling_price,'insert',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,
new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());

------------------------------------------------------------------------------
create trg_toll_price_aft_upd 
after update on toll_price_all as
--update the existing
update toll_price_history
set end_date := GetEndDate()
where 
toll_price_id = new.toll_price_id
and end_date = GetInfFuture();

--insert the new
insert into toll_price_history(tph_id,toll_price_id,toll_location_id,vehicle_type_id,direction,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date)
values(null,new.toll_price_id,new.toll_location_id,new.vehicle_type_id,new.direction,new.cost_price,new.selling_price,'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,
new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
-------------------------------------------------------------------------------
create trg_user_all_bfr_del 
before delete on user_all as
update user_history
set end_date = GetEndDate()
where 
user_id = old.user_id
and end_date = GetInfFuture(); 
insert into user_history(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.user_id,new.user_name,new.password,new.locale,new.utype_id,new.last_login_time,new.is_active,new.contact_no,new.client_id,'delete',
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetStartDate());
------------------------------------------------------------------------------
create trg_user_all_aft_ins 
after insert on user_all  as
insert into user_history(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.user_id,new.user_name,new.password,new.locale,new.utype_id,new.last_login_time,new.is_active,new.contact_no,new.client_id,'insert',
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
------------------------------------------------------------------------------
create trg_user_all_aft_upd 
after update on user_all as
--update the existing
update user_history
set end_date = GetEndDate()
where 
user_id = new.user_id
and end_date =GetInfFuture();

--insert the new
insert into user_history(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.user_id,new.user_name,new.password,new.locale,new.utype_id,new.last_login_time,new.is_active,new.contact_no,new.client_id,'update',
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
-------------------------------------------------------------------------------
create trg_user_vehicle_bfr_del 
before delete on user_vehicle_detail_all as
update user_vehicle_history
set end_date := GetEndDate()
where 
user_vehicle_id = old.user_vehicle_id
and end_date = GetInfFuture(); 
insert into user_vehicle_history(uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action) 
values(null,new.uvh_id,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetStartDate(),'delete'));
------------------------------------------------------------------------------
create trg_user_vehicle_aft_ins 
after insert on user_vehicle_all  as
insert into user_vehicle_history (uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action) 
values(null,new.uvh_id,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert'));
-----------------------------------------------------------------------------
create trg_user_vehicle_aft_upd 
after update on user_vehicle_all as
--update the existing
update user_vehicle_history
set end_date := GetEndDate()
where 
user_vehicle_id = new.user_vehicle_id
and end_date = GetInfFuture();

--insert the new
insert into user_vehicle_history(uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action) 
values(null,new.uvh_id,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'update'));
-------------------------------------------------------------------------------
create trg_bal_log_bfr_del 
before delete on user_balance_all as
insert into user_balance_log_all (ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on)
values(null,new.ubal_id,new.balance-old.balance,sysdate(),'delete',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,
new.last_modified_by,new.last_modified_on,new.created_on);
------------------------------------------------------------------------------
create trg_bal_log_aft_ins 
after insert on user_balance_all as
insert into user_balance_log_all(ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on)
values(null,new.ubal_id,0,sysdate(),'new account created',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,
new.last_modified_by,new.last_modified_on,new.created_on);
------------------------------------------------------------------------------
create trg_bal_log_aft_upd 
after update on user_balance_all as
insert into user_balance_log_all (ublog_id,ubal_id,delta,ve_timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on)
values(null,new.ubal_id,(new.balance-old.balance),sysdate(),'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,
new.last_modified_by,new.last_modified_on,new.created_on);







