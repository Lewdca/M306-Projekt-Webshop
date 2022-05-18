  --IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Webshoppu')
    CREATE DATABASE Webshoppu
    go
    Use Webshoppu;
    go

    CREATE TABLE Hersteller (
        ID INT IDENTITY(1,1) NOT NULL,
        [Name] VARCHAR(max) NOT NULL,

        CONSTRAINT PK_Hersteller PRIMARY KEY (ID)
    )


    CREATE TABLE Kategorie (
        ID INT IDENTITY(1,1) NOT NULL,
        [Name] VARCHAR(max) NOT NULL,

        CONSTRAINT PK_Kategorie PRIMARY KEY (ID)
    )

    CREATE TABLE Person (
        ID INT IDENTITY(1,1) NOT NULL,
        [Name] VARCHAR(max) NOT NULL,
        Nachname VARCHAR(max) NOT NULL,
        EMail VARCHAR(max) NOT NULL,
        Adresse VARCHAR(max) NOT NULL,

        CONSTRAINT PK_Person PRIMARY KEY (ID)
    )

    CREATE TABLE Mitarbeiter (
        ID INT IDENTITY(1,1) NOT NULL,
        FkPerson INT NOT NULL,
        Loeschberechtigt BIT,
        Schreibberechtigt BIT,

        CONSTRAINT PK_Mitarbeiter PRIMARY KEY (ID),
        CONSTRAINT FK_Person FOREIGN KEY (FkPerson) REFERENCES Person(ID)
    )

    CREATE TABLE Produkt (
        ID INT IDENTITY(1,1) NOT NULL,
        [Name] VARCHAR(max) NOT NULL,
        Beschrieb VARCHAR(max),
        Preis DECIMAL NOT NULL,
        FkHersteller INT NOT NULL,
        FkKategorie INT NOT NULL,

        Created DATETIME2(2) NULL,
        CreatedFrom INT NULL,
        Modified DATETIME2(2) NULL,
        ModifiedFrom INT NULL,

        CONSTRAINT PK_Produkt PRIMARY KEY (ID),
        CONSTRAINT FK_Hersteller FOREIGN KEY (FkHersteller) REFERENCES Hersteller(ID)
    )

    CREATE TABLE Bestellung (
        ID INT IDENTITY(1,1) NOT NULL,
        FkProdukt INT NOT NULL,
        FkPerson INT NOT NULL,

        CONSTRAINT PK_Bestellung PRIMARY KEY (ID),
        CONSTRAINT FK_PersonBestellung FOREIGN KEY (FkPErson) REFERENCES Person(ID),
        CONSTRAINT FK_ProduktBestellung FOREIGN KEY (fkProdukt) REFERENCES Produkt(ID)
    )
