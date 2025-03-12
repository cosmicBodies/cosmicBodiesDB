CREATE DATABASE db_comsic_bodies;

USE db_comsic_bodies;
CREATE TABLE [CosmicBodies] (
    [ID] INT IDENTITY PRIMARY KEY,
    [Name] VARCHAR(255),
    [Type] VARCHAR(255),
    [DistanceToEarth] INT,
	[Size] INT
	[YearOfDiscovery] INT
);

INSERT INTO CosmicBodies([ID], [Name], [Type], [DistanceToEarth], [Size], [YearOfDiscovery])
VALUES
    (1, 'Sun', 'Star', 149.6, 1391016, NULL),
    (2, 'Mercury', 'Planet', 77, 4879, NULL),
    (3, 'Venus', 'Planet', 41, 12104, NULL),
    (4, 'Mars', 'Planet', 225, 6779, NULL),
    (5, 'Jupiter', 'Planet', 778, 139820, NULL),
    (6, 'Saturn', 'Planet', 1427, 116460, NULL),
    (7, 'Uranus', 'Planet', 2871, 50724, 1781),
    (8, 'Neptune', 'Planet', 4495, 49244, 1846),
    (9, 'Pluto', 'Dwarf Planet', 5900, 2376, 1930),
    (10, 'Gaia-BH1', 'Black Hole', 26000, 23000000, 2022),
    (11, 'Hyakutake', 'Comet', 200, 11000, 1996),
    (12, 'Hale-Bopp', 'Comet', 1200, 124000, 1995),
    (13, 'NEAT', 'Comet', 2500, 22000, 2001),
    (14, 'McNaught', 'Comet', 2200, 15000, 2006),
    (15, 'Lovejoy', 'Comet', 6200, 81000, 2011),
    (16, 'NEOWISE', 'Comet', 8200, 18000, 2020);

CREATE TABLE [Users] (
    [ID] INT IDENTITY PRIMARY KEY,
    [Username] VARCHAR(255) UNIQUE NOT NULL,
    [Password] VARCHAR(255) NOT NULL,
    [Status] VARCHAR(50) CHECK ([Status] IN ('Admin', 'Default')) NOT NULL
);


SELECT * FROM [CosmicBodies]