{% macro update_source_id() -%}

update dbt_test SET source_id =  case when source_id IS NULL then 101  else source_id  end;

--update dbt_test SET src_id = {{ src_id }} WHERE src_id IS NULL;
{%- endmacro %}

-- {{ config( materialized='incremental', unique_key='src_id' ) }}

-- with test_data as (
--     select *
--     from {{ ref('dbt_test') }}
-- )
-- select c.id,
--     CASE
--         WHEN c.src_id IS NULL THEN '8'
--     END as src_id
-- from test_data c

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