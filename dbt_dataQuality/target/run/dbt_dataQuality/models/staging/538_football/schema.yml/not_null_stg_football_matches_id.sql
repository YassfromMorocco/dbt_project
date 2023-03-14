select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from `dbt-for-bigquery-377112`.`staging`.`stg_football_matches`
where id is null



      
    ) dbt_internal_test