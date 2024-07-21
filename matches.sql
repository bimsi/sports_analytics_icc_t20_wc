USE sports_analytics;

CREATE TABLE IF NOT EXISTS matches (
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    match_number INT,
    team_1 INT,
    team_2 INT,
    date_of_match DATE,
    venue_stadium VARCHAR(255),
    venue_city VARCHAR(255),
    toss_winner INT,
    toss_decision VARCHAR(10),
    match_result VARCHAR(50),
    winning_team INT,
    man_of_match INT,
    win_by_runs INT,
    win_by_wickets INT,
    match_type VARCHAR(50),
    super_over_match VARCHAR(10),
    FOREIGN KEY (team_1) REFERENCES teams(team_id),
    FOREIGN KEY (team_2) REFERENCES teams(team_id),
    FOREIGN KEY (toss_winner) REFERENCES teams(team_id),
    FOREIGN KEY (winning_team) REFERENCES teams(team_id),
    FOREIGN KEY (man_of_match) REFERENCES players(player_id)
);

SELECT * FROM matches;

-- Insert values into the matches table
INSERT INTO matches (match_number, team_1, team_2, date_of_match, venue_stadium, venue_city, toss_winner, toss_decision, match_result, winning_team, man_of_match, win_by_runs, win_by_wickets, match_type, super_over_match) VALUES
(1, 
 (SELECT team_id FROM teams WHERE team_name = 'England'), 
 (SELECT team_id FROM teams WHERE team_name = 'Australia'), 
 '2024-02-06', 'Stadium 1', 'City 1', 
 (SELECT team_id FROM teams WHERE team_name = 'Australia'), 
 'bowl', 'Played', 
 (SELECT team_id FROM teams WHERE team_name = 'England'), 
 (SELECT player_id FROM players WHERE player_name = 'HC Brook'), 
 0, 7, 'Group Stage', 'No');

INSERT INTO matches (match_number, team_1, team_2, date_of_match, venue_stadium, venue_city, toss_winner, toss_decision, match_result, winning_team, man_of_match, win_by_runs, win_by_wickets, match_type, super_over_match) VALUES
(2, 
 (SELECT team_id FROM teams WHERE team_name = 'Pakistan'), 
 (SELECT team_id FROM teams WHERE team_name = 'Bangladesh'), 
 '2024-02-07', 'Stadium 2', 'City 2', 
 (SELECT team_id FROM teams WHERE team_name = 'Pakistan'), 
 'bat', 'Played', 
 (SELECT team_id FROM teams WHERE team_name = 'Australia'), 
 (SELECT player_id FROM players WHERE player_name = 'MP Stoinis'), 
 20, 0, 'Group Stage', 'No');
 
 INSERT INTO matches (match_number, team_1, team_2, date_of_match, venue_stadium, venue_city, toss_winner, toss_decision, match_result, winning_team, man_of_match, win_by_runs, win_by_wickets, match_type, super_over_match) VALUES
(3, 
 (SELECT team_id FROM teams WHERE team_name = 'Sri Lanka'), 
 (SELECT team_id FROM teams WHERE team_name = 'New Zealand'), 
 '2024-02-08', 'Stadium 3', 'City 3', 
 (SELECT team_id FROM teams WHERE team_name = 'Sri Lanka'), 
 'bowl', 'Played', 
 (SELECT team_id FROM teams WHERE team_name = 'Pakistan'), 
 (SELECT player_id FROM players WHERE player_name = 'Shaheen Shah Afridi'), 
 15, 0, 'Group Stage', 'No');
 
 INSERT INTO matches (match_number, team_1, team_2, date_of_match, venue_stadium, venue_city, toss_winner, toss_decision, match_result, winning_team, man_of_match, win_by_runs, win_by_wickets, match_type, super_over_match) VALUES
(4, 
 (SELECT team_id FROM teams WHERE team_name = 'West Indies'), 
 (SELECT team_id FROM teams WHERE team_name = 'South Africa'), 
 '2024-02-09', 'Stadium 4', 'City 4', 
 (SELECT team_id FROM teams WHERE team_name = 'West Indies'), 
 'bat', 'Played', 
 (SELECT team_id FROM teams WHERE team_name = 'Bangladesh'), 
 (SELECT player_id FROM players WHERE player_name = 'Tanzim Hasan Sakib'), 
 10, 0, 'Group Stage', 'No');
 
 INSERT INTO matches (match_number, team_1, team_2, date_of_match, venue_stadium, venue_city, toss_winner, toss_decision, match_result, winning_team, man_of_match, win_by_runs, win_by_wickets, match_type, super_over_match) VALUES
(5, 
 (SELECT team_id FROM teams WHERE team_name = 'India'), 
 (SELECT team_id FROM teams WHERE team_name = 'Afghanistan'), 
 '2024-02-10', 'Stadium 5', 'City 5', 
 (SELECT team_id FROM teams WHERE team_name = 'India'), 
 'bowl', 'Played', 
 (SELECT team_id FROM teams WHERE team_name = 'Sri Lanka'), 
 (SELECT player_id FROM players WHERE player_name = 'KIC Asalanka'), 
 0, 8, 'Group Stage', 'No');
 
 INSERT INTO matches (match_number, team_1, team_2, date_of_match, venue_stadium, venue_city, toss_winner, toss_decision, match_result, winning_team, man_of_match, win_by_runs, win_by_wickets, match_type, super_over_match) VALUES
(6, 
 (SELECT team_id FROM teams WHERE team_name = 'England'), 
 (SELECT team_id FROM teams WHERE team_name = 'Australia'), 
 '2024-02-11', 'Stadium 6', 'City 6', 
 (SELECT team_id FROM teams WHERE team_name = 'Australia'), 
 'bowl', 'Played', 
 (SELECT team_id FROM teams WHERE team_name = 'New Zealand'), 
 (SELECT player_id FROM players WHERE player_name = 'LH Ferguson'), 
 0, 5, 'Group Stage', 'No');
 
 INSERT INTO matches (match_number, team_1, team_2, date_of_match, venue_stadium, venue_city, toss_winner, toss_decision, match_result, winning_team, man_of_match, win_by_runs, win_by_wickets, match_type, super_over_match) VALUES
(7, 
 (SELECT team_id FROM teams WHERE team_name = 'Pakistan'), 
 (SELECT team_id FROM teams WHERE team_name = 'Bangladesh'), 
 '2024-02-12', 'Stadium 7', 'City 7', 
 (SELECT team_id FROM teams WHERE team_name = 'Bangladesh'), 
 'bat', 'Played', 
 (SELECT team_id FROM teams WHERE team_name = 'West Indies'), 
 (SELECT player_id FROM players WHERE player_name = 'N Pooran'), 
 25, 0, 'Group Stage', 'No');
 
 INSERT INTO matches (match_number, team_1, team_2, date_of_match, venue_stadium, venue_city, toss_winner, toss_decision, match_result, winning_team, man_of_match, win_by_runs, win_by_wickets, match_type, super_over_match) VALUES
(9, 
 (SELECT team_id FROM teams WHERE team_name = 'India'), 
 (SELECT team_id FROM teams WHERE team_name = 'Afghanistan'), 
 '2024-02-15', 'Stadium 10', 'City 10', 
 (SELECT team_id FROM teams WHERE team_name = 'Afghanistan'), 
 'bowl', 'Played', 
 (SELECT team_id FROM teams WHERE team_name = 'India'), 
 (SELECT player_id FROM players WHERE player_name = 'SA Yadav'), 
 0, 7, 'Group Stage', 'No');

SELECT * FROM matches;