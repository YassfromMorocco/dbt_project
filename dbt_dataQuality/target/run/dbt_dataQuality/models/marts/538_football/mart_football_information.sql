
  
    

    create or replace table `dbt-for-bigquery-377112`.`538_football`.`mart_football_information`
    
    
    OPTIONS()
    as (
      WITH
  qryMatches AS (
    SELECT *
    FROM `dbt-for-bigquery-377112`.`538_football`.`stg_football_matches`
    WHERE league = 'Barclays Premier League'
    ),
  qryRankings AS (
    SELECT *
    FROM `dbt-for-bigquery-377112`.`538_football`.`stg_football_rankings`
    WHERE league = 'Barclays Premier League'
  ),

  qryFinal AS (
    SELECT
      qryMatches.season,
      qryMatches.date,
      qryMatches.league,
      qryMatches.team1,
      qryMatches.team2,
      team_one.rank AS team1_rank,
      team_two.rank AS team2_rank
    FROM qryMatches 
    JOIN
      qryRankings AS team_one ON
        (qryMatches.team1 = team_one.name) 
    JOIN
      qryRankings AS team_two ON
        (qryMatches.team2 = team_two.name)
  )

SELECT *
FROM qryFinal
    );
  