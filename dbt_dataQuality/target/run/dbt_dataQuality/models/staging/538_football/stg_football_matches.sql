
  
    

    create or replace table `dbt-for-bigquery-377112`.`538_football`.`stg_football_matches`
    
    
    OPTIONS()
    as (
      SELECT *

FROM `dbt-for-bigquery-377112`.`538_football`.`raw_football_matches`
    );
  