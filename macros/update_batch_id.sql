
{% macro update_batch_id() -%}

 update dbt_test SET batch_id = case when batch_id IS NULL then concat(101,'_',current_timestamp) else batch_id end ;

{% endmacro %}