sp_helptext vw_Ledger

select * from vw_Ledger


drop view vw_ledger

CREATE VIEW [dbo].[vw_Ledger] AS  
SELECT   
 ACName  
, LDate  
, Particulars  
, Dr  
, Cr  
, SP  
, Balance  
, cid  
, Source  
, PID  
, Group_Name  
, RC  
, Ch_Group  
FROM   
(  
SELECT   
 ACName  
, LDate  
, Particulars  
, (CASE WHEN (ACName = 'Cash' OR ACName IN (SELECT ACNAME FROM tblLedger WHERE ch_group = 'Bank Account')) THEN b.TotalFee ELSE NULL END ) Dr  
, (CASE WHEN ACName = 'Student Account' THEN b.TotalFee ELSE NULL END ) Cr  
, SP  
, Balance  
, l.cid cid  
, Source  
, PID  
, Group_Name  
, RC  
, Ch_Group  
FROM tblLedger L  
LEFT OUTER JOIN vw_SumOfBreakUp b ON b.cid = SUBSTRING (l.cid , 1, LEN(l.cid)-1)   
WHERE LEN(pid) > 0  
  
UNION  
  
SELECT   
 ACName  
, LDate  
, Particulars  
, Dr  
, Cr  
, SP  
, Balance  
, l.cid cid  
, Source  
, PID  
, Group_Name  
, RC  
, Ch_Group  
FROM tblLedger L  
WHERE LEN(pid) < 1  
) as A  