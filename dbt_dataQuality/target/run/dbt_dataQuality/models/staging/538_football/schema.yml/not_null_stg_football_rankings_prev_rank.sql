select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select prev_rank
from `dbt-for-bigquery-377112`.`staging`.`stg_football_rankings`
where prev_rank is null



      
    ) dbt_internal_test