create <trg_table_name_aft_ins> after insert on table_name  as
start transaction;
insert into table_name_history (columnname) 
 values(null,new.columnname);
 update table_name_history 
 set start_date := sysdate, end_date :=’1-1-3000’,action := ’insert’;
 commit; 

