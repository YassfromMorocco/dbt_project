
    
    

with dbt_test__target as (

  select prev_rank as unique_field
  from `dbt-for-bigquery-377112`.`staging`.`stg_football_rankings`
  where prev_rank is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


