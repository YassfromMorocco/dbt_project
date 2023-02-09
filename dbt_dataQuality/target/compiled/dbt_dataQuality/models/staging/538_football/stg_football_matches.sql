WITH matches AS(

    SELECT *

    FROM `dbt-for-bigquery-377112`.`538_football`.`raw_football_matches`
    
)

SELECT *, CONCAT(team1, '_', team2) as id from matches