#Top-Performing Teams in a Season

SELECT 
    t.team_name, 
    COUNT(m.match_id) AS matches_won
FROM 
    matches m
JOIN 
    teams t ON m.winning_team = t.team_id
WHERE 
    m.date_of_match BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY 
    t.team_name
ORDER BY 
    matches_won DESC;
    
    
#Top 5 Players with the Most Goals or Points per Game    
    SELECT 
    p.player_name, 
    AVG(s.runs_scored) AS average_scores_per_game
FROM 
    statistics s
JOIN 
    players p ON s.player_id = p.player_id
GROUP BY 
    p.player_name
ORDER BY 
    average_scores_per_game DESC
LIMIT 5;

#Trend of a Team's Performance Over Multiple Seasons
SELECT 
    t.team_name, 
    YEAR(m.date_of_match) AS season, 
    COUNT(m.match_id) AS matches_won
FROM 
    matches m
JOIN 
    teams t ON m.winning_team = t.team_id
GROUP BY 
    t.team_name, 
    YEAR(m.date_of_match)
ORDER BY 
    t.team_name, 
    season;

