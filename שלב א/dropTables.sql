-- Drop junction and weak tables first
DROP TABLE IF EXISTS OrderItem;
DROP TABLE IF EXISTS Review;
DROP TABLE IF EXISTS AssetTag;
DROP TABLE IF EXISTS PaymentMethod;

-- Drop dependent tables
DROP TABLE IF EXISTS Order;
DROP TABLE IF EXISTS Asset;
DROP TABLE IF EXISTS Developer;
DROP TABLE IF EXISTS Buyer;
DROP TABLE IF EXISTS DevelopersGroup;
DROP TABLE IF EXISTS Category;

-- Drop the super-type last
DROP TABLE IF EXISTS User;