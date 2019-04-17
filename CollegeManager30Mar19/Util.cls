VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Util"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public Function GetDate(dd As String, mm As String, yyyy As String, hh As String, mi As String, ampm As String) As Date
     Dim dStr As String
     Dim tm As String
         If Len(hh) > 0 Then
        tm = hh & ":" & mi & " " & ampm
    Else
        tm = "10" & ":" & 10 & " " & ampm
    End If
    dStr = mm & " / " & dd & " / " & yyyy & " " & tm
    Dim dt As Date
    If IsDate(dStr) Then
        dt = FormatDateTime(dStr, vbGeneralDate)
    End If
    GetDate = dt
End Function
Public Function CheckDate(dd As String, mm As String, yyyy As String, hh As String, mi As String, ampm As String) As Boolean
    Dim dStr As String
    Dim dStr1 As String
    Dim dStr2 As String
    Dim tm As String
    If Len(hh) > 0 Then
        tm = hh & ":" & mi & " " & ampm
    Else
        tm = "10" & ":" & 10 & " " & ampm
    End If
    dStr = mm & " / " & dd & " / " & yyyy & " " & tm
    dStr1 = mm & "/15/2006 " & tm
    dStr2 = "12/" & dd & "/2006 " & tm
    CheckDate = IsDate(dStr) And IsDate(dStr2) And IsDate(dStr1)
End Function
Public Function GetDateWithSeconds(dd As String, mm As String, yyyy As String, tm As String) As Date
     Dim dStr As String
     dStr = mm & " / " & dd & " / " & yyyy & " " & tm
     Dim dt As Date
     dt = FormatDateTime(dStr, vbGeneralDate)
     GetDateWithSeconds = dt
End Function
Public Function GetTimeInSeconds(dt As Date) As String
     GetTimeInSeconds = Format(dt, "HH:MM:SS AM/PM")
End Function
Public Function GetMonth(dt As Date) As String
     GetMonth = Format(dt, "mm")
End Function
Public Function GetDay(dt As Date) As String
     GetDay = Format(dt, "dd")
End Function
Public Function GetYear(dt As Date) As String
     GetYear = Format(dt, "yyyy")
End Function
Public Function GetTime(dt As Date) As String
     GetTime = Format(dt, "HH:MM AM/PM")
End Function
Public Function GetHour(dt As Date) As String
     GetHour = Format(dt, "HH AM/PM")
End Function
Public Function GetMins(dt As Date) As String
     GetMins = Right(GetTime(dt), Len(GetTime(dt)) - 3)
End Function
Public Function GetAMPM(dt As Date) As String
     GetAMPM = Format(dt, "AM/PM")
End Function
Public Function formatString(str As String) As String
    str = Replace(str, "'", "''")
    formatString = "'" + str + "'"
End Function
Public Function CheckNull(str As Variant) As String
    Dim val As String
    If IsNull(str) Then
       val = ""
    Else
        val = CStr(str)
    End If
    CheckNull = val
End Function
Public Function CheckNullDouble(str As Variant) As Double
    If IsNull(str) Or Len(str) < 1 Then
       CheckNullDouble = 0#
    Else
       CheckNullDouble = CDbl(str)
    End If
End Function
Public Function ChangeToTitle(str As String) As String
    ChangeToTitle = UCase(Left(str, 1)) + Mid(str, 2, Len(str))
End Function
Public Function GetStatus(status As Integer) As String
    Dim gStr As String
    gStr = ""
    Select Case status
        Case GM.StatusWaiting
            gStr = "Waiting For Permission"
        Case GM.permissionGranted
            gStr = "Permission Granted"
        Case GM.permissionDenied
            gStr = "Permission Denied"
    End Select
    GetStatus = gStr
End Function
Public Function isAdmin(site As DBSite) As Boolean
   isAdmin = GM.EnterBy = GM.adminUserID
End Function
Public Function isPrincipal() As Boolean
   isPrincipal = GM.EnterBy = GM.principalUserID
End Function
Public Function isParty() As Boolean
   isParty = GM.EnterBy = GM.accountantUserID
End Function
Public Function isSchool() As Boolean
    isSchool = GM.school = 1
End Function
Public Sub LoVPerson(site As DBSite, dept As String, dName As String, List1 As ListBox, isEmp As Boolean, txt As String)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson Group by pid"
    query = "SELECT  pid, firstName+'  '+lastname as name, company FROM tblPerson "
    query = query + " WHERE tid IN (" + subQuery + ") "
    txt = Replace(txt, "'", " ")
    query = query + "AND firstName like '" & txt & "%'"
    If isEmp Then
        query = query + "AND personType=" & GM.emp
    End If
    If Len(dept) > 0 Then
        query = query + " AND dept='" + dept + "'"
    End If
    If Len(dName) > 0 Then
       query = query + " AND dname='" + dName + "'"
    End If
    query = query + " ORDER BY firstname"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim i As Integer
    i = 0
    If Not rs.EOF Then
     rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields("name").value)) > 0 Then
               Dim sPId, fName As String
               sPId = rs.Fields("pid").value
               fName = rs.Fields("company").value
               If Not isEmp Then
                     If isParty Then
                        List1.AddItem rs.Fields("name").value
                     Else
                        List1.AddItem rs.Fields("name").value & "  s/d/0: " & fName & "'" & sPId & "'"
                     End If
               Else
                     List1.AddItem rs.Fields("name").value & " '" & sPId & "'"
               End If
                    
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    
End Sub
Sub LoV(site As DBSite, colName As String, List1 As ListBox)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    query = "SELECT DISTINCT " + colName + " FROM tblPerson ORDER BY " + colName
    If Me.isPrincipal And (colName = "Dept" Or colName = "Dname") Then
       query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE userID='" & GM.principalUserID & "' ORDER BY " + colName
    End If
    If Me.isParty Then
       query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE personType=" & GM.party & " ORDER BY " + colName
    End If
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    List1.SetFocus
End Sub
Sub LoVClass(site As DBSite, colName As String, List1 As ListBox)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    query = "SELECT DISTINCT " + colName + " FROM tblPerson ORDER BY " + colName
    
    Dim rs As Recordset
    Set rs = New Recordset
    
    
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    List1.SetFocus
End Sub
Sub LoVDept(site As DBSite, colName As String, List1 As ListBox)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE userID ='" & GM.adminUserID & "' ORDER BY " + colName
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    List1.SetFocus
End Sub
Sub LoVDname(site As DBSite, colName As String, List1 As ListBox)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE userID ='" & GM.adminUserID & "' ORDER BY " + colName
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    List1.SetFocus
End Sub
Sub LoVLastSchool(site As DBSite, colName As String, List1 As ListBox)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE userID ='" & GM.principalUserID & "' ORDER BY " + colName
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    List1.SetFocus
End Sub
Sub LoVCashBank(site As DBSite, colName As String, List1 As ListBox, txt As String)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    'If Me.isParty Then
       query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE personType=" & GM.party & " AND registrationNo IN (" & GM.groupStr & ") AND registrationNo NOT IN ('Purchase Account') AND " & colName & " like '" & txt & "%' ORDER BY " + colName
    'End If
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
End Sub
Function GetUserPermission(site As DBSite) As Integer
     GetUserPermission = 0
End Function
Public Sub FOCUSME(txtBox As control)
   If Len(txtBox.Text) <> 0 Then
        txtBox.BackColor = RGB(164, 209, 255)
        
        txtBox.ForeColor = vbBlack
        txtBox.SelStart = 0
        txtBox.SelLength = Len(txtBox.Text)
   Else
      txtBox.BackColor = vbYellow
      txtBox.ForeColor = vbBlack
    End If
End Sub

Public Sub LostFocus(c As control)
    c.BackColor = RGB(164, 209, 255)
    c.ForeColor = vbBlack
End Sub

Public Function getPictureFileName(site As DBSite, pid As String, tid As Long) As String
    Dim lSize As Long
    Dim nHandle As Integer
    Dim lChunks As Integer
    Dim sFile As String
    Dim nFragmentOffset As Integer
    Dim lOffset As Long
    Dim varChunk() As Byte
    Dim i As Long
    Dim query, subQuery As String
    If tid = -1 Then
       subQuery = "SELECT MAX(tid) FROM tblPerson GROUP BY pid"
    Else
       subQuery = tid
    End If
    pid = RTrim(LTrim(pid))
    query = "SELECT PersonImage FROM tblPerson WHERE pid ='" + pid + "' AND tid IN (" & subQuery & ")"
    Dim rs As dao.Recordset
    Set rs = site.db.OpenRecordset(query, dbOpenDynaset)
    If rs.EOF = False Then
        nHandle = FreeFile
        sFile = App.Path & "\dataImg.jpg"
        'sFile = "c:\dataImg.jpg"
        Open sFile For Binary Access Write As nHandle
        lSize = rs.Fields("PersonImage").FieldSize
        If lSize < 1 Then
            Exit Function
        End If
        lChunks = lSize \ conChunkSize
        nFragmentOffset = lSize Mod conChunkSize
        ReDim varChunk(nFragmentOffset) As Byte
        varChunk() = rs.Fields("PersonImage").GetChunk(lOffset, nFragmentOffset)
        Put nHandle, , varChunk()
        lOffset = nFragmentOffset
        For i = 1 To lChunks
            ReDim varChunk(conChunkSize) As Byte
            varChunk() = rs.Fields("PersonImage").GetChunk(lOffset, conChunkSize)
            Put nHandle, , varChunk()
            lOffset = lOffset + conChunkSize
            DoEvents
        Next
       Close nHandle
    End If
    getPictureFileName = sFile
    'Picture1.Picture = LoadPicture(sFile, , vbLPColor)
  End Function

Public Function GetPersonTypeInt(str As String) As Integer
    Select Case str
        Case "Visitor"
            GetPersonTypeInt = GM.visitor
        Case "Student"
            GetPersonTypeInt = GM.student
        Case "Employee"
            GetPersonTypeInt = GM.emp
        Case "Party"
            GetPersonTypeInt = GM.party
    End Select
End Function

Public Function GetPersonTypeString(str As String) As String
    Select Case CInt(str)
        Case GM.visitor
            GetPersonTypeString = "Visitor"
        Case GM.emp
            GetPersonTypeString = "Employee"
        Case GM.student
            GetPersonTypeString = "Student"
        Case GM.party
            GetPersonTypeString = "Party"
    End Select
 End Function
Public Function GetName(site As DBSite, id As String) As String
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson GROUP By pid "
    query = "SELECT prefix, FirstName, middleName,lastName FROM tblPerson WHERE pid='" & id & "' AND tid IN (" + subQuery + ")"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim prefix, nm As String
    If Not rs.EOF Then
         nm = CheckNull(rs.Fields("FirstName").value) + " " + CheckNull(rs.Fields("middleName").value) + " " + CheckNull(rs.Fields("lastName").value)
        If Len(CheckNull(rs.Fields("prefix").value)) > 0 Then
            GetName = prefix + " " + nm
           Else
            GetName = rs.Fields("FirstName").value
         End If
    Else
        GetName = ""
    End If
    If id = "997" Then
        GetName = "Accountant"
    End If
   rs.Close
End Function
Public Function GetPictureFromFolder(site As DBSite) As String
   On Error GoTo errHandler
    Dim query As String
    Dim folder As String
    Dim pfile As String
    Dim fName As String
    query = "SELECT cameraFolder, fName FROM tblUtil"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        folder = CheckNull(rs.Fields("cameraFolder").value)
        fName = CheckNull(rs.Fields("fName").value)
    End If
    rs.Close
    If Len(folder) > 0 Then
        pfile = App.Path & "\dataImg.jpg"
        Set fs = CreateObject("Scripting.FileSystemObject")
        Dim sFile As String
        sFile = folder & fName
        fs.CopyFile sFile, App.Path & "\dataImg.jpg", True
        Kill folder & "*." & Right(fName, 3)
    End If
errHandler:
  If Err.Number = 53 Then
    MsgBox "No Picture Found. Pls. take new photo by Camera.."
    Exit Function
  End If
  GetPictureFromFolder = pfile
End Function

Public Sub OpenCamera(site As DBSite)
    On Error GoTo errHandler
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT cameraEXE FROM tblUtil"
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim exeName As String
    If Not rs.EOF Then
        exeName = CheckNull(rs.Fields("cameraEXE").value)
    End If
    rs.Close
    Dim RetVal
    RetVal = Shell(exeName, 1)
errHandler:
  If Err.Number = 53 Then
    MsgBox "No Camera found..", vbExclamation, "SchoolManager"
    Exit Sub
  End If

End Sub
Public Sub SaveSettings(site As DBSite, cameraExe As String, cameraFolder As String, fName As String, StartFinancialYearMonth As String, machineName As String)
     site.conn.Execute "UPDATE tblUtil SET cameraExe='" + cameraExe + "', cameraFolder ='" + cameraFolder + "',fName ='" + fName + "',StartFinancialYearMonth = '" + StartFinancialYearMonth + "', machineName='" + machineName + "'"
     
End Sub
Public Sub SaveSettingsSchool(site2 As DBSite2, schoolName As String, schoolAddress As String, affiliation As String, discountHead As String, fYear As String, printerPageSize As String)
    site2.conn.Execute "UPDATE tblHome SET schoolName='" + schoolName + "', schoolAddress ='" + schoolAddress + "',afiliation='" + affiliation + "', discountHead= '" + discountHead + "', c = '" + printerPageSize + "' ,financialYear = '" + fYear + "'"
End Sub

Public Function GetSetting(site As DBSite, whichSetting As String) As String
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT " + whichSetting + " FROM tblUtil"
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim exeName As String
    If Not rs.EOF Then
        GetSetting = CheckNull(rs.Fields(whichSetting).value)
    End If
    rs.Close
    
End Function
Public Sub SetFont(frm As Form)
   Dim control
   For Each control In frm.Controls
    If Left(control.Name, 3) = "lbl" Or Left(control.Name, 3) = "btn" Or Left(control.Name, 5) = "Label" Then
        control.Font = "Calibri"
    ElseIf Left(control.Name, 3) = "txt" Then
        'control.Font = "DevLys-390Wide"
        control.Font = "Calibri"
    End If
   Next control
   
End Sub
Public Function CheckEmpID(site As DBSite, id As String) As String
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson GROUP By pid "
    query = "SELECT prefix, FirstName FROM tblPerson WHERE pid='" & id & "' AND personType =" & GM.emp & " AND tid IN (" + subQuery + ")"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim prefix As String
    If Not rs.EOF Then
        If Len(CheckNull(rs.Fields("prefix").value)) > 0 Then
            CheckEmpID = prefix + " " + rs.Fields("FirstName").value
           Else
            CheckEmpID = rs.Fields("FirstName").value
         End If
    Else
        CheckEmpID = ""
    End If
   rs.Close
End Function
Public Sub SetProperties(Text1 As TextBox)
        Text1.Text = ""
        Text1.BorderStyle = 1
        Text1.FontSize = GM.FntSize
        Text1.FontBold = True
        Text1.Height = GM.txtHeight
        Text1.BackColor = RGB(164, 209, 255)
        Text1.Appearance = vbFlat
End Sub
Sub LoV2(site As DBSite2, colName As String, tableName As String, List1 As ListBox, txt As String)
    List1.BackColor = RGB(164, 209, 255)
    List1.Visible = True
    List1.Clear
    List1.FontSize = FntSize
    List1.FontBold = True
    Dim query As String
    query = "SELECT DISTINCT " & colName & " FROM " & tableName & " WHERE tid IN (SELECT MAX(tid) FROM  " & tableName & " GROUP BY cid) AND " & colName & " LIKE '" & txt & "%'"
    query = query + " ORDER BY " + colName
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    
    End If
    If Len(txt) = 0 And tableName = "tblFeeStucture" Then
        Dim dHead As String
        dHead = GetSettingHome(site, "DiscountHead")
        Dim hasDiscountHead As Boolean
        hasDiscountHead = False
        For i = 0 To List1.ListCount - 1
            List1.ListIndex = i
            If List1.Text = dHead Then
               hasDiscountHead = True
            End If
        Next
        If Not hasDiscountHead Then
            List1.AddItem dHead
        End If
        List1.ListIndex = 0
    End If
    

    rs.Close
End Sub
Sub LoVParticulars(site As DBSite2, colName As String, tableName As String, List1 As ListBox, isFeeCollection As Boolean)
    List1.BackColor = RGB(164, 209, 255)
    List1.Visible = True
    List1.SetFocus
    List1.Clear
    List1.FontSize = FntSize
    List1.FontBold = True
    source = "'FC'"
    If Not isFeeCollection Then
        source = "'PM', 'PR', 'PU', 'PN'"
    End If
    Dim query As String
    query = "SELECT DISTINCT " & colName & " FROM " & tableName & " WHERE Source IN (" & source & ") ORDER BY " + colName
    'query = "SELECT DISTINCT " & colName & " FROM " & tableName & " WHERE Source='FC' ORDER BY " + colName
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
End Sub
Function isEven(c As Integer) As Boolean
  isEven = c Mod 2 = 0
End Function
Public Function formatParam(str As String) As String
    str = Replace(str, ",", "','")
    formatParam = "'" + str + "'"
End Function
Sub HideList(txt As TextBox, List1 As ListBox)
   txt.Text = List1.Text
   txt.SetFocus
   List1.Visible = False
End Sub
Function CalculateFees(site As DBSite, site2 As DBSite2, pid As String) As Double
    Dim dt As Date
    dt = Now
    Dim query As String
    'query = "SELECT dept FROM tblPerson WHERE tid IN (SELECT MAX(tid) FROM tblPerson WHERE  pid='" & pid & "' GROUP BY pid  )"
    query = "SELECT dept FROM tblPerson WHERE pid ='" & pid & "' AND  tid IN (SELECT MAX(tid) FROM tblPerson WHERE pid = '" & pid & "' GROUP BY pid  )"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim pClass As String
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            pClass = CheckNull(rs.Fields("dept").value)
            rs.MoveNext
        Wend
     Else
        CalculateFees = -9999999
        Exit Function
    End If
    rs.Close
    Dim subQuery As String
    Dim totalCharges As Double
    'one time
    totalCharges = GetFees(site2, pClass, "oneTime", pid, dt)
    ' Annual fees
    totalCharges = totalCharges + GetFees(site2, pClass, "annual", pid, dt)
    'monthly
    Dim mnth As String
    mnth = Format(Now, "mmmm")
    Dim monthFees As Double
    monthFees = GetFees(site2, pClass, "monthly", pid, dt)
     Select Case mnth
        Case "April"
            monthFees = monthFees * 1
        Case "May"
            monthFees = monthFees * 2
        Case "June"
            monthFees = monthFees * 3
        Case "July"
            monthFees = monthFees * 4
        Case "August"
            monthFees = monthFees * 5
        Case "September"
            monthFees = monthFees * 6
        Case "October"
            monthFees = monthFees * 7
        Case "November"
            monthFees = monthFees * 8
        Case "December"
            monthFees = monthFees * 9
        Case "January"
            monthFees = monthFees * 10
        Case "February"
            monthFees = monthFees * 11
        Case "March"
            monthFees = monthFees * 12
    End Select
    totalCharges = totalCharges + monthFees
    subQuery = "SELECT MAX(tid) FROM tblFine WHERE pid = '" & pid & "' GROUP  BY cid"
    query = "SELECT SUM(Amount)as amount FROM tblFine WHERE tid IN (" & subQuery & ") "
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            totalCharges = totalCharges + CheckNullDouble(rs.Fields("amount").value)
            rs.MoveNext
        Wend
    End If
    rs.Close
    Dim feesPaid As Double
    'query = "SELECT SUM(Amount) as amount FROM tblLedger WHERE pid = '" & pid & "'"
    query = "SELECT SUM(cr) as amount FROM vw_Ledger WHERE pid = '" & pid & "'"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            feesPaid = CheckNullDouble(rs.Fields("amount").value)
            rs.MoveNext
        Wend
    End If
    rs.Close
    CalculateFees = Round(totalCharges, 2) - Round(feesPaid, 2)
End Function
Sub saveLedger(site2 As DBSite2, cid As Long, ldate As Date, party As String, particulars As String, amount As Double, mode As String, pid As String, isOpeningBalance As Boolean, drcr As String, source As Integer, receiptNo As String)
    Dim query As String
    If Not CheckDate(GetDay(ldate), GetMonth(ldate), GetYear(ldate), "", "", "") Then
        Exit Sub
    End If
    
    If Not checkFinancialYear(site2, GetDay(ldate), GetMonth(ldate), GetYear(ldate)) Then
        MsgBox "Date not in financial Year!"
        Exit Sub
    End If
    
    Dim sqlDt As String
    sqlDt = toSQLDate(ldate)
                

    
    If isOpeningBalance Then
        If UCase(Trim(drcr)) = UCase("dr") Then
            query = "INSERT INTO tblLedger(cId, pid, LDate, AcName, source, particulars, dr) VALUES('" & cid & "'+'O', '" & pid & "' , '" & sqlDt & "', " & formatString(party) & ", 'OB', " & formatString(particulars) & ", " & amount & ") "
             site2.conn.Execute query
        ElseIf UCase(Trim(drcr)) = UCase("cr") Then
            query = "INSERT INTO tblLedger(cId, pid, LDate, AcName, source, particulars, cr) VALUES('" & cid & "'+'O', '" & pid & "' , '" & sqlDt & "', " & formatString(party) & ", 'OB', " & formatString(particulars) & ", " & amount & ") "
             site2.conn.Execute query
        End If
      
    Else
        Dim sourceStr As String
        If source = 0 Then
            sourceStr = "FC"
        ElseIf source = 1 Then
            sourceStr = "PR"
        ElseIf source = 2 Then
            sourceStr = "PM"
        ElseIf source = 3 Then
            sourceStr = "PU"
        ElseIf source = 4 Then
            sourceStr = "PN"
        End If
        query = "INSERT INTO tblLedger(cId, pid, LDate, AcName, source, particulars, dr, Group_Name) VALUES('" & cid & "'+'C', " & pid & " , '" & sqlDt & "', " & formatString(mode) & ", " & formatString(sourceStr) & ", " & formatString(particulars) & ", " & amount & ", " & formatString(receiptNo) & ") "
        site2.conn.Execute query
        query = "INSERT INTO tblLedger(cId, pid, LDate, AcName, source, particulars, cr, Group_Name) VALUES('" & cid & "'+'D', " & pid & " , '" & sqlDt & "', " & formatString(party) & "," & formatString(sourceStr) & ", " & formatString(particulars) & ", " & amount & ", " & formatString(receiptNo) & ") "
        site2.conn.Execute query
    End If
    
End Sub
Function gridWidth(Grid1 As MSHFlexGrid) As Long
    Dim gWidth As Long
    gWidth = 0
    Dim i As Integer
    For i = 0 To Grid1.Cols - 1
        gWidth = gWidth + Grid1.ColWidth(i)
    Next
    gridWidth = gWidth + 300
    Grid1.SelectionMode = flexSelectionByRow
    'Grid1.BackColor = RGB(192, 192, 192)
    'Grid1.BackColor = RGB(255, 159, 207)
    'Grid1.BackColorBkg = RGB(255, 159, 207)

    Grid1.Font = "Calibri"
    Grid1.FixedRows = 1
    Grid1.FixedCols = 0
    Grid1.AllowUserResizing = flexResizeBoth
End Function
Function GetFees(site2 As DBSite2, Class As String, fType As String, pid As String, dt As Date) As Double
    Dim rs As Recordset
    Set rs = New Recordset
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblFeeStucture WHERE class IN ( '" & Class & "', 'All') GROUP  BY cid"
    If fType <> "Monthly" Then
        query = "SELECT head, fType, Amount , whichMonth FROM tblFeeStucture WHERE tid IN (" & subQuery & ") AND fType ='" & fType & "'AND pid IN ('0','" & pid & "')  "
        rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
        Dim WhichMonth As String
        If Not rs.EOF Then
            rs.MoveFirst
            While rs.AbsolutePosition <> adPosEOF
                Dim amt As Double
                amt = 0
                Dim hd1 As String
                amt = rs.Fields("amount").value
                hd1 = CheckNull(rs.Fields("head").value)
                If Not isFeesInWhichmonth(CheckNull(rs.Fields("whichmonth").value), dt) Then
                    amt = 0
                End If
                '6666
                
                If isDiscountHead(site2, hd1) And isFeesInWhichmonth(CheckNull(rs.Fields("whichmonth").value), dt) Then
                    
                    amt = amt - (GetDiscount(site2, pid, dt, hd1)) * (amt / 100)
                End If
                GetFees = GetFees + amt
                rs.MoveNext
            Wend
        Else
           GetFees = 0
        End If
    Else
        query = "SELECT head, fType, Amount  FROM tblFeeStucture WHERE tid IN (" & subQuery & ") AND fType ='" & fType & "'AND pid IN ('0','" & pid & "')  "
        
        query = query + " UNION "
    
    query = query + " select 'Transport' head, 'Monthly' ftype, isNull(RouteFee, 0) Amount "
    query = query + " from tblPerson p "
    query = query + " LEFT OUTER JOIN tblRoute r on r.RouteId = p.routeID "
    query = query + " WHERE p.tid IN (SELECT MAX(tid) from tblPerson Group By pid) "
    query = query + " and pid = '" & pid & "' "
    
        
        
        
        rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
        If Not rs.EOF Then
            rs.MoveFirst
            While rs.AbsolutePosition <> adPosEOF
                Dim hd As String
                Dim discount As Double
                hd = CheckNull(rs.Fields("head").value)
                amt = rs.Fields("amount").value
                
                
                If isDiscountHead(site2, hd) Then
                   
                   
                   discount = (GetDiscountBalli(site2, pid, dt, hd)) * (amt / 100)
                   
                   
                   amt = (amt * GetDiff(dt)) - discount
                Else
                   amt = (amt * GetDiff(dt))
                End If
                GetFees = GetFees + amt
            rs.MoveNext
        Wend
    End If
    
        '*******
        
    End If
    rs.Close
    
End Function



Sub saveFine(site2 As DBSite2, tid As Long, cid As String, pid As String, fineDate As Date, headName As String, amount As Double)
    Dim query As String
    query = "INSERT INTO tblFine(tid, cId, cDate, pid, HeadName, amount)VALUES(" & tid & ", '" & cid & "', '" & toSQLDate(fineDate) & "', " & pid & " , '" & headName & "', " & amount & ") "
    site2.conn.Execute query
End Sub
Function feesRcd(site2 As DBSite2, pid As String) As Double
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT SUM(dr) as amount FROM vw_Ledger WHERE pid IN ('" & pid & "')"
    rs.Open query, site2.conn
    Dim paymentRcd As Double
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            feesRcd = CheckNullDouble(rs.Fields("amount").value)
            rs.MoveNext
        Wend
     rs.Close
    End If
End Function
Function feesRcdByDate(site2 As DBSite2, pid As String, frmDate As Date, toDate As Date) As Double
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT SUM(dr) as amount FROM vw_Ledger WHERE pid IN ('" & pid & "')"
    query = query & " AND Ldate >= '" & frmDate & "' and ldate <= '" & toDate & "' "
    rs.Open query, site2.conn
    Dim paymentRcd As Double
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            feesRcdByDate = CheckNullDouble(rs.Fields("amount").value)
            rs.MoveNext
        Wend
     rs.Close
    End If
End Function

Function GetTotalfeesOriginal(site As DBSite, site2 As DBSite2, pid As String, dt As Date) As Double
    Dim query As String
    query = "SELECT dept FROM tblPerson WHERE pid ='" & pid & "' "
    query = query & " AND  tid IN (SELECT MAX(tid) FROM tblPerson WHERE pid = '" & pid & "' GROUP BY pid  )"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim pClass As String
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            pClass = CheckNull(rs.Fields("dept").value)
            rs.MoveNext
        Wend
     Else
        Exit Function
    End If
    rs.Close
    Dim subQuery As String
    Dim totalCharges As Double
    totalCharges = 0
    Dim fType As String
    fType = "One Time"
    'one time
    totalCharges = totalCharges + GetFees(site2, pClass, fType, pid, dt)
    Dim diff As Integer
    diff = GetDiff(dt)
    'Annual
    fType = "Annual"
    Dim annualdiff As Integer
    annualdiff = CInt(GetMonth(dt)) - GetSetting(site, "annualFeesMonth")
    Dim isNewYearMonth As Boolean
    isNewYearMonth = True
    'If annualdiff >= 0 Or isNewYearMonth Then
      totalCharges = totalCharges + GetFees(site2, pClass, fType, pid, dt)
    'End If
    'Monthly
    fType = "Monthly"
    totalCharges = totalCharges + GetFees(site2, pClass, fType, pid, dt)
    'Fine
    subQuery = "SELECT MAX(tid) FROM tblFine WHERE pid = '" & pid & "' GROUP  BY cid"
    query = "SELECT SUM(Amount) as amount  FROM tblFine WHERE tid IN (" & subQuery & ") "
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            amt = CheckNullDouble(rs.Fields("amount").value)
            totalCharges = totalCharges + amt
            rs.MoveNext
        Wend
    End If
    rs.Close
    GetTotalfeesOriginal = totalCharges
End Function
Function GetTotalfees(site As DBSite, site2 As DBSite2, pid As String, dt As Date) As Double
    Dim query As String
    query = "SELECT dept FROM tblPerson WHERE pid ='" & pid & "' "
    query = query & " AND  tid IN (SELECT MAX(tid) FROM tblPerson WHERE pid = '" & pid & "' GROUP BY pid  )"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim pClass As String
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            pClass = CheckNull(rs.Fields("dept").value)
            rs.MoveNext
        Wend
     Else
        Exit Function
    End If
    rs.Close
    Dim subQuery As String
    Dim totalCharges As Double
    totalCharges = 0
    Dim fType As String
    fType = "One Time"
    'one time
    totalCharges = totalCharges + GetFees(site2, pClass, fType, pid, dt)
    Dim diff As Integer
    diff = GetDiff(dt)
    'Annual
    fType = "Annual"
    Dim annualdiff As Integer
    annualdiff = CInt(GetMonth(dt)) - GetSetting(site, "annualFeesMonth")
    Dim isNewYearMonth As Boolean
    isNewYearMonth = True
    'If annualdiff >= 0 Or isNewYearMonth Then
      totalCharges = totalCharges + GetFees(site2, pClass, fType, pid, dt)
    'End If
    'Monthly
    fType = "Monthly"
    totalCharges = totalCharges + GetFees(site2, pClass, fType, pid, dt)
    'Fine
    subQuery = "SELECT MAX(tid) FROM tblFine WHERE pid = '" & pid & "' GROUP  BY cid"
    query = "SELECT SUM(Amount) as amount  FROM tblFine WHERE tid IN (" & subQuery & ") "
    query = query & " AND pid = '" & pid & "'"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            amt = CheckNullDouble(rs.Fields("amount").value)
            
            totalCharges = totalCharges + amt
            rs.MoveNext
        Wend
    End If
    rs.Close
    GetTotalfees = totalCharges
End Function

Function GetTruncatedPid(txt As String) As String
    Dim length As Long
    length = Len(txt) - InStr(txt, "'")
    GetTruncatedPid = Left(Right(txt, length), length - 1)
End Function
Function GetTruncated(txt As String, str As String) As String
    Dim length As Long
    If Len(txt) > 1 Then
        length = InStr(txt, str)
        GetTruncated = Left(txt, length - 1)
    End If
End Function

Function GetDiscount(site2 As DBSite2, pid As String, dt As Date, head As String) As Double
    GetDiscount = 0
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    'SELECT TOP 1 discountPercent From tblDiscount WHERE pid IN ('1397') and dateTime <=#29-aug-2004# ORDER BY datetime DESC
    query = "SELECT TOP 1 discountPercent From tblDiscount WHERE pid IN ('" & pid & "') AND dateTime <=#" & dt & "# AND discountHead='" & head & "' ORDER BY datetime DESC"
    If GM.isSql Then
        query = "SELECT TOP 1 discountPercent From tblDiscount WHERE pid IN ('" & pid & "') AND dateTime <= '" & dt & "' AND discountHead='" & head & "' ORDER BY datetime DESC"
    End If
    
    
    
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetDiscount = CheckNullDouble(rs.Fields("discountPercent").value)
            rs.MoveNext
        Wend
    End If
    rs.Close
    
    ' if head is transport and month is June the discount is 100%
    
    
    If UCase(Trim(head)) = "TRANSPORT" And GetMonth(dt) = "06" Then
        'GetDiscount = 0
        GetDiscount = GM.TransportDiscount
    End If
    
    
End Function
Public Sub LoVParty(site As DBSite, List1 As ListBox, txt As String)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson Group by pid"
    query = "SELECT  firstName+'  '+lastname as name FROM tblPerson "
    query = query + " WHERE tid IN (" + subQuery + ") "
    query = query + "AND personType=" & GM.party
    query = query + "AND firstname like '" & txt & "%'"
    query = query + " ORDER BY firstName"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
     rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            List1.AddItem rs.Fields("name").value
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    List1.FontBold = True
End Sub
Public Function FormatDouble(num As Variant) As String
    If IsNull(num) Then
       num = 0#
    End If
    FormatDouble = Format(num, "#0.00")
End Function
Function GetDiff(dt As Date) As Integer
    Dim site As New DBSite
    GetDiff = (CInt(GetMonth(dt)) - GetSetting(site, "StartFinancialYearMonth")) + 1
    If GetDiff <= 0 Then
       GetDiff = GetDiff + 12
    End If
    If GetDiff > 12 Then
        GetDiff = 12
    End If
End Function
Function GetPayment(site2 As DBSite2, lid As String) As Double
    GetPayment = 0
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT  cr From vw_Ledger WHERE cid IN ('" & lid & "') "
    'MsgBox ("getPayment " + query)
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetPayment = CheckNullDouble(rs.Fields("cr").value)
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function
Function GetComboMonth(site2 As DBSite2, cid As String) As String
    GetComboMonth = ""
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT  whichMonth From tblFeeStucture WHERE cid IN ('" & cid & "') and tid in (SELECT MAX(tid) from tblFeeStucture group by cid)"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetComboMonth = CheckNull(rs.Fields("whichMonth").value)
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function
Function GetModeParty(site2 As DBSite2, cid As String, modeParty As String) As String
    GetModeParty = ""
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    Dim party, mode As String
    Dim cid1, cid2 As String
    cid1 = Left(cid, Len(cid) - 1) & "C"
    cid2 = Left(cid, Len(cid) - 1) & "D"
    query = "SELECT  cid, acName, source From vw_Ledger WHERE cid IN ('" & cid1 & "','" & cid2 & "') ORDER by cid"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    Dim count As Integer
    count = 0
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
           count = count + 1
           Dim source As String
           Dim acName As String
           source = CheckNull(rs.Fields("source").value)
           acName = CheckNull(rs.Fields("acName").value)
    
    ' FC - party in D, Mode in C
    ' PR - party in D, mode in C
    ' PM - party in C, mode in d
    ' count 1 - c
    ' count 2 - d
         Select Case source
            Case "FC", "PR", "PU" ' purchase
                If count = 1 Then
                  mode = acName
                Else
                  party = acName
                End If
            Case "PM", "PN" ' purchase return
                If count = 1 Then
                   party = acName
                Else
                   mode = acName
                End If
        End Select
            rs.MoveNext
        Wend
    End If
    rs.Close
    If modeParty = "Mode" Then
        GetModeParty = mode
    Else
        GetModeParty = party
    End If
End Function
Function GetCashInHand(site2 As DBSite2) As String
    GetCashInHand = "0.00"
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT  SUM(dr) as dr, SUM(cr) as cr From vw_Ledger WHERE acName='Cash'"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetCashInHand = FormatDouble(CheckNullDouble(rs.Fields("dr").value) - CheckNullDouble(rs.Fields("cr").value))
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function
Sub LovGroup(site As DBSite, List1 As ListBox)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    'query = "SELECT distinct registrationNo FROM tblGroup WHERE personType=" & GM.party & " AND registrationNo NOT IN (" & GM.groupStr & ", 'Salary Account', 'Postage', 'Stationary Account','Sundry Debtors', 'Sundry Creditors') ORDER BY registrationNo"
    query = "SELECT distinct GroupName FROM tblGroup "
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            List1.AddItem CheckNull(rs.Fields("GroupName").value)
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    List1.SetFocus
End Sub


Sub LovTransport(site As DBSite, Combo1 As ComboBox)
    Combo1.Clear
    'List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    'query = "SELECT distinct registrationNo FROM tblGroup WHERE personType=" & GM.party & " AND registrationNo NOT IN (" & GM.groupStr & ", 'Salary Account', 'Postage', 'Stationary Account','Sundry Debtors', 'Sundry Creditors') ORDER BY registrationNo"
    query = "SELECT RouteID, RouteName FROM tblRoute "
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            Combo1.AddItem CheckNull(rs.Fields("RouteName").value)
            Combo1.ItemData(Combo1.NewIndex) = rs.Fields("RouteID").value
            rs.MoveNext
        Wend
    End If
    rs.Close
    
End Sub


Function ValiDateAmount(amount As String, txt As TextBox) As Boolean
    ValiDateAmount = True
    If Len(amount) < 1 Then
        MsgBox "No Amount Entered", vbExclamation
        txt.SetFocus
        ValiDateAmount = False
        Exit Function
    End If
    If Not IsNumeric(amount) Then
        MsgBox "No Amount Entered", vbExclamation
        txt.SetFocus
        ValiDateAmount = False
        Exit Function
    End If
End Function
Function ValiDateCashBank(site As DBSite, CashBank As String, txt As TextBox, isParty As Boolean) As Boolean
    ValiDateCashBank = True
    If Len(CashBank) < 1 Then
        MsgBox "No Data Entered", vbExclamation
        txt.SetFocus
        ValiDateCashBank = False
        Exit Function
    End If
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson Group by pid"
    query = "SELECT firstName FROM tblPerson WHERE tid IN (" & subQuery & ") AND personType=" & GM.party & " AND firstName='" & CashBank & "'"
    If Not isParty Then
        query = query + " AND registrationNo IN (" & GM.groupStr & ") AND registrationNo NOT IN ('Purchase Account') "
    End If
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
       ValiDateCashBank = True
    Else
        MsgBox "Invalid Account. Pls. select the account from list. ", vbExclamation
        txt.SetFocus
        ValiDateCashBank = False
    End If
    rs.Close
End Function
Function isPartyAlreadyPresent(site As DBSite, party As String, txt As TextBox) As Boolean
    isPartyAlreadyPresent = False
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson Group by pid"
    query = "SELECT firstName FROM tblPerson WHERE personType=" & GM.party & " AND firstName='" & CashBank & "'"
    If Not isParty Then
        query = query + " AND registrationNo in ('Cash', 'Bank') "
    End If
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
       isPartyAlreadyPresent = True
    Else
        MsgBox "Invalid Account. Pls. select the account from list. ", vbExclamation
        txt.SetFocus
        isPartyAlreadyPresent = False
    End If
    rs.Close
End Function

Function getMaxNoOfFeesHeads(site2 As DBSite2) As String
    getMaxNoOfFeesHeads = ""
    Dim rs As Recordset
    Set rs = New Recordset
    Dim subQuery As String
    Dim subQuery2 As String
    'query = "SELECT distinct head FROM tblBreakUp "
    
    query = " select head, MAX(headId)FROM( select"
    query = query + " distinct b.head headid"
    query = query + " , (case"
    query = query + " when b.head = '111111' then 'Transport'"
    query = query + " when f.headname is not null then f.headname"
    query = query + " else s.head end )Head"
    query = query + " from tblBreakUp b"
    query = query + " LEFT OUTER JOIN tblFine f ON f.cid = b.head"
    query = query + " LEFT OUTER JOIN tblFeeStucture s on s.cid = b.head ) as t1 GROUP BY HEAD "

    
    'MsgBox query
    
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
      rs.MoveFirst
      While rs.AbsolutePosition <> adPosEOF
          getMaxNoOfFeesHeads = getMaxNoOfFeesHeads + ", " + CheckNull(rs.Fields("head").value)
          rs.MoveNext
      Wend
    rs.Close
    End If
    If Len(getMaxNoOfFeesHeads) > 0 Then
       getMaxNoOfFeesHeads = Right(getMaxNoOfFeesHeads, Len(getMaxNoOfFeesHeads) - Len(", ") + 1)
    End If
End Function
Function CountOccurenceOfString(str1 As String, MainStr As String) As Integer
    CountOccurenceOfString = 0
    Dim count As Integer
    Dim idx As Integer
    For i = 0 To Len(MainStr)
        idx = InStr(MainStr, str1)
        If idx > 0 Then
            MainStr = Right(MainStr, Len(MainStr) - idx)
            count = count + 1
        End If
    Next
    CountOccurenceOfString = count
End Function
Function GetToken(MainStr As String, separator As String, fromIndex As Integer) As String
        GetToken = ""
        MainStr = MainStr + separator
        Dim idx As Integer
        Dim count As Integer
        Dim mstr As String
        For i = 0 To fromIndex + 1
            idx = InStr(MainStr, separator)
            If idx > 0 Then
               mstr = MainStr
               MainStr = Right(MainStr, Len(MainStr) - idx)
               count = count + 1
               If count = fromIndex + 1 Then
                   GetToken = Left(mstr, idx - 1)
                   Exit Function
               End If
            End If
        Next
End Function
Function GetFine(site2 As DBSite2, pid As String, ldate As Date) As Double
    GetFine = 0
    Dim rs As Recordset
    Set rs = New Recordset
    ldate = FormatDateTime(ldate, vbShortDate)
    query = "SELECT  amount FROM tblFine WHERE pid =('" & pid & "')  AND cDate between #" & ldate & "# AND #" & (ldate + 1) & "#"
    query = query + " AND headName NOT IN ('Admission Fee', 'Security') "
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
      rs.MoveFirst
      While rs.AbsolutePosition <> adPosEOF
        GetFine = CheckNullDouble(rs.Fields("amount").value)
      rs.MoveNext
      Wend
    rs.Close
    End If
End Function
Function GetAdmissionFee(site2 As DBSite2, pid As String, ldate As Date) As Double
    GetAdmissionFee = 0
    Dim rs As Recordset
    Set rs = New Recordset
    ldate = FormatDateTime(ldate, vbShortDate)
    query = "SELECT  amount FROM tblFine WHERE pid =('" & pid & "')  AND cDate between #" & ldate & "# AND #" & (ldate + 1) & "#"
    query = query + " AND headName IN ('Admission Fee') "
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
      rs.MoveFirst
      While rs.AbsolutePosition <> adPosEOF
        GetAdmissionFee = CheckNullDouble(rs.Fields("amount").value)
      rs.MoveNext
      Wend
    rs.Close
    End If
End Function
Function GetSecurityDeposit(site2 As DBSite2, pid As String, ldate As Date) As Double
    GetSecurityDeposit = 0
    Dim rs As Recordset
    Set rs = New Recordset
    ldate = FormatDateTime(ldate, vbShortDate)
    query = "SELECT  amount FROM tblFine WHERE pid =('" & pid & "')  AND cDate between #" & ldate & "# AND #" & (ldate + 1) & "#"
    query = query + " AND headName IN ('Security') "
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
      rs.MoveFirst
      While rs.AbsolutePosition <> adPosEOF
        GetSecurityDeposit = CheckNullDouble(rs.Fields("amount").value)
      rs.MoveNext
      Wend
    rs.Close
    End If
End Function
Function GetOneTimeFees(site2 As DBSite2, clas As String, ldate As Date) As Double
    GetOneTimeFees = 0
    Dim rs As Recordset
    Set rs = New Recordset
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblFeeStucture GROUP  BY cid"
    query = "SELECT  amount FROM tblFeeStucture WHERE class =('" & clas & "') AND tid IN (" & subQuery & ")  AND ftype<>'Monthly' AND whichmonth='" & Format(ldate, "MMM") & "'"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    Dim amount As Double
    amount = 0
    If Not rs.EOF Then
      rs.MoveFirst
      While rs.AbsolutePosition <> adPosEOF
        amount = amount + CheckNullDouble(rs.Fields("amount").value)
        rs.MoveNext
      Wend
    End If
    rs.Close
    GetOneTimeFees = amount
End Function
Function GetMonthWiseDiscount(site2 As DBSite2, pid As String, monthName As String, yr As String, head As String) As Double
    Dim dat As Date
    dat = GetDate("10", CStr(monthName), CStr(yr), "10", "10", "am")
        
    ' if head is transport and month is june then discount is 100%
    
    ' june transport discount
    'MsgBox "month " + monthName + " UCase(Trim(monthName)) " + UCase(Trim(monthName)) + + " UCase(Trim(monthName)) " + UCase(Trim(monthName)) + " head " + head
        
    If UCase(Trim(monthName)) = "JUNE" And UCase(Trim(head)) = "TRANSPORT" Then
       
        
        
        GetMonthWiseDiscount = GM.TransportDiscount
        
    Else
        GetMonthWiseDiscount = GetDiscount(site2, pid, dat, head)
    
    End If
    
   ' MsgBox "monthName : " & CStr(GetMonthWiseDiscount)
        
    
End Function
Function CalculateYearMonthWiseOriginal(dt As Date, monthName As String) As String
        Dim yr As Integer
        yr = CInt(GetYear(dt))
        Dim endMonth As Integer
        endMonth = CInt(Format(monthName & "/10/04", "mm"))
        'If endMonth < GetSetting(site, "StartFinancialYearMonth") Then
        If endMonth > 10 Then
            yr = yr
        ElseIf endMonth < 4 Then
            yr = yr + 1
        End If
        
        ' sandeep
        
        'MsgBox CStr(yr)
        CalculateYearMonthWiseOriginal = CStr(yr)
End Function
Function CalculateYearMonthWise(dt As Date, monthName As String) As String
        
                       
        Dim site As New DBSite
        Dim site2 As New DBSite2
        
        Dim fy As Integer
        fy = CInt(GetSettingHome(site2, "financialYear"))
        
        Dim yr As Integer
        yr = CInt(GetYear(dt))
        
        Dim feeMonth As Integer
        feeMonth = CInt(Format(monthName & "/10/04", "mm"))
        
        Dim fm As Integer
        financialMonth = GetSetting(site, "StartFinancialYearMonth")
        
        
        If feeMonth >= financialMonth Then
            yr = fy
        Else
            yr = fy + 1
        End If
         
        'MsgBox CStr(yr)
        CalculateYearMonthWise = CStr(yr)
End Function

Public Function folioNo(site2 As DBSite2, lgrNo As String) As String
    If IsNull(lgrNo) Or Len(lgrNo) < 1 Then
        lgrNo = ""
    Else
        Dim rs As Recordset
        Set rs = New Recordset
        query = "SELECT group_Name FROM vw_Ledger WHERE cid = '" & Trim(lgrNo) & "'"
        rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
        If Not rs.EOF Then
            lgrNo = rs.Fields(0).value
        End If
        rs.Close
    End If
    folioNo = FormatFolioNo(lgrNo)
End Function
Public Function FormatFolioNo(num As Variant) As String
    If IsNull(num) Or Len(num) < 1 Then
        num = ""
     Else
        'num = "05/0" & num
        num = Right(GetYear(Now), 2) & "/0" & num
    End If
    FormatFolioNo = num
End Function
Function isFeesInWhichmonth(mnth As String, dt As Date) As Boolean
    isFeesInWhichmonth = False
    If Len(mnth) < 1 Then
        Exit Function
    End If
    Dim currentMonth As String
    currentMonth = Format(dt, "mmm")
    If GetMonthOrder(mnth) <= GetMonthOrder(currentMonth) Then
        isFeesInWhichmonth = True
    End If
End Function
 Function GetMonthOrder(mnth As String) As Integer
    Dim mnthOrder As Integer
    GetMonthOrder = 0
    If Len(mnth) < 1 Then
        Exit Function
    End If
    mnth = UCase(Trim(mnth))
    Select Case mnth
        Case UCase("Apr")
            mnthOrder = 1
        Case UCase("May")
            mnthOrder = 2
        Case UCase("Jun")
            mnthOrder = 3
        Case UCase("Jul")
            mnthOrder = 4
        Case UCase("Aug")
            mnthOrder = 5
        Case UCase("Sep")
            mnthOrder = 6
        Case UCase("Oct")
            mnthOrder = 7
        Case UCase("Nov")
            mnthOrder = 8
        Case UCase("Dec")
            mnthOrder = 9
        Case UCase("Jan")
            mnthOrder = 10
        Case UCase("Feb")
            mnthOrder = 11
        Case UCase("Mar")
            mnthOrder = 12
    End Select
    GetMonthOrder = mnthOrder
End Function
Function GetDiscountInPercent(site As DBSite, site2 As DBSite2, pid As String, DiscountAmount As String, head As String) As String
    If Not IsNumeric(CInt(pid)) Then
        MsgBox "Invalid Student ID.."
    End If
    Dim tutionAmount As Double
    tutionAmount = 1
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT dept FROM tblPerson WHERE pid ='" & pid & "' AND  tid IN (SELECT MAX(tid) FROM tblPerson WHERE pid = '" & pid & "' GROUP BY pid  )"
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim clas As String
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            clas = CheckNull(rs.Fields("dept").value)
            rs.MoveNext
        Wend
     rs.Close
     End If
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblFeeStucture WHERE class IN ( '" & clas & "') GROUP  BY cid"
    'query = "SELECT Amount  FROM tblFeeStucture WHERE tid IN (" & subQuery & ") AND head ='" & GM.discountHead & "'"
    query = "SELECT Amount FROM tblFeeStucture WHERE tid IN (" & subQuery & ") AND head ='" & head & "'"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            tutionAmount = CheckNullDouble(rs.Fields("amount").value)
        rs.MoveNext
        Wend
    rs.Close
    End If
    If Len(DiscountAmount) < 1 Then
        DiscountAmount = "0"
    End If
    
    If DiscountAmount = "-" Then
        DiscountAmount = "0"
    End If
    
    If Len(tutionAmount) < 1 Then
        DiscountAmount = "1"
    End If
    GetDiscountInPercent = (CDbl(DiscountAmount) * 100) / tutionAmount
End Function
Sub ChangePassword(site As DBSite, password As String)
    site.conn.Execute "UPDATE tblPerson SET UserPassword='" + password + "' WHERE pid='999'"
End Sub
Sub FormResolution(frm As Form)
  
    'frm.BackColor = &H8000& ' green
    'frm.BackColor = RGB(0, 169, 200) ' 14-15 blue
    'frm.BackColor = RGB(200, 204, 214)
    frm.BackColor = RGB(245, 245, 220) 'white
    'frm.BackColor = RGB(245, 245, 220)
    
    
    
    For Each control In frm.Controls
        If Left(control.Name, 3) = "lbl" Or Left(control.Name, 3) = "btn" Or Left(control.Name, 5) = "Label" Or Left(control.Name, 3) = "grid" Or Left(control.Name, 5) = "Frame" Or Left(control.Name, 2) = "ck" Or Left(control.Name, 2) = "op" Then  'Or Trim(Left(control.Name, 7)) = Trim("Picture") Then
               control.BackColor = frm.BackColor
              ' control.BackStyle = 0   ' transparent
        End If
        If UCase(Left(control.Name, 4)) = UCase("grid") Then
            control.BackColorBkg = frm.BackColor
            control.BackColor = frm.BackColor
            'control.ForeColor = vbWhite
            control.ForeColor = vbBlack
        End If
        
        
        If Left(control.Name, 3) = "lbl" Or Left(control.Name, 5) = "Label" Then     'Or Trim(Left(control.Name, 7)) = Trim("Picture") Then
              ' control.BackColor = frm.BackColor
              control.BackStyle = 0   ' transparent
              'control.ForeColor = vbWhite
              control.ForeColor = vbBlack
        End If
        
       If Left(control.Name, 3) = "btn" Then
            control.BackColor = RGB(250, 255, 255)
       End If
        
       If Left(control.Name, 4) = "cmbo" Then
            control.BackColor = frm.BackColor
            'control.ForeColor = vbWhite
            control.ForeColor = vbBlack
       End If
        
        
        
    Next control
End Sub
Sub FormResolutionOld(frm As Form)
   Dim ratioX, ratioY As Double
   ratioX = 0.75 'Screen.Width / 12000
   ratioY = 0.75 'Screen.Height / 12000
   frm.Width = frm.Width * ratioX
   frm.Height = frm.Height * ratioY
   frm.WindowState = 0
   frm.Move 0, 0
   Dim control
   For Each control In frm.Controls
       If Not UCase(control.Name) = UCase("dlg1") Then
            'control.Width = (control.Width * ratioX)
            control.Width = (control.Width * 0.81)
            If Not UCase(Left(control.Name, 5)) = UCase("combo") Then
                control.Height = control.Height * ratioY
            End If
            control.Move control.Left * ratioX, control.Top * ratioY
            If Left(control.Name, 3) = "lbl" Or Left(control.Name, 3) = "btn" Or Left(control.Name, 5) = "Label" Or Left(control.Name, 3) = "txt" Then
                 control.Font = "Calibri"
                 control.FontSize = control.FontSize * 0.85
            End If
            If UCase(Left(control.Name, 4)) = UCase("grid") Then
               control.Font.Size = control.Font.Size * 0.85
            End If
      End If
  Next control
 frm.WindowState = 2
End Sub
Function isPartyInLedger(site2 As DBSite2, party As String) As Boolean
    isPartyInLedger = False
    Dim rs As Recordset
    Set rs = New Recordset
    party = Trim(party)
    query = "SELECT count(*) FROM vw_Ledger WHERE acName = '" & Trim(party) & "'"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        Dim count As Integer
        count = CInt(rs.Fields(0).value)
        isPartyInLedger = count > 1
    End If
    rs.Close
    If UCase(party) = UCase("Student Account") Or UCase(party) = UCase("Cash") Then
        isPartyInLedger = True
    End If
End Function
Public Sub DeleteLedger(site2 As DBSite2)
    Set fs = CreateObject("Scripting.FileSystemObject")
    Dim folderName As String
    folderName = "backup" & Replace(Replace(str(Now), "/", ""), ":", "")
    MkDir folderName
    fs.CopyFile App.Path & "\*.mdb", App.Path & "\" & folderName & "\", False
    fs.CopyFile App.Path & "\*.exe", App.Path & "\" & folderName & "\", False
    site2.conn.Execute "DELETE FROM tblLedger "
    site2.conn.Execute "DELETE FROM tblBreakUp "
    site2.conn.Execute "DELETE FROM tblBreakUpReport "
    Dim site As New DBSite
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson WHERE firstName IN ('Cash','Student Account') GROUP BY firstname"
    site.conn.Execute "DELETE FROM tblPerson WHERE personType = 3 AND tid NOT IN (" + subQuery + ") "
    site.conn.Execute "UPDATE tblPerson SET Mother=0 WHERE  firstName IN ('Cash','Student Account') "
    Set p = New Person
    Dim cid As Long
    Dim ldate As Date
    Dim year As String
    year = GetYear(Now)
    ldate = GetDate("1", "04", year, "10", "10", "AM")
    cid = p.getID(site.conn, "cid")
    Call saveLedger(site2, cid, ldate, "Cash", "Opening Balance", 0, "Cash", "", True, "Dr", -1, "")
    Call saveLedger(site2, cid, ldate, "Student Account", "Opening Balance", 0, "Cash", "", True, "Cr", -1, "")
    
End Sub
Sub setListProperties(List1 As ListBox)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    List1.FontSize = FntSize
    List1.FontBold = True
End Sub
Function getDateInWords(dt As Date) As String
    getDateInWords = ""
    Dim day, year As String
    day = GetDay(dt)
    year = GetYear(dt)
    Dim days, zeroToNine, tenToNienty, elevenToNienteen
    days = Array("", "First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Nineth", "Tenth")
    zeroToTen = Array("", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten")
    tenToNienty = Array("", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety")
    elevenToNienteen = Array("Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen")
    Dim whichDay As String
    Select Case Mid(day, 1, 1)
        Case 0
            whichDay = days(Mid(day, 2, 1))
        Case 1
            whichDay = elevenToNienteen(Mid(day, 2, 1)) + "th"
            If whichDay = "Twelveth" Then
               whichDay = "Twelfth"
            End If
        Case 2, 3
            If CInt(Mid(day, 2, 1)) = 0 Then
                whichDay = Left(tenToNienty(Mid(day, 1, 1)), Len(tenToNienty(Mid(day, 1, 1))) - 1) + "ieth"
            Else
                whichDay = tenToNienty(Mid(day, 1, 1)) + " " + days(Mid(day, 2, 1))
            End If
    End Select
    Dim century As String
    If Left(year, 2) = "20" Then
        century = " Two Thousand "
    Else
        century = " Nineteen Hundred "
    End If
    Dim yrs As String
    yrs = tenToNienty(CInt(Mid(year, 3, 1))) + " " + zeroToTen(CInt(Right(year, 1)))
    If CInt(Mid(year, 3, 1)) = 1 Then
        yrs = elevenToNienteen(CInt(Mid(year, 4, 1)))
    End If
    getDateInWords = whichDay + " of " + Format(dt, "mmmm") + century + yrs
End Function
Function checkPassOutClass(site As DBSite, pid As String) As Boolean
    checkPassOutClass = False
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson WHERE pid ='" & pid & "' Group by pid"
    query = "SELECT dept FROM tblPerson WHERE tid IN (" & subQuery & ") "
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        checkPassOutClass = UCase(CheckNull(rs.Fields("dept"))) = UCase("Pass Out")
    End If
    rs.Close
End Function
Function checkTCGivenClass(site As DBSite, pid As String) As Boolean
    checkTCGivenClass = False
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson WHERE pid ='" & pid & "' Group by pid"
    query = "SELECT pin FROM tblPerson WHERE tid IN (" & subQuery & ") "
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        checkTCGivenClass = Len(Trim(CheckNull(rs.Fields("pin")))) > 0
    End If
    rs.Close
End Function
Function GetDiscountBalli(site2 As DBSite2, pid As String, dt As Date, head As String) As Double
    GetDiscountBalli = 0
    Dim site As New DBSite
    Dim endMonth As Integer
    endMonth = CInt(Format(dt, "mm"))
    If endMonth < GetSetting(site, "StartFinancialYearMonth") Then
       endMonth = endMonth + 12
    End If
    For i = GetSetting(site, "StartFinancialYearMonth") To endMonth
        Dim mnth As Integer
        Dim yr As Integer
        yr = CInt(GetYear(dt))
        If endMonth > 12 And i < 13 Then
            yr = yr - 1
        End If
        If i > 12 Then
           mnth = i - 12
        Else
           mnth = i
        End If
        Dim dat As Date
        dat = GetDate("10", CStr(mnth), CStr(yr), "10", "10", "am")
        'MsgBox dat & " discount = " & GetDiscount(site2, pid, dat, head)
        GetDiscountBalli = GetDiscountBalli + GetDiscount(site2, pid, dat, head)
    Next
  End Function
Public Function GetRegistrationNo(site As DBSite, id As String) As String
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson WHERE pid='" & id & "' GROUP By pid "
    query = "SELECT RegistrationNo FROM tblPerson WHERE tid IN (" + subQuery + ")"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim prefix, nm As String
    If Not rs.EOF Then
         GetRegistrationNo = CheckNull(rs.Fields("RegistrationNo").value)
    Else
        GetRegistrationNo = ""
    End If
    rs.Close
End Function
Public Function GetAdmissionNo(site As DBSite, id As String) As String
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson WHERE pid='" & id & "' GROUP By pid "
    query = "SELECT admissionNo FROM tblPerson WHERE tid IN (" + subQuery + ")"
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim prefix, nm As String
    If Not rs.EOF Then
         GetAdmissionNo = CheckNull(rs.Fields("admissionNo").value)
    Else
        GetAdmissionNo = ""
    End If
    rs.Close
End Function

Public Sub PrintRightAlign(X As Long, Y As Long, str As String)
    X = X - ((Len(str) - 3) * 100) + 400
    Printer.CurrentX = X
    Printer.CurrentY = Y
    Printer.Print str
End Sub
Function countBackMonths(checkesMnths As String, countMnths As Integer) As Integer
    Dim currentMonth As String
    currentMonth = Format(Now, "mmmm")
    count = 1
    Dim i As Integer
    Dim after As Integer
    after = 20
    For i = 0 To countMnths - 1
        Dim tk As String
        tk = GetToken(Trim(checkesMnths), ",", i)
        If Trim(tk) = Trim(currentMonth) Then
            after = i
        End If
        If i > after Then
            count = count + 1
        End If
    Next
    'countBackMonths = count
    
    countBackMonths = countMnths
End Function
Function isWhichMonthSeleted(checkesMnths As String, WhichMonth As String) As Boolean
     isWhichMonthSeleted = InStr(1, checkesMnths, WhichMonth, 1) = 0
End Function
Function isWhichMonthSeleted1(checkesMnths As String, WhichMonth As String, countMonths As Integer) As Boolean
     isWhichMonthSeleted1 = False
     Dim i As Integer
     If Len(WhichMonth) > 0 Then
        checkesMnths = Trim(checkesMnths)
        WhichMonth = Format("01/" & WhichMonth & "/07", "mmmm")
         For i = 0 To countMonths - 1
            Dim monthName As String
            monthName = GetToken(checkesMnths, ",", i)
            If Format("01/" & monthName & "/07", "mmmm") = Format("01/" & WhichMonth & "/07", "mmmm") Then
                isWhichMonthSeleted1 = True
            End If
        Next
     End If
End Function
Function AmountInWords(amt As String) As String
    AmountInWords = ""
    Dim noOfZeros, zeroToNine, tenToNienty, elevenToNienteen
    noOfZeros = Array("", "Hundred", "Thousand", "Lac", "Crore")
    zeroToTen = Array("", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten")
    tenToNienty = Array("", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety")
    elevenToNienteen = Array("Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen")
    Dim amtInWrds As String
    Dim originalAmt As String
    originalAmt = amt
    '.00
    amt = Left(amt, Len(amt) - 3)
    Select Case Len(amt)
        Case 0
            amtInWrds = ""
        Case 1
            amtInWrds = zeroToTen(amt)
        Case 2
            amtInWrds = tenToNienty(Mid(amt, 1, 1)) + " " + zeroToTen(Mid(amt, 2, 1))
            If CInt(Mid(amt, 1, 1)) = 1 Then
                amtInWrds = elevenToNienteen(Mid(amt, 2, 1))
            End If
        Case 3
            amtInWrds = zeroToTen(Mid(amt, 1, 1)) + " Hundred "
            If CInt(Mid(amt, 2, 1)) = 1 Then
                amtInWrds = amtInWrds + elevenToNienteen(Mid(amt, 3, 1))
            Else
                amtInWrds = amtInWrds + tenToNienty(Mid(amt, 2, 1)) + " " + zeroToTen(Mid(amt, 3, 1))
            End If
        Case 4 ' thousand
            amtInWrds = zeroToTen(Mid(amt, 1, 1)) + " Thousand"
            If CInt(Mid(amt, 2, 1)) <> 0 Then
                amtInWrds = amtInWrds + " " + zeroToTen(Mid(amt, 2, 1)) + " Hundred"
            End If
            If CInt(Mid(amt, 3, 1)) = 1 Then
                amtInWrds = amtInWrds + " " + elevenToNienteen(Mid(amt, 4, 1))
            Else
                amtInWrds = amtInWrds + " " + tenToNienty(Mid(amt, 3, 1)) + " " + zeroToTen(Mid(amt, 4, 1))
            End If
            
         Case 5 ' ten thousand
            amtInWrds = tenToNienty(Mid(amt, 1, 1)) + " " + zeroToTen(Mid(amt, 2, 1))
            
            If CInt(Mid(amt, 1, 1)) = 1 Then
                amtInWrds = elevenToNienteen(Mid(amt, 2, 1))
            End If
            amtInWrds = amtInWrds + " Thousand "
            
            If CInt(Mid(amt, 3, 1)) <> 0 Then
               amtInWrds = amtInWrds + " " + zeroToTen(Mid(amt, 3, 1)) + " Hundred"
            End If
            If CInt(Mid(amt, 4, 1)) = 1 Then
                amtInWrds = amtInWrds + " " + elevenToNienteen(Mid(amt, 5, 1))
            Else
                amtInWrds = amtInWrds + " " + tenToNienty(Mid(amt, 4, 1)) + " " + zeroToTen(Mid(amt, 5, 1))
            End If
         Case 6 ' lac
            amtInWrds = zeroToTen(Mid(amt, 1, 1)) + " Lac "
            
            If CInt(Mid(amt, 2, 1)) > 1 Then
                amtInWrds = amtInWrds + tenToNienty(Mid(amt, 2, 1)) + " " + zeroToTen(Mid(amt, 3, 1)) + " Thousand "
            ElseIf CInt(Mid(amt, 2, 1)) = 1 Then
                amtInWrds = amtInWrds + elevenToNienteen(Mid(amt, 3, 1)) + " Thousand "
            End If
            
            
            If CInt(Mid(amt, 4, 1)) <> 0 Then
               amtInWrds = amtInWrds + " " + zeroToTen(Mid(amt, 4, 1)) + " Hundred"
            End If
            If CInt(Mid(amt, 5, 1)) = 1 Then
                amtInWrds = amtInWrds + " " + elevenToNienteen(Mid(amt, 6, 1))
            Else
                amtInWrds = amtInWrds + " " + tenToNienty(Mid(amt, 5, 1)) + " " + zeroToTen(Mid(amt, 6, 1))
            End If
         Case 7 '10 lac
            amtInWrds = tenToNienty(Mid(amt, 1, 1)) + " " + zeroToTen(Mid(amt, 2, 1))
            If CInt(Mid(amt, 1, 1)) = 1 Then
                amtInWrds = elevenToNienteen(Mid(amt, 2, 1))
            End If
            amtInWrds = amtInWrds + " Lacs "
            
            If CInt(Mid(amt, 3, 1)) > 1 Then
                amtInWrds = amtInWrds + tenToNienty(Mid(amt, 3, 1)) + " " + zeroToTen(Mid(amt, 4, 1)) + " Thousand "
            ElseIf CInt(Mid(amt, 3, 1)) = 1 Then
                amtInWrds = amtInWrds + elevenToNienteen(Mid(amt, 4, 1)) + " Thousand "
            End If
            
            If CInt(Mid(amt, 5, 1)) <> 0 Then
               amtInWrds = amtInWrds + " " + zeroToTen(Mid(amt, 5, 1)) + " Hundred "
            End If
            If CInt(Mid(amt, 6, 1)) = 1 Then
                amtInWrds = amtInWrds + elevenToNienteen(Mid(amt, 7, 1))
            Else
                amtInWrds = amtInWrds + tenToNienty(Mid(amt, 6, 1)) + " " + zeroToTen(Mid(amt, 7, 1))
            End If
        End Select
     If CInt(Right(originalAmt, 2)) > 0 Then
        Dim paseAmt, pase As String
        paseAmt = Right(originalAmt, 2)
        pase = tenToNienty(Mid(paseAmt, 1, 1)) + " " + zeroToTen(Mid(paseAmt, 2, 1))
        If CInt(Mid(paseAmt, 1, 1)) = 1 Then
            pase = elevenToNienteen(Mid(paseAmt, 2, 1))
        End If
        amtInWrds = amtInWrds + " and " + pase + " paise "
     End If
    AmountInWords = amtInWrds + " only"
End Function
Public Function GetSettingHome(site2 As DBSite2, whichSetting As String) As String
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT " + whichSetting + " FROM tblHome"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    Dim exeName As String
    If Not rs.EOF Then
        GetSettingHome = CheckNull(rs.Fields(whichSetting).value)
    End If
    rs.Close
    
End Function
Public Function GetTCNo(site As DBSite) As String
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT  tcid FROM tblGetID"
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim exeName As String
    If Not rs.EOF Then
        GetTCNo = CheckNull(rs.Fields("tcid").value)
    End If
    rs.Close
End Function
Public Sub SetTCNo(site As DBSite, tcid As String)
    If IsNumeric(tcid) Then
        site.conn.Execute "UPDATE tblGetID SET tcid=" & CInt(tcid)
    End If
End Sub
Public Function checkFinancialYear(site2 As DBSite2, day As String, month As String, yr As String) As Boolean
      Dim dt As Date
      dt = CDate(Format(GetDate(day, month, yr, "", "", ""), "mm/dd/yyyy"))
      Dim fy As String
      Dim startYear, endYear As Date
      fy = GetSettingHome(site2, "financialYear")
      startYear = CDate("04/01/20" & fy)
      endYear = CDate("03/31/20" + Format(CDate("03/31/20" & fy + 1), "yy"))
      checkFinancialYear = (dt >= startYear And dt <= endYear)
      checkFinancialYear = True
      
End Function
Public Function FinancialStartYear(site2 As DBSite2) As String
      Dim fy As String
      Dim startYear As Date
      'Dim site2 As DBSite2
      fy = GetSettingHome(site2, "financialYear")
      FinancialStartYear = Format(CDate("04/01/20" & fy), "dd-mmm-yyyy")
End Function
Public Function FinancialEndYear() As String
      Dim fy As String
      Dim startYear As Date
      Dim site2 As DBSite2
      fy = GetSettingHome(site2, "financialYear")
      FinancialEndYear = Format(CDate("03/31/20" + Format(CDate("03/31/20" & fy + 1), "yy")), "dd-mmm-yyyy")
End Function
Public Function LastClosingBalance(site2 As DBSite2, fromdate As Date, party As String) As Double
    LastClosingBalance = 0
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT  top 1 balance FROM tblLedgerBalance WHERE ldate < #" & fromdate & "# ORDER BY LDATE DESC"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        LastClosingBalance = CheckNullDouble(rs.Fields("balance").value)
    End If
    rs.Close
End Function
Public Function isLastClosingSPisDr(site2 As DBSite2, fromdate As Date, party As String) As Boolean
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT  top 1 sp FROM tblLedgerBalance WHERE ldate < #" & fromdate & "# ORDER BY LDATE DESC"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        isLastClosingSPisDr = UCase(Trim(CheckNull(rs.Fields("sp").value))) = UCase("Dr")
    End If
    rs.Close
End Function
Sub LoVPurchase(site As DBSite, colName As String, List1 As ListBox, txt As String)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    'If Me.isParty Then
       query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE personType=" & GM.party & " AND registrationNo in ('Purchase Account') AND " & colName & " like '" & txt & "%' ORDER BY " + colName
    'End If
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
End Sub
Function ValiDatePurchase(site As DBSite, CashBank As String, txt As TextBox, isParty As Boolean) As Boolean
    ValiDatePurchase = True
    If Len(CashBank) < 1 Then
        MsgBox "No Data Entered", vbExclamation
        txt.SetFocus
        ValiDatePurchase = False
        Exit Function
    End If
    Dim query As String
    Dim subQuery As String
    subQuery = "SELECT MAX(tid) FROM tblPerson Group by pid"
    query = "SELECT firstName FROM tblPerson WHERE tid IN (" & subQuery & ") AND personType=" & GM.party & " AND firstName ='" & CashBank & "'"
    query = query + " AND registrationNo in ('Purchase Account') "
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
       ValiDatePurchase = True
    Else
        MsgBox "Invalid Account. Pls. select the account from list. ", vbExclamation
        txt.SetFocus
        ValiDatePurchase = False
    End If
    rs.Close
End Function
Sub lovPartyOnChange(site As DBSite, colName As String, List1 As ListBox, txt As String)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    Dim query As String
    query = "SELECT DISTINCT " + colName + " FROM tblPerson ORDER BY " + colName
    If Me.isPrincipal And (colName = "Dept" Or colName = "Dname") Then
       query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE userID='" & GM.principalUserID & "' ORDER BY " + colName
    End If
    If Me.isParty Then
       query = "SELECT DISTINCT " + colName + " FROM tblPerson WHERE personType=" & GM.party & " AND " + colName + " like '" & txt & "%' ORDER BY " + colName
    End If
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields(colName).value)) Then
                List1.AddItem rs.Fields(colName).value
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
    List1.Visible = True
    List1.FontBold = True
End Sub
Sub LovAuto(List1 As ListBox, txtBox As TextBox)
    If List1.ListCount = 1 Then
        List1.Selected(0) = True
        txtBox.Text = List1.Text
        FOCUSME txtBox
        List1.Visible = False
    End If
End Sub
Sub deleteLedgerRecord(site2 As DBSite2, lid As String, fid As String)
    
    
    
    If Len(lid) > 0 Then
        lid = Trim(lid)
        Dim lidC, lidD, lidO, lidJ, str As String
        lidC = formatString(lid + "C")
        lidD = formatString(lid + "D")
        lidO = formatString(lid + "O")
        lidJ = formatString(lid + "J")
        str = lidC + ", " + lidD + ", " + lidO + ", " + lidJ
        'MsgBox " str " & str & " lid " & lid
        site2.conn.Execute "DELETE FROM tblLedger WHERE cid IN (" & str & ")"
        site2.conn.Execute "DELETE FROM tblBreakUp WHERE cid IN (" & lid & ")"
        Dim qry As String
        qry = "DELETE FROM tblFeeMonth WHERE BreakUpId IN (" & lid & ")"
        
        
        site2.conn.Execute qry
        
        
     ElseIf Len(fid) > 4 Then ' delete fom ledger
        fid = Trim(fid)
        fid = Right(fid, Len(fid) - 4)
        
        'MsgBox " fid " & fid
        site2.conn.Execute "DELETE FROM tblLedger WHERE Group_Name = '" & fid & "'"
        
        qry = "Delete from tblFeeMonth WHERE breakUpid IN (SELECT Cid FROM tblBreakUp Where ReceiptNo = " & fid & ")"
        
        site2.conn.Execute qry
                        
                
        site2.conn.Execute "DELETE FROM tblBreakUp WHERE ReceiptNo IN (" & fid & ")"
        
        
        
        
        
     End If
End Sub
Sub lovFeetype(List1 As ListBox, txt As String)
    List1.Clear
    List1.BackColor = RGB(164, 209, 255)
    List1.FontSize = FntSize
    If UCase(txt) = UCase("m") Then
        List1.AddItem "Monthly"
    ElseIf UCase(txt) = UCase("a") Then
        List1.AddItem "Annual"
    Else
        List1.AddItem "Annual"
        List1.AddItem "Monthly"
    End If
    List1.Visible = True
    List1.FontBold = True
End Sub
Sub SetGroupInLedger(site As DBSite, site2 As DBSite2)
    Dim rsPerson As Recordset
    Set rsPerson = New Recordset
    Dim queryPerson As String
    queryPerson = "SELECT firstName, registrationNo FROM tblPerson WHERE tid IN (SELECT MAX(tid)FROM tblPerson GROUP BY pid) AND personType=3"
    rsPerson.Open queryPerson, site.conn
    If Not rsPerson.EOF Then
        rsPerson.MoveFirst
        While rsPerson.AbsolutePosition <> adPosEOF
          site2.conn.Execute "UPDATE tblledger SET ch_group='" + CheckNull(rsPerson.Fields("registrationNo")) + "' WHERE acname='" + CheckNull(rsPerson.Fields("firstName")) + "'"
          rsPerson.MoveNext
        Wend
    End If
    rsPerson.Close
End Sub
Sub SetUnderGroupInLedger(site As DBSite, site2 As DBSite2)
    Dim rsPerson As Recordset
    Set rsPerson = New Recordset
    Dim queryPerson As String
    queryPerson = "SELECT GroupName, UnderGroup FROM tblGroup "
    rsPerson.Open queryPerson, site.conn
    If Not rsPerson.EOF Then
        rsPerson.MoveFirst
        While rsPerson.AbsolutePosition <> adPosEOF
          site2.conn.Execute "UPDATE tblledger SET undergroup='" + CheckNull(rsPerson.Fields("UnderGroup")) + "' WHERE ch_group='" + CheckNull(rsPerson.Fields("groupName")) + "'"
          rsPerson.MoveNext
        Wend
    End If
    rsPerson.Close
End Sub
Sub saveBreakUpOld(site2 As DBSite2, cid As Long, dt As Date, pid As String, head As String, HeadFee As String, amount As Double, receiptNo As String, checkedMonths As String)
        
        
            
            query = "INSERT INTO tblBreakUp(cid, pid, bDate, head, HeadFee, amount, receiptNo) VALUES(" & cid & ", " & pid & " , '" & toSQLDate(dt) & "',  " & formatString(head) & ",  " & formatString(HeadFee) & ", " & amount & ", " & formatString(receiptNo) & ") "
            site2.conn.Execute query
            
        
        '4444
        
        
        Dim i As Integer
        
        Dim arrMonths() As String
        
        arrMonths = Split(checkedMonths, ",")
        
        Dim amountBymnth As Double
        amountBymnth = (amount / (UBound(arrMonths) + 1))
        
        For i = 0 To UBound(arrMonths)
            Dim monthName As String
            monthName = arrMonths(i)
            
            
            query = "INSERT INTO tblFeeMonth(BreakUpId, pid, FeeMonth, Head, FeeAmount) VALUES(" & cid & ", " & pid & " ,  " & GetMonthNumber(monthName) & " ,  " & formatString(head) & ", " & amountBymnth & ") "
            site2.conn.Execute query
        Next
        
End Sub
Sub saveBreakUp(site2 As DBSite2, cid As Long, dt As Date, pid As String, head As String, headDetails As String, HeadFee As String, amount As Double, receiptNo As String, checkedMonths As String)
        '55555
            
        Dim headId As String
        Dim FeeType As String
        Dim WhichMonth As String
        
        headId = GetHeadDetails(headDetails, "CID")
        FeeType = GetHeadDetails(headDetails, "FTYPE")
        WhichMonth = GetHeadDetails(headDetails, "WHICHMONTH")
            
        query = "INSERT INTO tblBreakUp(cid, pid, bDate, head, HeadFee, amount, receiptNo) VALUES(" & cid & ", " & pid & " , '" & toSQLDate(dt) & "',  " & formatString(headId) & ",  " & formatString(HeadFee) & ", " & amount & ", " & formatString(receiptNo) & ") "
        site2.conn.Execute query
              
        If UCase(FeeType) = UCase("Monthly") Then
        
            Dim i As Integer
            Dim arrMonths() As String
            Dim amountBymnth As Double
            arrMonths = Split(checkedMonths, ",")
            amountBymnth = (amount / (UBound(arrMonths) + 1))
            
            For i = 0 To UBound(arrMonths)
                Dim monthName As String
                monthName = arrMonths(i)
                query = "INSERT INTO tblFeeMonth(BreakUpId, pid, FeeMonth, head, FeeAmount) VALUES(" & cid & ", " & pid & " ,  " & GetMonthNumber(monthName) & " ,  " & formatString(headId) & ", " & amountBymnth & ") "
                site2.conn.Execute query
            Next
        
        ElseIf UCase(FeeType) = UCase("One Time") Or UCase(FeeType) = UCase("Annual") Then
            query = "INSERT INTO tblFeeMonth(BreakUpId, pid, FeeMonth, Head, FeeAmount) VALUES(" & cid & ", " & pid & " ,  " & GetMonthNumber(WhichMonth) & " ,  " & formatString(headId) & ", " & amount & ") "
            site2.conn.Execute query
        End If
        
End Sub
Function GetHeadDetails(headDtl As String, whichDetail As String) As String
    GetHeadDetails = ""
    'cid, ftype, whichmonth
    ' 5555
    'Dim arrMonths() As String
    'arrMonths = Split(checkedMonths, ",")
    
    If whichDetail = "CID" Then
        GetHeadDetails = Split(headDtl, "|")(0)
    ElseIf whichDetail = "FTYPE" Then
        GetHeadDetails = Split(headDtl, "|")(1)
    ElseIf whichDetail = "WHICHMONTH" Then
        GetHeadDetails = Split(headDtl, "|")(2)
    End If
    
End Function




Function replaceSpecialCharacters(str As String) As String
    replaceSpecialCharacters = ""
    Dim splCharacter As String
    Dim splCharacters
    splCharacters = Array("(", ")", "-", ".", "'", "#", "@", " ", "&")

    For i = 0 To UBound(splCharacters)
        splCharacter = splCharacters(i)
        str = Replace(str, splCharacter, "")
    Next
     replaceSpecialCharacters = str
End Function
Public Function isDiscountHead(site2 As DBSite2, head As String) As Boolean
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    
    query = " SELECT 'Transport' "
    query = query + " UNION SELECT discountHead FROM tblDiscount WHERE discountHead = " & formatString(head)
    
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    isDiscountHead = Not rs.EOF
    rs.Close
End Function
Function sumOfBreakUpCols(site2 As DBSite2, colName As String) As String
    sumOfBreakUpCols = "0.00"
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT SUM(" & colName & ") FROM tblBreakupReport "
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            sumOfBreakUpCols = FormatDouble(CheckNull(rs.Fields(0).value))
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function
Function GetPid(site As DBSite, admNo As String) As String
    GetPid = ""
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    subQuery = "SELECT MAX(tid) FROM tblPerson Group by pid"
    query = "SELECT pid FROM tblPerson WHERE tid in (" & subQuery & ") AND admissionNo='" & admNo & "'"
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetPid = CheckNull(rs.Fields(0).value)
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function
Public Function ifTableExists(site2 As DBSite2, tblName As String) As Boolean
    ifTableExists = False
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "Select Name from SysObjects Where Name='" & tblName & "'"
    rs.Open query, site2.conn
    ifTableExists = Not rs.EOF
    rs.Close
End Function


Public Function Export2CSV_GetRows(rsSource As ADODB.Recordset, sFolder As String, sFilename As String, iBufferSize As Integer)
    
    
    Dim fldTemp  As ADODB.Field
    Dim iFile As Integer
    Dim arrRSData As Variant
    Dim bNotFirstColumn As Boolean
    Dim bContinue As Boolean
    Dim iCols As Integer
    Dim iRows As Integer
    Dim lTotalRows As Long
    Dim i As Integer
    Dim j As Integer
      
    'Note: sFolder must have trailing slash.
    
    'Open the CSV file export
    iFile = FreeFile
    Open sFolder & sFilename For Output Access Write Lock Read Write As #iFile
        
    'Create Header in CSV, all the field names
    For Each fldTemp In rsSource.Fields
        If bNotFirstColumn Then
            Print #iFile, ",";
        Else
            bNotFirstColumn = True
        End If
                
        Print #iFile, Chr(34) & fldTemp.Name & Chr(34);
        
    Next
    Print #iFile, ""
    
    'GetRows until the recordset is empty
    bContinue = True
    Do While bContinue
        
        arrRSData = rsSource.GetRows(iBufferSize, 0)
        
        iCols = UBound(arrRSData, 1)
        iRows = UBound(arrRSData, 2)
        
        'Loop through the data, output to the CSV file.
        For i = 0 To iRows
            For j = 0 To iCols
                If j > 0 Then
                    Print #iFile, ",";
                End If
                
                Print #iFile, Chr(34) & arrRSData(j, i) & Chr(34);
            Next
            
            Print #iFile, ""
        Next
        
        If (iRows + 1) < iBufferSize Then
            bContinue = False
        End If
        
        lTotalRows = lTotalRows + (iRows + 1)
        Debug.Print lTotalRows & " completed."
        
            
    Loop
    Close #iFile

End Function
Function toSQLDate(dt As Date) As String

  Dim dateInputStr As String
  dateInputStr = FormatDateTime(dt, vbGeneralDate)
  toSQLDate = dateInputStr
    
End Function

Function SetDOBInWords(site As DBSite, dt As Date, tid As Long)
    Dim qry As String
    qry = "UPDATE tblPerson SET DOBInwords = '" & Me.getDateInWords(dt) & "'"
    qry = qry + " WHERE tid = " & tid
    site.conn.Execute qry
    
End Function

Function GetStudentFeeBalance(site2 As DBSite2, dt As Date, pid As Integer) As Double
    Dim site As New DBSite
    GetStudentFeeBalance = GetTotalfees(site, site2, CStr(pid), Now) - feesRcd(site2, CStr(pid))
    
    'MsgBox "total Fees: " & CStr(GetTotalfees(site, site2, CStr(pid), Now)) + "feercd " & CStr(feesRcd(site2, CStr(pid)))
    
    'discount = Util.GetDiscount(site2, pid, Now)
    
    
End Function

Function getClass(site As DBSite2, pid As Integer) As String
    getClass = ""
    Dim qry As String
    Dim rs As Recordset
    Set rs = New Recordset

    qry = "SELECT  dept FROM tblPerson WHERE tid IN (SELECT MAX(tid) FROM tblPerson GROUP By PID)"
    qry = qry & " AND pid = " & pid
    rs.Open qry, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            getClass = CheckNull(rs.Fields(0).value)
            rs.MoveNext
        Wend
    End If
    rs.Close

End Function

Function CalculateLastDateOfMonth(site As DBSite2, mnth As String) As Date
    
    CalculateLastDateOfMonth = CDate("25-" & mnth & "-2012")
    
    Dim dt1 As Date
    Dim dt2 As Date
    
    Dim fy As String
    
    fy = GetSettingHome(site, "financialYear")
    dt1 = CDate(mnth & "/01/20" & fy)
    dt2 = DateAdd("m", 1, dt1)
        
    CalculateLastDateOfMonth = DateAdd("d", -1, dt2)
    
End Function

Function IsDuplicateHead(site As DBSite2, headName As String) As Boolean
    isDuplicate = False
    Dim rs As Recordset
    Set rs = New Recordset
    
    Dim qry As String
    qry = "SELECT DISTINCT Head FROM tblFeeStucture"
    rs.Open qry, site.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
    rs.MoveFirst
        Do While rs.AbsolutePosition <> adPosEOF
            If UCase(CheckNull(rs.Fields(0).value)) = UCase(headName) Then
                rs.MoveNext
            ElseIf UCase(replaceSpecialCharacters(CheckNull(rs.Fields(0).value))) = UCase(replaceSpecialCharacters(headName)) Then
                isDuplicate = True
                Exit Do
            End If
           If Not rs.EOF Then
            rs.MoveNext
           End If
        Loop
    End If
    rs.Close
    
    IsDuplicateHead = False
End Function

Function GetParticularsForReciept(site2 As DBSite2, lid As String) As String
    GetParticularsForReciept = "By Cash"
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT  particulars From vw_Ledger WHERE cid IN ('" & lid & "') "
    'MsgBox ("getPayment " + query)
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetParticularsForReciept = rs.Fields("particulars").value
            rs.MoveNext
        Wend
    End If
    rs.Close
    
    Dim length As Long
    length = Len(GetParticularsForReciept) - InStr(GetParticularsForReciept, "|")
    GetParticularsForReciept = Left(Right(GetParticularsForReciept, length), length - 1)
        
    
    
    
End Function

Function GetTransportQry(pid As String) As String
    
    Dim query As String
    query = query + " select 111111 cid, 'Transport' head, isNull(RouteFee, 0) amount, 'Monthly' ftype, '' whichmonth "
    query = query + " from tblPerson p "
    query = query + " LEFT OUTER JOIN tblRoute r on r.RouteId = p.routeID "
    query = query + " WHERE p.tid IN (SELECT MAX(tid) from tblPerson Group By pid) "
    query = query + " and pid = '" & pid & "' "
    
    GetTransportQry = query
    
    
End Function



Function GetFatherName(pid As String) As String
    GetFatherName = ""
    
    Dim site3 As New DBSite2
        
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT  company From tblPerson WHERE pid = '" & pid & "' "
    query = query + " AND tid IN (SELECT MAX(tid) FROM tblPerson Group by pid) "
    'MsgBox ("getPayment " + query)
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetFatherName = rs.Fields("company").value
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function

Function GetMonthNumber(monthName As String) As Integer
    
    GetMonthNumber = 0
    
    ReDim months(1 To 12)
    months = Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
    
    ReDim months_short(1 To 12)
    months_short = Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
        
    If Len(monthName) = 3 Then
        months = months_short
    End If
        
        
    For i = 0 To UBound(months)
        If Trim(monthName) = months(i) Then
            GetMonthNumber = i + 1
            Exit For
        End If
        
    Next
    
End Function

Function GetFeeRcdMonthHeadWise(site3 As DBSite2, pid As String, mnth As String, head As String, ledgerid As String) As Double
    GetFeeRcdMonthHeadWise = 0
    
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    
    Dim mnth_int As Integer
    
    query = "  SELECT pid, Head, FeeMonth, SUM(FeeAmount) Amount  "
    query = query + " From tblFeeMonth"
    query = query + " Where pid = '" & pid & "'"
    query = query + " AND FeeMonth = " & GetMonthNumber(mnth)
    query = query + " AND Head = '" & head & "'"
    If Len(ledgerid) > 0 Then
        query = query + " AND BreakUpID = '" & Trim(ledgerid) & "'"
    End If
    
    query = query + " GROUP BY pid, Head, FeeMonth "
    
    
    
    
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetFeeRcdMonthHeadWise = CheckNullDouble(rs.Fields("Amount").value)
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function

Function GetFeeRcdMonthHeadIDWise(site3 As DBSite2, pid As String, mnth As String, headId As String, ledgerid As String) As Double
    GetFeeRcdMonthHeadIDWise = CDbl(0)
    
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    
    Dim mnth_int As Integer
    
    'MsgBox "headId:" & headId & "mnth: " & mnth
    
    query = "  SELECT pid, Head, FeeMonth, SUM(FeeAmount) Amount  "
    query = query + " From tblFeeMonth"
    query = query + " Where pid = '" & pid & "'"
    query = query + " AND FeeMonth = " & GetMonthNumber(mnth)
    query = query + " AND Head = '" & headId & "'"
    If Len(ledgerid) > 0 Then
        query = query + " AND BreakUpID = '" & Trim(ledgerid) & "'"
    End If
    
    query = query + " GROUP BY pid, Head, FeeMonth "
    
    'MsgBox query
    
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetFeeRcdMonthHeadIDWise = CheckNullDouble(rs.Fields("Amount").value)
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function

Function GetFeeRcdDateMonthHeadIDWise(site3 As DBSite2, pid As String, mnth As String, headId As String, ledgerid As String) As Date
    GetFeeRcdDateMonthHeadIDWise = Now
    
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    
    Dim mnth_int As Integer
    
    'MsgBox "headId:" & headId & "mnth: " & mnth
    
    query = "  SELECT TOP 1 BDate "
    query = query + " From tblBreakup bk "
    query = query + " LEFT OUTER JOIN tblFeeMonth fm ON bk.cid=fm.breakUpid "
    query = query + " Where fm.pid = '" & pid & "'"
    query = query + " AND FeeMonth = " & GetMonthNumber(mnth)
    query = query + " AND fm.Head = '" & headId & "'"
    query = query + " AND FeeAmount > 0 "
        
    'MsgBox query
    
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetFeeRcdDateMonthHeadIDWise = CDate(CheckNull(rs.Fields("Bdate").value))
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function

Function GetPidByLedgerId(site3 As DBSite2, lid As String) As String
    GetPidByLedgerId = ""
       
        
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    
    query = "SELECT pid From tblLedger WHERE cid = '" & lid & "' "
       
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetPidByLedgerId = rs.Fields("pid").value
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function
Function GetRptDateByLedgerId(site3 As DBSite2, lid As String) As String
    GetRptDateByLedgerId = ""
       
        
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    
    query = "SELECT ldate From tblLedger WHERE cid = '" & lid & "' "
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetRptDateByLedgerId = Format(rs.Fields("ldate").value, "dd-mmm-yyyy")
            rs.MoveNext
        Wend
    End If
    
    rs.Close
End Function

Function GetMonthsByLedgerId(site3 As DBSite2, lid As String) As String
    
    GetMonthsByLedgerId = ""
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    
    query = "SELECT particulars From tblLedger WHERE cid = '" & lid & "' "
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetMonthsByLedgerId = Split(rs.Fields("particulars").value, "|")(0)
            rs.MoveNext
        Wend
    End If
    
    rs.Close
End Function




Function GetStudentName(site3 As DBSite2, pid As String) As String
    GetStudentName = ""
        
        
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT  FirstName + LastName PName  From tblPerson WHERE pid = '" & pid & "' "
    query = query + " AND tid IN (SELECT MAX(tid) FROM tblPerson Group by pid) "
    'MsgBox ("getPayment " + query)
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            GetStudentName = rs.Fields("PName").value
            rs.MoveNext
        Wend
    End If
    rs.Close
End Function


Function GetSeletctedMonthsByLedgerId(site3 As DBSite2, ledgerid As String) As String
    GetSeletctedMonthsByLedgerId = ""
    
    Dim month_int As Integer
    Dim mnth_str As String
    ReDim months(1 To 12)
    months = Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
    
    
    
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "select distinct FeeMonth From tblFeeMonth Where BreakUpId = " & Trim(ledgerid)
    rs.Open query, site3.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            month_int = CInt(rs.Fields("FeeMonth").value)
            mnth_str = months(month_int - 1)
            GetSeletctedMonthsByLedgerId = ", " + mnth_str
            rs.MoveNext
        Wend
    End If
    rs.Close
    
    If Len(GetSeletctedMonthsByLedgerId) > 0 Then
        GetSeletctedMonthsByLedgerId = Right(GetSeletctedMonthsByLedgerId, (Len(GetSeletctedMonthsByLedgerId) - 1))
    End If
    
    
End Function

Sub FillBankCombo(site As DBSite, Combo1 As ComboBox)
    Dim query As String
    query = " SELECT firstName FROM tblPerson "
    query = query + " WHERE  registrationNo IN ('Bank Account')"
    query = query + " AND tid IN (select Max(tid) FROM tblPerson GROUP By Pid)"
    query = query + " ORDER BY firstName "
    
    Dim rs As Recordset
    Set rs = New Recordset
    rs.Open query, site.conn, adOpenDynamic, adLockOptimistic
    Dim count As Integer
    count = 1
    Combo1.AddItem "All", 0
    Combo1.AddItem "Cash", 1
    If Not rs.EOF Then
    rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            If Len(CheckNull(rs.Fields("firstName").value)) Then
                count = count + 1
                Combo1.AddItem rs.Fields("firstName").value, count
            End If
            rs.MoveNext
        Wend
    End If
    rs.Close
   
End Sub
Function GetFeesMonthHeadWise_Bazpur(site2 As DBSite2, pid As String, mnth As String, monthNo As Integer, head2 As String) As String
    GetFeesMonthHeadWise = 0
    
    
    
    
    Dim lid As String
    lid = ledgerid + "D"
    Dim lgrId As String
    lgrId = lid
    Dim StudentName As String
    StudentName = GetStudentName(site2, pid)
    
    Dim className As String
    
    className = getClass(site2, CInt(pid))
    'className = "II"
    
    Dim mmm As String
    mmm = mnth
       
    Dim query As String
    
    
    
    Dim rs As Recordset
    Set rs = New Recordset
    
    query = "SELECT cid, head as head, amount, fType, whichMonth FROM tblFeeStucture WHERE tid IN (SELECT max(tid) from tblFeeStucture Group By cid) AND   pid IN ('0','" & pid & "') "
    query = query + " UNION "
    query = query + GetTransportQry(pid)
    query = query + " UNION "
    query = query + "SELECT cid, headName as head, amount, 'One Time', DATENAME(month, cDate)  FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  AND pid ='" & pid & "'"
    
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    
    'MsgBox query
        
    Dim cid As String
    Dim head As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
        
    Dim YY As String
    Dim qry As String
    Dim discount As Double
    discount = 0
    
    Dim feeAfterDiscount As Double
    feeAfterDiscount = 0
    
    Dim paymentRcd As Double
    paymentRcd = 0
    
    Dim BalanceAmount As Double
    BalanceAmount = 0
    
    Dim FeeRcdDate As Date
    FeeRcdDate = CDate("1/1/01")
    
    Dim count As Integer
    count = 0
    If Not rs.EOF Then
        'Dim mnth, fType As String
        'mnth = Format(dtt, "mmm")
        
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            count = count + 1
            cid = CheckNull(rs.Fields("cid").value)
            head = CheckNull(rs.Fields("Head").value)
            fType = CheckNull(rs.Fields("fType").value)
            amount = CheckNullDouble(rs.Fields("amount").value)
            WhichMonth = CheckNull(rs.Fields("WhichMonth").value)
            
            Dim willPrint As Boolean
            willPrint = True
                      
            
            'If (fType = "One Time" Or fType = "Annual") And Util.isWhichMonthSeleted(Me.GetCheckedMonths, WhichMonth) And Not Util.isDiscountHead(site2, head) Then
            If (fType = "One Time" Or fType = "Annual") _
                And isWhichMonthSeleted(mnth, WhichMonth) Then
                
              'MsgBox head & " 111 |" & amount & " WhichMonth: " & WhichMonth & " | mnth: " & CStr(isWhichMonthSeleted(mnth, WhichMonth))
              
              paymentRcd = GetFeeRcdMonthHeadIDWise(site2, pid, mnth, cid, "")
              amount = 0
              feeAfterDiscount = amount
              FeeRcdDate = GetFeeRcdDateMonthHeadIDWise(site2, pid, mmm, cid, "")
              'MsgBox "paymentRcd: " & paymentRcd
              BalanceAmount = paymentRcd
            End If
            
            If (fType = "Annual") And isDiscountHead(site2, head) _
                And isWhichMonthSeleted1(mnth, WhichMonth, 1) Then
                
                                
               'MsgBox head & "3|" & amount
               
               feeAfterDiscount = amount - discount
              
              paymentRcd = GetFeeRcdMonthHeadIDWise(site2, pid, mnth, cid, "")
              BalanceAmount = feeAfterDiscount - paymentRcd
            End If
            
            
            
            
            '6666
            'If head = GM.discountHead Then
            If (fType = "Monthly") And isDiscountHead(site2, head) Then
                'GetMonthWiseDiscount(site2, pid, WhichMonth, YY, head) / 100)
                YY = CalculateYearMonthWise(Now, mmm)
                discount = GetMonthWiseDiscount(site2, pid, mmm, YY, head)
                'MsgBox head & " 2 |" & amount & " WhichMonth " & mnth & " | Discount: " & discount
                
              
              feeAfterDiscount = amount - discount
              
              paymentRcd = GetFeeRcdMonthHeadIDWise(site2, pid, mmm, cid, "")
              FeeRcdDate = GetFeeRcdDateMonthHeadIDWise(site2, pid, mmm, cid, "")
              'MsgBox "paymentRcd: " & paymentRcd
              
              BalanceAmount = feeAfterDiscount - paymentRcd
                
                
            End If
            '6666
            
            If (fType = "Monthly") And Not isDiscountHead(site2, head) Then
                
                   YY = CalculateYearMonthWise(Now, mmm)
                discount = GetMonthWiseDiscount(site2, pid, mmm, YY, head)
                'MsgBox head & " 2 |" & amount & " WhichMonth " & mnth & " | Discount: " & discount
                
              
              feeAfterDiscount = amount - discount
              
              paymentRcd = GetFeeRcdMonthHeadIDWise(site2, pid, mnth, cid, "")
              BalanceAmount = feeAfterDiscount - paymentRcd
             
            End If
                        
              qry = "INSERT INTO tblFee (pid, StudentName, ClassName,FeeMonth, monthNo, FeeDate, FeeHead, FeeAmount, Discount, FeeAfterDiscount, PaymentRcd, BalanceAmount ) "
              qry = qry + " VALUES  ("
              qry = qry + pid
              qry = qry + ", '" & StudentName & "'"
              qry = qry + ", '" & className & "'"
              qry = qry + ", '" & mmm & "'"
              qry = qry + ", " & monthNo
              qry = qry + ", '" & FeeRcdDate & "'"
              qry = qry + ", '" & head & "'"
              qry = qry + ", " & amount
              qry = qry + ", " & discount
              qry = qry + ", " & feeAfterDiscount
              qry = qry + ", " & paymentRcd
              qry = qry + ", " & BalanceAmount
              
              qry = qry + ")"
                        
              site2.conn.Execute qry
                        
                        
            rs.MoveNext
        Wend
    End If
    GetFeesMonthHeadWise = head & "|" & amount
    
      
    
    ' make csv file
    
        
    
    
    
End Function
