CREATE TABLE [dbo].[Stations] (
    [StationID]   INT            NOT NULL,  -- IDENTITY (1, 1) NOT NULL
    [StationName]	VARCHAR(30),
    [Address]	VARCHAR(30),
	[Total_Docks] TINYINT,
	[Docks_In_Service] TINYINT,
	[Status] VARCHAR(16),
    [Latitude]	FLOAT,
	[Longitude] NUMERIC,
	[Location] VARCHAR(30),
    PRIMARY KEY CLUSTERED ([StationID] ASC)
);

CREATE TABLE [dbo].[Users] (
    [UserID]     INT            NOT NULL,
    [Gender]   VARCHAR (6)  NOT NULL,
    [BirthYear] INT,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

CREATE TABLE [dbo].[Trips] (
    [TripID] INT      NOT NULL,  -- IDENTITY (1, 1) NOT NULL
    [FromStation] INT NOT NULL,
    [ToStation]  INT      NOT NULL,
    [BikeID]   INT DEFAULT ((0)) NOT NULL,
    [StartingHour]   SMALLINT DEFAULT ((0)) NOT NULL,
	[StartDayOfWeek] SMALLINT DEFAULT ((0)) NOT NULL,
    [TripDuration]   INT DEFAULT ((0)) NOT NULL,
    [UserID] INT,
    PRIMARY KEY CLUSTERED ([TripID] ASC),
    CONSTRAINT [FromStation] FOREIGN KEY ([FromStation]) REFERENCES [dbo].[Stations] ([StationID]),
    CONSTRAINT [ToStation] FOREIGN KEY ([ToStation]) REFERENCES [dbo].[Stations] ([StationID]),
    CONSTRAINT [UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

