# Principles of Database Systems Project

This is a repository for the course project of Principles of Database Systems at New York University by Qifan Zhang, Zhen Wang, and Haoran Wang.

## Part2 Objectives:
- [x] Customer register, login, logout
- [ ] Remeber me
- [ ] Customer modify information
- [ ] Select cars based on class and office
- [ ] Start a rental service
- [ ] End a rental service
- [ ] Choose payment method
- [ ] Show invoice
- [ ] Docker

## Part1 Objectives:
- [X] Single PDF document with following contents:
- [X] Cover page with clearly stated course, section, submission date, team 
  members’ names and ids.
- [X] A properly documented description and justification of your entire 
  design (no more than half page), assumptions that you have made other 
  than stated business rules, if any.
- [X] Logical Model of database design
- [X] Relational Model of database design
- [X] List of tables and record counts of each table (Number of records should 
  be **10 to 25** records in each table. Child tables should have more records 
  than parent tables)
- [X] **DDL** code (Table creation code along with PK, FK, and Check constraints)
- [X] **DML** code (insert statement for all tables)
- [X] Database **trigger** code that used for **generating invoice**
- [X] Data Dictionary results of following queries:

```sql
-- List of Tables 
select table_name 
from user_tables 
where table_name like 'HQZ%';

-- List of Table Columns 
select table_name, column_name,column_id 
from user_tab_columns 
where table_name like 'HQZ%' 
order by table_name,column_id;

-- List of Table Column Constraints 
select table_name,constraint_name,constraint_type,search_condition,index_name,r_constraint_name,delete_rule 
from user_constraints 
where table_name like 'HQZ%' 
order by table_name;

-- List of Table Column Comments 
select table_name,column_name,comments 
from user_col_comments 
where table_name like 'HQZ%' 
order by table_name;
```



