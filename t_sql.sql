CREATE VIEW vw_PersonalInformation AS
SELECT CONCAT_WS(' ',P_NAME,P_SURNAME) AS "FULL_NAME",
       CASE 
       WHEN P_GENDER=0 THEN 'Erkek'
       WHEN P_GENDER=1 THEN 'Kadın'
       ELSE 'Belirtilmedi' END AS "Cinsiyet",
       P_BIRTHPLACE,
       P_TCNUMBER
FROM PERSONAL.HR.PERSON;
