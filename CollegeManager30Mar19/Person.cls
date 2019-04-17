VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Person"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Dim Util As New Util
Const conChunkSize = 8192
Public tid As Long
Public pid As String
Public whomToMeet As String
Public OpID As String
Public userID As String
Public firstName As String
Public middleName As String
Public lastName As String
Public prefix As String
Public company As String
Public address As String
Public city As String
Public state As String
Public country As String
Public pin As String
Public AdmissionNo As String
Public registrationNo As String
Public code1 As String
Public phone1 As String
Public code2 As String
Public phone2 As String
Public Remarks As String
Public enterTime As Date
Public userPermission As Long
Public password As String
Public dept As String
Public dName As String
Public purpose As String
Public mother As String
Public BoardsRollNo As String
Public arivalDate As Date
Public dob As Date

Public Income As String
Public AdharNo As String
Public Category As String
Public Caste  As String
Public Religion As String

Public IsOBC As String
Public HasFailed As String
Public Subjects As String
Public HasPassed As String
Public HasPaidDues As String
Public HasFeeDiscount As String
Public HasNCC As String
Public NoOfMeetings As String
Public attendance As String
Public ReasonToLeave As String

Public routeID As Integer
Public permissionStatus As Integer
Public personType As Integer
Public personImage As PictureBox
Sub SavePerson(site As DBSite)
    Dim colStr As String
    Dim colValues As String
    colStr = "tid"
    colValues = tid
    colStr = colStr + ", " + "PID"
    colValues = colValues + ", " & Util.formatString(pid)
    colStr = colStr + ", " + "WhomToMeet"
    colValues = colValues + ", " & Util.formatString(whomToMeet)
    colStr = colStr + ", " + "OpID"
    colValues = colValues + ", " & Util.formatString(OpID)
    colStr = colStr + ", " + "UserID"
    colValues = colValues + ", " & Util.formatString(GM.EnterBy)
    colStr = colStr + ", " + "firstName, middleName, lastName"
    colValues = colValues + ", " + Util.formatString(firstName) + " ," + Util.formatString(middleName) + "," + Util.formatString(lastName)
    colStr = colStr + ", " + "PermissionStatus"
    colValues = colValues + ", " & permissionStatus
    colStr = colStr + ", " + "enterTime"
    colValues = colValues + ", '" & Now & "'"
    colStr = colStr + ", " + "Arrival"
    colValues = colValues + ", '" & Util.toSQLDate(arivalDate) & "'"
    colStr = colStr + ", " + "dept"
    colValues = colValues + ", '" & dept & "'"
    colStr = colStr + ", " + "dName"
    colValues = colValues + ", '" & dName & "'"
    colStr = colStr + ", " + "prefix"
    colValues = colValues + ", '" & prefix & "'"
    colStr = colStr + ", " + "purpose"
    colValues = colValues + ", '" & purpose & "'"
    colStr = colStr + ", " + "country"
    colValues = colValues + ", '" & country & "'"
    colStr = colStr + ", " + "State"
    colValues = colValues + ", '" & state & "'"
    colStr = colStr + ", " + "City"
    colValues = colValues + ", '" & city & "'"
    colStr = colStr + ", " + "Company"
    colValues = colValues + ", '" & company & "'"
    colStr = colStr + ", " + "Address"
    colValues = colValues + ", '" & address & "'"
    colStr = colStr + ", " + "pin"
    colValues = colValues + ", " & Util.formatString(pin)
    colStr = colStr + ", " + "Remarks"
    colValues = colValues + ", '" & Remarks & "'"
    colStr = colStr + ", " + "Code1"
    colValues = colValues + ", " & Util.formatString(code1)
    colStr = colStr + ", " + "Phone1"
    colValues = colValues + ", " & Util.formatString(phone1)
    colStr = colStr + ", " + "Code2"
    colValues = colValues + ", " & Util.formatString(code2)
    colStr = colStr + ", " + "Phone2"
    colValues = colValues + ", " & Util.formatString(phone2)
    colStr = colStr + ", " + "PersonType"
    colValues = colValues + ", " & personType
    'colValues = colValues + ", '" & Password & "'"
    colStr = colStr + ", " + "DOB"
    colValues = colValues + ", '" & Util.toSQLDate(dob) & "'"
    colStr = colStr + ", " + "AdmissionNo"
    colValues = colValues + ", '" & AdmissionNo & "'"
    colStr = colStr + ", " + "RegistrationNo"
    colValues = colValues + ", '" & registrationNo & "'"
    colStr = colStr + ", " + "Mother"
    colValues = colValues + ", '" & mother & "'"
    
    colStr = colStr + ", " + "BoardsRollNo"
    colValues = colValues + ", '" & BoardsRollNo & "'"
    
    
    colStr = colStr + ", " + "Income"
    colValues = colValues + ", '" & Income & "'"
    
    colStr = colStr + ", " + "AdharNo"
    colValues = colValues + ", '" & AdharNo & "'"
    
    colStr = colStr + ", " + "Category"
    colValues = colValues + ", '" & Category & "'"
    
    colStr = colStr + ", " + "Caste"
    colValues = colValues + ", '" & Caste & "'"
    
    colStr = colStr + ", " + "Religion"
    colValues = colValues + ", '" & Religion & "'"
    
    
    colStr = colStr + ", " + "IsOBC"
    colValues = colValues + ", '" & IsOBC & "'"
    
    colStr = colStr + ", " + "HasFailed"
    colValues = colValues + ", '" & HasFailed & "'"
    
    colStr = colStr + ", " + "Subjects"
    colValues = colValues + ", '" & Subjects & "'"
    
    colStr = colStr + ", " + "HasPassed"
    colValues = colValues + ", '" & HasPassed & "'"
    
    colStr = colStr + ", " + "HasPaidDues"
    colValues = colValues + ", '" & HasPaidDues & "'"
    
    colStr = colStr + ", " + "HasFeeDiscount"
    colValues = colValues + ", '" & HasFeeDiscount & "'"
    
    colStr = colStr + ", " + "HasNCC"
    colValues = colValues + ", '" & HasNCC & "'"
    
    colStr = colStr + ", " + "NoOfMeetings"
    colValues = colValues + ", '" & NoOfMeetings & "'"
    
    colStr = colStr + ", " + "ReasonToLeave"
    colValues = colValues + ", '" & ReasonToLeave & "'"
    
    
    colStr = colStr + ", " + "RouteID"
    colValues = colValues + ", " & routeID
    
    colStr = colStr + ", " + "UserPassword"
    colValues = colValues + ", 's3'"
    
    Dim qry As String
    qry = "INSERT INTO tblPerson(" + colStr + ") VALUES (" + colValues + " )"
    site.conn.Execute qry
 End Sub
Function getID(conn As Connection, colName As String) As Long
    Dim rs As Recordset
    Set rs = New Recordset
    conn.Execute "UPDATE tblGetId SET " + colName + "=" + colName + "+1 "
    rs.Open "SELECT " + colName + " FROM tblGetID ", conn, adOpenDynamic, adLockOptimistic
    If rs.EOF = False Then
        getID = rs.Fields(0).value
   Else
     conn.Execute "INSERT INTO tblGetId(tid,pid) VALUES(1000,1000)"
     getID = 1000
    End If
End Function
Function GetPerson(site As DBSite, pTid As Long) As Person
    Set GetPerson = New Person
    Dim rs As Recordset
    Set rs = New Recordset
    Dim colStr, query As String
    colStr = ""
    colStr = colStr + " tid, pid, whomToMeet, OpID, userID"
    colStr = colStr + ", firstName, middleName, lastName, prefix "
    colStr = colStr + ", company, address, city, state, country, pin "
    colStr = colStr + ", code1, phone1, code2, phone2 "
    colStr = colStr + ", remarks"
    colStr = colStr + ", dept, dname, whomToMeet, purpose, Arrival"
    colStr = colStr + ", enterTime, userPermission, PermissionStatus "
    colStr = colStr + ", PersonType"
    colStr = colStr + ", DOB"
    colStr = colStr + ", mother"
    colStr = colStr + ", BoardsRollNo"
    colStr = colStr + ", AdmissionNo"
    
    colStr = colStr + ", Income"
    colStr = colStr + ", AdharNo"
    colStr = colStr + ", Caste"
    colStr = colStr + ", Category"
    colStr = colStr + ", Religion"
    
    
    colStr = colStr + ", IsOBC"
    colStr = colStr + ", HAsFailed"
    colStr = colStr + ", Subjects"
    colStr = colStr + ", HasPassed"
    colStr = colStr + ", HasPaidDues"
    colStr = colStr + ", HasFeeDiscount"
    colStr = colStr + ", HasNCC"
    colStr = colStr + ", NoOfMeetings"
    colStr = colStr + ", attendance"
    colStr = colStr + ", ReasonToLeave"
    
    
    colStr = colStr + ", RegistrationNo"
    colStr = colStr + ", RouteID"
    
    Dim subQuery As String
    If pTid = -1 Then
       subQuery = "SELECT MAX(tid) FROM tblPerson GROUP BY pid"
    Else
       subQuery = tid
    End If
    
    Dim qry As String
    
    qry = "SELECT " & colStr & " FROM tblPerson WHERE pid IN ('" & pid & "') AND tid IN (" & subQuery & ")"
    
    'MsgBox qry
    
    rs.Open qry, site.conn
    
    
    
    'rs.Open "SELECT " & colStr & " FROM tblPerson WHERE pid IN ('" & pid & "') AND tid IN (" & subQuery & ")", site.conn
    If rs.EOF = False Then
        GetPerson.tid = rs.Fields("tid").value
        GetPerson.pid = rs.Fields("pid").value
        GetPerson.whomToMeet = Util.CheckNull(rs.Fields("whomToMeet").value)
        GetPerson.OpID = Util.CheckNull(rs.Fields("OpID").value)
        GetPerson.userID = Util.CheckNull(rs.Fields("userID").value)
        GetPerson.firstName = rs.Fields("firstName").value
        GetPerson.middleName = Util.CheckNull(rs.Fields("middleName").value)
        GetPerson.lastName = Util.CheckNull(rs.Fields("lastName").value)
        GetPerson.prefix = Util.CheckNull(rs.Fields("prefix").value)
        GetPerson.company = Util.CheckNull(rs.Fields("company").value)
        GetPerson.address = Util.CheckNull(rs.Fields("address").value)
        GetPerson.city = Util.CheckNull(rs.Fields("city").value)
        GetPerson.state = Util.CheckNull(rs.Fields("state").value)
        GetPerson.country = Util.CheckNull(rs.Fields("country").value)
        GetPerson.pin = Util.CheckNull(rs.Fields("pin").value)
        GetPerson.code1 = Util.CheckNull(rs.Fields("code1").value)
        GetPerson.phone1 = Util.CheckNull(rs.Fields("phone1").value)
        GetPerson.code2 = Util.CheckNull(rs.Fields("code2").value)
        GetPerson.phone2 = Util.CheckNull(rs.Fields("phone2").value)
        GetPerson.dept = Util.CheckNull(rs.Fields("dept").value)
        GetPerson.dName = Util.CheckNull(rs.Fields("dName").value)
        GetPerson.purpose = Util.CheckNull(rs.Fields("purpose").value)
        GetPerson.arivalDate = Util.CheckNull(rs.Fields("arrival").value)
        GetPerson.dob = Util.CheckNull(rs.Fields("dob").value)
        GetPerson.mother = Util.CheckNull(rs.Fields("mother").value)
        GetPerson.AdmissionNo = Util.CheckNull(rs.Fields("AdmissionNo").value)
        GetPerson.registrationNo = Util.CheckNull(rs.Fields("RegistrationNo").value)
        GetPerson.BoardsRollNo = Util.CheckNull(rs.Fields("BoardsRollNo").value)
        
        GetPerson.Income = Util.CheckNull(rs.Fields("Income").value)
        GetPerson.AdharNo = Util.CheckNull(rs.Fields("AdharNo").value)
        GetPerson.Category = Util.CheckNull(rs.Fields("Category").value)
        GetPerson.Caste = Util.CheckNull(rs.Fields("Caste").value)
        GetPerson.Religion = Util.CheckNull(rs.Fields("Religion").value)
        
        GetPerson.IsOBC = Util.CheckNull(rs.Fields("ISOBC").value)
        GetPerson.HasFailed = Util.CheckNull(rs.Fields("HasFailed").value)
        GetPerson.Subjects = Util.CheckNull(rs.Fields("Subjects").value)
        GetPerson.HasPassed = Util.CheckNull(rs.Fields("HasPassed").value)
        GetPerson.HasPaidDues = Util.CheckNull(rs.Fields("HasPaidDues").value)
        GetPerson.HasFeeDiscount = Util.CheckNull(rs.Fields("HasFeeDiscount").value)
        GetPerson.HasNCC = Util.CheckNull(rs.Fields("HasNCC").value)
        GetPerson.NoOfMeetings = Util.CheckNull(rs.Fields("NoOfMeetings").value)
        GetPerson.attendance = Util.CheckNull(rs.Fields("attendance").value)
        GetPerson.ReasonToLeave = Util.CheckNull(rs.Fields("ReasonToLeave").value)
        
        
        GetPerson.Remarks = Util.CheckNull(rs.Fields("Remarks").value)
        GetPerson.personType = rs.Fields("personType").value
        GetPerson.routeID = CInt(Util.CheckNullDouble(rs.Fields("routeid").value))
      End If
    rs.Close
End Function
Sub SaveImage(site As DBSite, PictureFile As String)
    Dim lOffset As Long
    Dim lSize As Long
    Dim sPath As String
    Dim nHandle As Integer
    Dim lSubChunks As Long
    Dim chunk() As Byte
    Dim nFragmentOffset As Integer
    Dim i As Integer
    Dim lChunks As Long
    Dim lKey As Long
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open "SELECT PersonImage FROM tblPerson WHERE tid =" & tid, site.conn, adOpenDynamic, adLockOptimistic
    nHandle = FreeFile
    Open PictureFile For Binary Access Read As nHandle
    lSize = LOF(nHandle)
    If nHandle = 0 Then
      Close nHandle
    End If
    lChunks = lSize \ conChunkSize
    nFragmentOffset = lSize Mod conChunkSize
       ReDim chunk(nFragmentOffset)
    Get nHandle, , chunk()
    rs.Fields("PersonImage").AppendChunk chunk()
    ReDim chunk(conChunkSize)
    lOffset = nFragmentOffset
    For i = 1 To lChunks
        Get nHandle, , chunk()
        rs.Fields("PersonImage").AppendChunk chunk()
        lOffset = lOffset + conChunkSize
        DoEvents
    Next
    Close nHandle
    rs.Update
 End Sub
