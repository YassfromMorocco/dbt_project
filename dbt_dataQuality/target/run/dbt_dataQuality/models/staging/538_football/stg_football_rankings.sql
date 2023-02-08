

  create or replace view `dbt-for-bigquery-377112`.`staging`.`stg_football_rankings`
  OPTIONS()
  as SELECT *

FROM `dbt-for-bigquery-377112`.`538_football`.`raw_football_rankings`;

