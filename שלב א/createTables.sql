-- 1. Super-type: User
CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Nickname VARCHAR(50) NOT NULL
);

-- 2. Sub-type: Buyer
CREATE TABLE Buyer (
    UserID INT PRIMARY KEY,
    Balance NUMERIC(10, 2) DEFAULT 0.00,
    FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE
);

-- 3. Sub-type: Developer
CREATE TABLE Developer (
    UserID INT PRIMARY KEY,
    Rating NUMERIC(3, 2) CHECK (Rating >= 0 AND Rating <= 5),
    FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE
);

-- 4. Developers Group
CREATE TABLE DevelopersGroup (
    GroupID INT PRIMARY KEY,
    GroupName VARCHAR(100) NOT NULL
);

-- 5. Category
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);

-- 6. Asset
CREATE TABLE Asset (
    AssetID INT PRIMARY KEY,
    AssetName VARCHAR(100) NOT NULL,
    Price NUMERIC(10, 2) NOT NULL,
    CategoryID INT,
    DeveloperID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    FOREIGN KEY (DeveloperID) REFERENCES Developer(UserID)
);

-- 7. Asset Tags (M:N)
CREATE TABLE AssetTag (
    AssetID INT,
    TagID INT,
    TagName VARCHAR(50),
    PRIMARY KEY (AssetID, TagID),
    FOREIGN KEY (AssetID) REFERENCES Asset(AssetID)
);

-- 8. Order
CREATE TABLE Order (
    OrderID INT PRIMARY KEY,
    OrderDate DATE NOT NULL, -- תאריך משמעותי 1
    BuyerID INT,
    FOREIGN KEY (BuyerID) REFERENCES Buyer(UserID)
);

-- 9. OrderItem (Junction Table for Order <-> Asset)
CREATE TABLE OrderItem (
    OrderID INT,
    AssetID INT,
    Quantity INT DEFAULT 1,
    PRIMARY KEY (OrderID, AssetID),
    FOREIGN KEY (OrderID) REFERENCES Order(OrderID),
    FOREIGN KEY (AssetID) REFERENCES Asset(AssetID)
);

-- 10. Review (Weak Entity)
CREATE TABLE Review (
    ReviewID INT PRIMARY KEY,
    ReviewDate DATE NOT NULL, -- תאריך משמעותי 2
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Content VARCHAR(500),
    BuyerID INT,
    AssetID INT,
    FOREIGN KEY (BuyerID) REFERENCES Buyer(UserID),
    FOREIGN KEY (AssetID) REFERENCES Asset(AssetID)
);

-- 11. Payment Method
CREATE TABLE PaymentMethod (
    PaymentID INT PRIMARY KEY,
    BuyerID INT,
    CreditCardNumber VARCHAR(20),
    PayPalAccount VARCHAR(100),
    ChosenMethod VARCHAR(20) NOT NULL,
    FOREIGN KEY (BuyerID) REFERENCES Buyer(UserID)
);