select * from tblLedger where cid IN ('5012C','5012D')

---------
CREATE VIEW vw_SumOfBreakUp AS
SELECT cid,  SUM(amount)TotalFee 
from tblBreakup 
GROUP BY cid


---------------
CREATE VIEW vw_Ledger AS
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
, (CASE WHEN ACName = 'Cash' THEN b.TotalFee ELSE NULL END ) Dr
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
ORDER BY ldate



/**

SELECT * FROM vw_SumOfBreakUp
select SUBSTRING ('5012C' , 1, LEN('5012C')-1) 
**/



