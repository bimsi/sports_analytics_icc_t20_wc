USE sports_analytics;

-- Insert Man_of_match values into the players table
INSERT INTO players (player_name, team_id) VALUES
('HC Brook', (SELECT team_id FROM teams WHERE team_name = 'England')),
('MP Stoinis', (SELECT team_id FROM teams WHERE team_name = 'Australia')),
('Shaheen Shah Afridi', (SELECT team_id FROM teams WHERE team_name = 'Pakistan')),
('Tanzim Hasan Sakib', (SELECT team_id FROM teams WHERE team_name = 'Bangladesh')),
('KIC Asalanka', (SELECT team_id FROM teams WHERE team_name = 'Sri Lanka')),
('LH Ferguson', (SELECT team_id FROM teams WHERE team_name = 'New Zealand')),
('N Pooran', (SELECT team_id FROM teams WHERE team_name = 'West Indies')),
('Q de Kock', (SELECT team_id FROM teams WHERE team_name = 'South Africa')),
('PD Salt', (SELECT team_id FROM teams WHERE team_name = 'England')),
('SA Yadav', (SELECT team_id FROM teams WHERE team_name = 'India')),
('PJ Cummins', (SELECT team_id FROM teams WHERE team_name = 'Australia')),
('Q de Kock', (SELECT team_id FROM teams WHERE team_name = 'South Africa')),
('RL Chase', (SELECT team_id FROM teams WHERE team_name = 'West Indies')),
('HH Pandya', (SELECT team_id FROM teams WHERE team_name = 'India')),
('Gulbadin Naib', (SELECT team_id FROM teams WHERE team_name = 'Afghanistan')),
('AU Rashid', (SELECT team_id FROM teams WHERE team_name = 'England')),
('T Shamsi', (SELECT team_id FROM teams WHERE team_name = 'South Africa')),
('RG Sharma', (SELECT team_id FROM teams WHERE team_name = 'India')),
('Naveen-ul-Haq', (SELECT team_id FROM teams WHERE team_name = 'Afghanistan')),
('M Jansen', (SELECT team_id FROM teams WHERE team_name = 'South Africa')),
('AR Patel', (SELECT team_id FROM teams WHERE team_name = 'India')),
('V Kohli', (SELECT team_id FROM teams WHERE team_name = 'India'));

SELECT * FROM players;