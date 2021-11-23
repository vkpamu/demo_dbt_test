{{ config(materialized='incremental') }}
-- {{ config(materialized='table') }}
with source_data as (
	    SELECT *
        from {{this}}
 )
 select * from source_data


-- with source_data as (

-- 	    select 1 as id, NULL as src_id
-- 	    union all
-- 	    select 2 as id, NULL as src_id
--      union all
--      select 3 as id , NULL as src_id
 
-- )
-- select *
-- from source_data
-- where id is not null


-- select *, 
-- null as source_id,
-- null as batch_id
-- from dbt_test


-- select *, 
-- null as source_id 
-- from dbt_test


-- select id,
--     case 
--         when src_id IS NULL then 8
--         else src_id    
--     end as src_id,
--     uuid_string() AS batch_id 
-- from dbt_test

/* select id,
    data,
    case 
        when source_id IS NULL then 8
    end as source_id,
    case 
        when batch_id IS NULL then CONCAT(source_id, '_', CURRENT_TIMESTAMP as timestamp)
        else batch_id
    end as batch_id
from dbt_test */


-- select id,
--     data,
--     null as source_id,
--     null as batch_id,
--     case 
--         when source_id IS NULL then 101
--         else source_id
--     end as source_id,
--     case 
--         when batch_id IS NULL then concat(101,'_',current_timestamp)
--         else batch_id
--     end as batch_id
-- from dbt_test

-- with test_data as (
--     select *,
--     null as source_id,
--     null as batch_id
--     from dbt_test
-- )
-- select c.*,
--     CASE
--         WHEN c.source_id IS NULL THEN '8'
--         ELSE c.source_id
--     END as source_id,
--         case 
--         when batch_id IS NULL then concat(101,'_',current_timestamp)
--         else batch_id
--     end as batch_id
-- from test_data c


/* 
when i run the update statment in the model script then
it will throw below error
syntax error line 39 at position 0 unexpected 'update'
update dbt_test SET src_id = 10 WHERE src_id = 8
*/
