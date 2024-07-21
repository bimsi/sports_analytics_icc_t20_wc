USE sports_analytics;

SELECT * FROM matches;

-- Display man_of_the_match, match_id from matches table with player_id, player_name from players table
SELECT 
    matches.man_of_match AS player_id,
    players.player_name,
    matches.match_id
FROM 
    matches
JOIN 
    players 
ON 
    matches.man_of_match = players.player_id;


INSERT INTO statistics (match_id, player_id, runs_scored, wickets_taken, catches) VALUES
(18, (SELECT player_id FROM players WHERE player_name = 'HC Brook' LIMIT 1), 50, 0, 2),
(19, (SELECT player_id FROM players WHERE player_name = 'MP Stoinis' LIMIT 1), 30, 1, 1),
(20, (SELECT player_id FROM players WHERE player_name = 'Shaheen Shah Afridi' LIMIT 1), 20, 3, 0),
(21, (SELECT player_id FROM players WHERE player_name = 'Tanzim Hasan Sakib' LIMIT 1), 10, 2, 1),
(22, (SELECT player_id FROM players WHERE player_name = 'KIC Asalanka' LIMIT 1), 40, 0, 1),
(23, (SELECT player_id FROM players WHERE player_name = 'LH Ferguson' LIMIT 1), 25, 2, 2),
(24, (SELECT player_id FROM players WHERE player_name = 'N Pooran' LIMIT 1), 35, 0, 3),
(25, (SELECT player_id FROM players WHERE player_name = 'SA Yadav' LIMIT 1), 55, 0, 1);


SELECT * FROM statistics;