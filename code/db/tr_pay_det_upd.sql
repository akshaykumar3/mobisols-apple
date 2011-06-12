create trg_user_payment_aft_upd after update on user_payment_detail_all as
--update the existting
start transaction;
update user_payment_detail_history
set end_date := sysdate()-1 
where 
upd_id = new.upd_id
and end_date = '1-1-3000';

--insert the new
insert into user_payment_detail_history(updh_id,upd_id,user_id,cc_type_id,cc_ac_name,cc_number,cc_exp_month,cc_exp_year,cc_cvv,bank_routing,bank_account,address1,address2,city,
state,country,zip,pay_prefer,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.upd_id,new.user_id,new.cc_type_id,new.cc_ac_name,new.cc_number,new.cc_exp_month,new.cc_exp_year,new.cc_cvv,new.bank_routing,new.bank_account,new.address1,new.address2,
new.city,new.state,new.country,new.zip,new.pay_prefer,new.action,new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,
new.last_modified_on,new.last_modified_by,NULL,NULL);
update user_payment_detail_history
set start_date := sysdate(),end_date := '1-1-3000',action := ‘update’
where upd_id= new.upd_id
and end_date = NULL and start_date = NULL;
commit;
