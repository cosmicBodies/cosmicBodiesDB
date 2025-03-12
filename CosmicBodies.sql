CREATE DATABASE db_comsic_bodies;

USE db_comsic_bodies;
CREATE TABLE [CosmicBodies] (
    [ID] INT IDENTITY,
    [Name] VARCHAR(255),
    [Type] VARCHAR(255),
    [DistanceToEarth] INT,
	[Size] INT
	[YearOfDiscovery] INT
);