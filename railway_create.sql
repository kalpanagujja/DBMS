-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-04-12 02:34:25.751

-- tables
-- Table: Passenger
CREATE TABLE Passenger (
    passenger_id int  NOT NULL,
    name varchar(50)  NOT NULL,
    age int  NOT NULL,
    contact int  NOT NULL,
    CONSTRAINT Passenger_pk PRIMARY KEY  (passenger_id)
);

-- Table: Schedule
CREATE TABLE Schedule (
    schedule_id int  NOT NULL,
    from_station int  NOT NULL,
    to_station int  NOT NULL,
    train_id int  NOT NULL,
    departure_time varchar(30)  NOT NULL,
    CONSTRAINT Schedule_pk PRIMARY KEY  (schedule_id)
);

-- Table: Station
CREATE TABLE Station (
    station_id int  NOT NULL,
    station_name varchar(50)  NOT NULL,
    location varchar(50)  NOT NULL,
    No_of_tracks int  NOT NULL,
    CONSTRAINT Station_pk PRIMARY KEY  (station_id)
);

-- Table: Ticket
CREATE TABLE Ticket (
    ticket_id int  NOT NULL,
    passenger_id int  NOT NULL,
    seat_num varchar(10)  NOT NULL,
    schedule_id int  NOT NULL,
    CONSTRAINT Ticket_pk PRIMARY KEY  (ticket_id)
);

-- Table: Train
CREATE TABLE Train (
    train_id int  NOT NULL,
    train_name varchar(50)  NOT NULL,
    capacity int  NOT NULL,
    AC_coaches int  NOT NULL,
    sleeper_coaches int  NOT NULL,
    CONSTRAINT Train_pk PRIMARY KEY  (train_id)
);

-- foreign keys
-- Reference: Schedule_Train (table: Schedule)
ALTER TABLE Schedule ADD CONSTRAINT Schedule_Train
    FOREIGN KEY (train_id)
    REFERENCES Train (train_id);

-- Reference: Ticket_Passenger (table: Ticket)
ALTER TABLE Ticket ADD CONSTRAINT Ticket_Passenger
    FOREIGN KEY (passenger_id)
    REFERENCES Passenger (passenger_id);

-- Reference: Ticket_Schedule (table: Ticket)
ALTER TABLE Ticket ADD CONSTRAINT Ticket_Schedule
    FOREIGN KEY (schedule_id)
    REFERENCES Schedule (schedule_id);

-- Reference: from_Station (table: Schedule)
ALTER TABLE Schedule ADD CONSTRAINT from_Station
    FOREIGN KEY (to_station)
    REFERENCES Station (station_id);

-- Reference: to_Station (table: Schedule)
ALTER TABLE Schedule ADD CONSTRAINT to_Station
    FOREIGN KEY (from_station)
    REFERENCES Station (station_id);

-- End of file.

