SHOW DATABASES;

CREATE DATABASE sports_analytics;
USE sports_analytics;

CREATE TABLE teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(255) NOT NULL
);

CREATE TABLE players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(255) NOT NULL,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

CREATE TABLE matches (
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

CREATE TABLE IF NOT EXISTS statistics (
    stat_id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    player_id INT,
    runs_scored INT,
    wickets_taken INT,
    catches INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);


SHOW TABLES;

