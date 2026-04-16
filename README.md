# פרויקט בסיסי נתונים - שלב א'
**מגישים:** בנימין יחזקאל 216474676
**מערכת:** Game Asset Store

## 1. מבוא
מערכת למסחר בנכסים דיגיטליים למפתחי משחקים. המערכת מנהלת משתמשים (קונים ומפתחים), קטלוג מוצרים, הזמנות וביקורות.
**פונקציונליות:** רכישת נכסים, דירוג מוצרים וניהול קבוצות פיתוח.

## 2. איפיון מסכים (AI Studio)
<img width="1024" height="1024" alt="עמוד מוצר" src="https://github.com/user-attachments/assets/37ada89f-c6ea-433a-a0ed-6a3cb95e0778" />
<img width="1024" height="1024" alt="עגלת קניות" src="https://github.com/user-attachments/assets/4d02e742-095e-4227-8f27-70f0bef0df76" />
<img width="1024" height="1024" alt="דף בית" src="https://github.com/user-attachments/assets/d320a412-dfd0-412a-9a2b-010c745ef480" />
<img width="1024" height="1024" alt="פרופיל" src="https://github.com/user-attachments/assets/ca85077b-dd6b-4c64-b6f0-22852874279c" />

## 3. תרשימי מסד הנתונים
<img width="4512" height="1797" alt="DSD" src="https://github.com/user-attachments/assets/7c6a5497-b5a4-4df2-92c8-937a8d336a99" />
<img width="4512" height="1797" alt="ERD" src="https://github.com/user-attachments/assets/2c5f5ea8-388d-4108-8e08-e818dd3ab48e" />
[מילון נתונים למערכת נכסים דיגיטליים.xlsx](https://github.com/user-attachments/files/26792630/default.xlsx)
**החלטות עיצוב:** השתמשנו בירושה עבור סוגי משתמשים כדי למנוע כפילות מידע, ובישות חלשה עבור ביקורות (Review) כיוון שהן תלויות קיומית במוצר ובקונה.
הסכמה מנורמלת ברמת 3NF.

## 4. אכלוס נתונים
השתמשנו ב-3 שיטות:
1. פקודות INSERT ידניות לטבלאות קטנות.
2. סקריפט Python (נמצא בתיקיית Programing) ליצירת 20,000 רשומות ייחודיות.
3. ייבוא קבצי CSV באמצעות כלי ה-Import של ה-DB.
<img width="1110" height="305" alt="Generator Screenshot" src="https://github.com/user-attachments/assets/7fbd65a5-1aed-42b1-a94c-1b670a1098bd" />
<img width="795" height="153" alt="image" src="https://github.com/user-attachments/assets/3a33c544-03b9-4ca9-a58d-af8daa0cd5f1" />
<img width="1045" height="104" alt="image" src="https://github.com/user-attachments/assets/62c4cc83-bbed-42f4-9edc-d1407bf2c021" />


## 5. גיבוי ושחזור
השחזור בוצע בהצלחה
