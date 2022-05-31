--IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Webshoppu')
    USE [master]
    GO
    DROP DATABASE IF EXISTS Webshop
    GO
    CREATE DATABASE Webshop
    go
    Use Webshop;
    go
    CREATE TABLE Manufacturer (
        ID INT IDENTITY(1,1) NOT NULL,
        [Name] VARCHAR(max) NOT NULL,
        CONSTRAINT PK_Manufacturer PRIMARY KEY (ID)
    )
    CREATE TABLE Categorie (
        ID INT IDENTITY(1,1) NOT NULL,
        [Name] VARCHAR(max) NOT NULL,
        CONSTRAINT PK_Categorie PRIMARY KEY (ID)
    )
    CREATE TABLE Person (
        ID INT IDENTITY(1,1) NOT NULL,
        [Name] VARCHAR(max) NOT NULL,
        Lastname VARCHAR(max) NOT NULL,
        EMail VARCHAR(max) NOT NULL,
        Adress VARCHAR(max) NOT NULL,
        CONSTRAINT PK_Person PRIMARY KEY (ID)
    )
    CREATE TABLE Employee (
        ID INT IDENTITY(1,1) NOT NULL,
        FkPerson INT NOT NULL,
        DeletePermission BIT,
        WritePermission BIT,
        CONSTRAINT PK_Employee PRIMARY KEY (ID),
        CONSTRAINT FK_Person FOREIGN KEY (FkPerson) REFERENCES Person(ID)
    )
    CREATE TABLE Product (
        ID INT IDENTITY(1,1) NOT NULL,
        [Name] VARCHAR(max) NOT NULL,
        Description VARCHAR(max),
        Price DECIMAL NOT NULL,
        FkManufacturer INT NOT NULL,
        FkCategorie INT NOT NULL,
        Created DATETIME2(2) NULL,
        CreatedFrom INT NULL,
        Modified DATETIME2(2) NULL,
        ModifiedFrom INT NULL,
        CONSTRAINT PK_Product PRIMARY KEY (ID),
        CONSTRAINT FK_Manufacturer FOREIGN KEY (FkManufacturer) REFERENCES Manufacturer(ID)
    )
    CREATE TABLE [Order] (
        ID INT IDENTITY(1,1) NOT NULL,
        FkProduct INT NOT NULL,
        FkPerson INT NOT NULL,
        CONSTRAINT PK_Order PRIMARY KEY (ID),
        CONSTRAINT FK_PersonOrder FOREIGN KEY (FkPerson) REFERENCES Person(ID),
        CONSTRAINT FK_ProductOrder FOREIGN KEY (FkProduct) REFERENCES Product(ID)
    )