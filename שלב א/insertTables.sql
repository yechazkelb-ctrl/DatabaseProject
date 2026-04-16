-- דרך א': הכנסה ידנית (לטבלאות הקטנות)
INSERT INTO Category (CategoryID, CategoryName) VALUES (1, 'Scripts'), (2, '3D Models'), (3, 'Textures');
INSERT INTO DevelopersGroup (GroupID, GroupName) VALUES (1, 'Alpha Creators'), (2, 'Byte Builders');

-- דרך ב' ו-ג': תיעוד ייבוא הנתונים המאסיביים
-- הערה: הנתונים לטבלאות User ו-Review הופקו באמצעות סקריפט Python (Generator.py) 
-- ונטענו למערכת באמצעות כלי הייבוא (Import Wizard) של מסד הנתונים מתוך קבצי CSV.
-- (כאן ניתן להוסיף פקודת LOAD DATA אם תרצה, אבל צילום מסך של הייבוא מספיק בדוח).