VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form FeeFrm 
   Caption         =   "Fee Structure"
   ClientHeight    =   6885
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9180
   Icon            =   "FeeFrm.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6885
   ScaleWidth      =   9180
   WindowState     =   2  'Maximized
   Begin VB.CommandButton btnFeeStructureExcel 
      Caption         =   "Fee Structure Report In Excel"
      Height          =   255
      Left            =   1320
      Style           =   1  'Graphical
      TabIndex        =   42
      Top             =   7560
      Width           =   3135
   End
   Begin VB.CommandButton btnFineExcel 
      Caption         =   "Fine Report In Excel"
      Height          =   255
      Left            =   4680
      Style           =   1  'Graphical
      TabIndex        =   41
      Top             =   6960
      Width           =   3135
   End
   Begin VB.CommandButton btnDiscount 
      Caption         =   "Discount Report In Excel"
      Height          =   255
      Left            =   1320
      Style           =   1  'Graphical
      TabIndex        =   40
      Top             =   6960
      Width           =   3135
   End
   Begin VB.ListBox List1 
      Height          =   5520
      Left            =   8160
      TabIndex        =   18
      Top             =   1200
      Width           =   2655
   End
   Begin VB.TextBox txtPid 
      Height          =   285
      Left            =   2640
      TabIndex        =   6
      Top             =   3480
      Width           =   1935
   End
   Begin VB.TextBox txtDiscountInAmount 
      Height          =   285
      Left            =   2640
      TabIndex        =   5
      Top             =   3120
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.Frame Frame1 
      Caption         =   "Advance Month"
      Height          =   4575
      Left            =   10080
      TabIndex        =   25
      Top             =   1080
      Visible         =   0   'False
      Width           =   1695
      Begin VB.CheckBox ckMonth 
         Caption         =   "Jan"
         Height          =   255
         Index           =   12
         Left            =   120
         TabIndex        =   37
         Top             =   240
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Feb"
         Height          =   255
         Index           =   13
         Left            =   120
         TabIndex        =   36
         Top             =   600
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Mar"
         Height          =   255
         Index           =   14
         Left            =   120
         TabIndex        =   35
         Top             =   960
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Apr"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   34
         Top             =   1320
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "May"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   33
         Top             =   1680
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Jun"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   32
         Top             =   2040
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Jul"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   31
         Top             =   2400
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Aug"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   30
         Top             =   2760
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Sep"
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   29
         Top             =   3120
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Oct"
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   28
         Top             =   3480
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Nov"
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   27
         Top             =   3840
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Dec"
         Height          =   255
         Index           =   11
         Left            =   120
         TabIndex        =   26
         Top             =   4200
         Width           =   735
      End
   End
   Begin VB.ComboBox ComboMonth 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "FeeFrm.frx":044A
      Left            =   5400
      List            =   "FeeFrm.frx":044C
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   2040
      Width           =   1935
   End
   Begin VB.CommandButton btnDelete 
      Caption         =   "&Delete"
      Height          =   255
      Left            =   4680
      Style           =   1  'Graphical
      TabIndex        =   23
      Top             =   6360
      Width           =   1215
   End
   Begin VB.TextBox txtFromDate 
      Height          =   285
      Index           =   2
      Left            =   3600
      TabIndex        =   21
      Top             =   1320
      Width           =   735
   End
   Begin VB.TextBox txtFromDate 
      Height          =   285
      Index           =   1
      Left            =   3000
      TabIndex        =   20
      Top             =   1320
      Width           =   615
   End
   Begin VB.TextBox txtFromDate 
      Height          =   285
      Index           =   0
      Left            =   2640
      TabIndex        =   19
      Top             =   1320
      Width           =   490
   End
   Begin VB.TextBox txtFeetype 
      Height          =   285
      Left            =   2640
      TabIndex        =   1
      Top             =   2040
      Width           =   2535
   End
   Begin VB.TextBox txtClass 
      Height          =   285
      Left            =   2640
      TabIndex        =   3
      Top             =   2400
      Width           =   2535
   End
   Begin VB.TextBox txtAmount 
      Height          =   285
      Left            =   2640
      TabIndex        =   4
      Top             =   2760
      Width           =   2535
   End
   Begin VB.TextBox txthead 
      Height          =   285
      Left            =   2640
      TabIndex        =   0
      Top             =   1680
      Width           =   2535
   End
   Begin VB.CommandButton btnClear 
      Caption         =   "Clear&All"
      Height          =   255
      Left            =   3270
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   6360
      Width           =   975
   End
   Begin VB.CommandButton btnClose 
      Caption         =   "&Close"
      Height          =   255
      Left            =   2295
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   6360
      Width           =   975
   End
   Begin VB.CommandButton btnSave 
      Caption         =   "&Save"
      Height          =   255
      Left            =   1320
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   6360
      Width           =   975
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid Grid1 
      Height          =   1815
      Left            =   1440
      TabIndex        =   7
      Top             =   3840
      Width           =   7455
      _ExtentX        =   13150
      _ExtentY        =   3201
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
   Begin VB.Label lblPid 
      Caption         =   "Student ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   39
      Top             =   3480
      Width           =   1095
   End
   Begin VB.Label lblDiscountInAmount 
      Caption         =   "Discount in Amount"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   38
      Top             =   3120
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.Label lblCombo 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7680
      TabIndex        =   24
      Top             =   2040
      Width           =   2415
   End
   Begin VB.Label Label15 
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   22
      Top             =   1320
      Width           =   1335
   End
   Begin VB.Label Label5 
      Caption         =   "New"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2760
      TabIndex        =   17
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label lblHead 
      Caption         =   "Fee Head"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   16
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label6 
      Height          =   375
      Left            =   1320
      TabIndex        =   15
      Top             =   5880
      Width           =   10095
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Fee Structure"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3600
      TabIndex        =   11
      Top             =   240
      Width           =   4815
   End
   Begin VB.Label lblAmount 
      Caption         =   "Amount"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   10
      Top             =   2760
      Width           =   1575
   End
   Begin VB.Label lblClass 
      Caption         =   "Class"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   9
      Top             =   2400
      Width           =   2175
   End
   Begin VB.Label lblType 
      Caption         =   "Fee Type"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   8
      Top             =   2040
      Width           =   1575
   End
End
Attribute VB_Name = "FeeFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim site As New DBSite
Dim site2 As New DBSite2
Dim Util As New Util
Dim textBoxVariable As TextBox
Dim whichTextBox As String
Dim cid As String
Private Sub btnClear_Click()
    Call Me.FillGrid
    Call Me.ClearForm
End Sub
Private Sub btnClose_Click()
    adminFrm.Show
    Unload Me
End Sub
Private Sub btnDelete_Click()
    Dim query, tableName As String
    If GM.sCharges = chargefrm Then
        tableName = "tblFine"
    ElseIf GM.sCharges = GM.feeStructurefrm Then
        tableName = "tblFeeStucture"
    End If
    query = "DELETE FROM " & tableName & " WHERE cid='" & cid & "'"
    If GM.sCharges = GM.discountFrm Then
        query = "DELETE FROM tblDiscount WHERE tid=" & cid
    End If
    site2.conn.Execute query
    Call Me.ClearForm
    Call Me.FillGrid
End Sub

Private Sub btnDiscount_Click()
    Dim rs As Recordset
    Set rs = New Recordset
        
    Dim qry As String
    qry = " select d.pid "
    qry = qry & " , p.FirstName +' '+ P.LastName StudentName "
    qry = qry & "  , p.dept,  CONVERT(VARCHAR(11), DateTime, 106) DiscountStartDate, DiscountHead, DiscountPercent "
    qry = qry & " from tblDiscount d "
    qry = qry & "  LEFT OUTER JOIN tblPerson p ON p.pid = d.pid "
    qry = qry & "  AND p.tid IN (SELECT MAX(TID) tid From tblPerson GROUP BY PID) "
    qry = qry & "  ORDER BY p.FirstName "

    rs.Open qry, site2.conn
    Util.Export2CSV_GetRows rs, App.Path & "\", "DiscountReport.CSV", 1000
    
    rs.Close
        
    Label6.Caption = "Created: " & App.Path & "\" & "DiscountReport.CSV"
    
    
End Sub

Private Sub btnFeeStructureExcel_Click()
    Dim rs As Recordset
    Set rs = New Recordset
        
    Dim qry As String
   
qry = " select  class, f.Head FeeHead, Ftype FeeType,  Amount, WhichMonth, f.pid, p.FirstName + ' ' +p.lastname StudentName "
qry = qry & " from tblFeeStucture f "
qry = qry & "  LEFT OUTER JOIN tblPerson p ON p.pid = f.pid "
qry = qry & "  AND f.tid IN (SELECT MAX(tid) tid FROM tblFeeStucture GROUP BY CID) "
qry = qry & " AND p.tid IN (SELECT MAX(TID) tid From tblPerson GROUP BY PID) "
qry = qry & " ORDER BY f.class "


    rs.Open qry, site2.conn
    Util.Export2CSV_GetRows rs, App.Path & "\", "FeeStructureReport.CSV", 1000
    
    rs.Close
        
    Label6.Caption = "Created: " & App.Path & "\" & "FeeStructureReport.CSV"
End Sub

Private Sub btnFineExcel_Click()
 Dim rs As Recordset
    Set rs = New Recordset
        
    Dim qry As String
   
qry = " select F.pid "

qry = qry & " , p.FirstName + ' ' + P.LastName StudentName "
qry = qry & " , p.dept ,  CONVERT(VARCHAR(11), cdate, 106) FineDate, HeadName, Amount "
qry = qry & "  from tblFine F "
qry = qry & " LEFT OUTER JOIN tblPerson p ON p.pid = f.pid "
qry = qry & " and F.TID in (select MAX(tid) tid FROM tblFine GROUP BY cid) "
qry = qry & "  AND p.tid IN (SELECT MAX(TID) tid From tblPerson GROUP BY PID) "
qry = qry & " ORDER BY p.FirstName "

    rs.Open qry, site2.conn
    Util.Export2CSV_GetRows rs, App.Path & "\", "FineReport.CSV", 1000
    
    rs.Close
        
    Label6.Caption = "Created: " & App.Path & "\" & "FineReport.CSV"
End Sub

Private Sub btnSave_Click()
    Call Me.SaveRecord
    If Not GM.sCharges = GM.discountFrm Then
        Call Me.FillGrid
    End If
    Call Me.ClearForm
End Sub
 Sub SaveRecord()
    Dim tid As Long
    Dim cid As Long
    Set p = New Person
    tid = p.getID(site.conn, "tid")
    If Me.Label5.Caption = "New" Then
        cid = p.getID(site.conn, "cid")
    Else
        cid = Me.Label5.Caption
    End If
    Dim query As String
    Dim fDate As Date
    If GM.sCharges <> GM.feeStructurefrm Then
        fDate = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "10", "10", "AM")
    End If
    If GM.sCharges = chargefrm Then
       
        If Not IsNumeric(Me.txtFeetype.Text) Then
            MsgBox "Invalid Student ID. Please check.."
            Me.txtFeetype.SetFocus
            Exit Sub
        End If
        query = "INSERT INTO tblFine (tid, cid, cDate, pid, HeadName, Amount)  VALUES(" & tid & "," & cid & ", '" & Util.toSQLDate(fDate) & "', '" & Me.txtFeetype.Text & "' , '" & Me.txthead.Text & "',  '" & Me.txtAmount.Text & "')"
    ElseIf GM.sCharges = GM.feeStructurefrm Then
         Dim WhichMonth As String
         
         If Me.txtFeetype.Text = "Monthly" Then
           WhichMonth = ""
         Else
            WhichMonth = Me.ComboMonth.Text
         End If
         Dim feePid As String
         feePid = Me.txtPid.Text
         
         If Len(Trim(Me.txtPid.Text)) < 1 Then
            feePid = "0"
         End If
         
         If Not IsNumeric(feePid) Then
            MsgBox "Invalid Student ID. Please Check."
            Me.txtPid.SetFocus
            Exit Sub
         End If
         
         ' check for duplicate head
         If Util.IsDuplicateHead(site2, Me.txthead.Text) Then
            MsgBox "This Head already exists, Please enter a new Head"
            Me.txthead.SetFocus
            Exit Sub
        End If
         query = "INSERT INTO tblFeeStucture (tid, cid, head, FType, Class, Amount, WhichMonth, pid)  VALUES(" & tid & "," & cid & ", '" & Me.txthead.Text & "' , '" & Me.txtFeetype.Text & "', '" & Me.txtClass.Text & "', '" & Me.txtAmount.Text & "', '" & WhichMonth & "', '" & feePid & "')"
    ElseIf GM.sCharges = GM.discountFrm Then
        query = "DELETE FROM tblDiscount WHERE tid=" & cid
        site2.conn.Execute query
        '6666
         If Not IsNumeric(Me.txtFeetype.Text) Then
            MsgBox "Invalid Student ID. Please check.."
            Me.txtFeetype.SetFocus
            Exit Sub
        End If
        
        query = "INSERT INTO tblDiscount(tid, discountHead, [DateTime], pid, DiscountPercent)  VALUES(" & tid & ", '" & Me.txthead.Text & "', '" & Util.toSQLDate(fDate) & "', '" & Me.txtFeetype.Text & "', '" & Me.txtAmount.Text & "')"
    End If
    site2.conn.Execute query
 End Sub
Sub ClearForm()
    Label5.Caption = "New"
    Me.txthead.Text = ""
    Me.txtFeetype.Text = ""
    Me.txtClass.Text = ""
    Me.txtAmount.Text = ""
    Me.txtPid.Text = ""
    cid = ""
    Me.txthead.SetFocus
    If GM.sCharges = GM.discountFrm Then
        Me.txtDiscountInAmount.Text = ""
    End If
    Call Me.updateButtons
End Sub
Sub updateButtons()
    Me.btnSave.Enabled = (Len(Me.txthead.Text) > 0 Or GM.sCharges = GM.discountFrm) And Len(Me.txtFeetype.Text) > 0 And Len(Me.txtClass.Text) > 0 And Len(Me.txtAmount.Text) > 0
    Me.btnDelete.Enabled = Len(cid) > 0
    Me.btnDiscount.Visible = GM.sCharges = GM.discountFrm
    Me.btnFineExcel.Visible = GM.sCharges = chargefrm
    Me.btnFeeStructureExcel.Visible = GM.sCharges = GM.feeStructurefrm
    
End Sub
Sub FillGrid()
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    Dim subQuery As String
    Dim tableName As String
    If GM.sCharges = chargefrm Then
        tableName = "tblFine"
    Else
        tableName = "tblFeeStucture"
    End If
    subQuery = " SELECT MAX(tid) FROM " & tableName & " GROUP BY cid "
    If GM.sCharges = chargefrm Then
        query = "SELECT  tid, cid, cdate, headName, pid, amount FROM tblFine WHERE tid IN (" & subQuery & ")"
        
        If Len(Me.txtFeetype.Text) > 0 And IsNumeric(Me.txtFeetype.Text) Then
                query = query + " AND pid = " & Me.txtFeetype.Text
        
        End If
        
    ElseIf GM.sCharges = feeStructurefrm Then
        query = "SELECT  tid, cid, head, Ftype, class ,amount, pid FROM tblFeeStucture WHERE tid IN (" & subQuery & ")"
        If Len(Trim(Me.txtClass.Text)) > 0 Then
             query = query + "AND class ='" & Trim(Me.txtClass.Text) & "' "
        End If
    ElseIf GM.sCharges = GM.discountFrm Then
        query = "SELECT tid, DateTime, pid, discountHead, discountPercent FROM tblDiscount"
    End If
    rs.Open query, site2.conn
    Dim row As Integer
    row = 1
    If GM.sCharges = GM.discountFrm Then
        Call SetGridPropertiesForDiscount
    Else
        Call setGridProperties
    End If
    
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            Grid1.Rows = row + 1
            Grid1.row = row
            Grid1.Col = 0
            If GM.sCharges <> GM.discountFrm Then
                Grid1.Text = Util.CheckNull(rs.Fields("cid").value)
            Else
                Grid1.Text = row
            End If
            Grid1.Col = 1
            Dim sname, clas As String
            Dim p As Person
            Set p = New Person
            Dim p2 As Person
            If GM.sCharges = chargefrm Then
                Grid1.Text = Format(Util.CheckNull(rs.Fields("cdate").value), "dd-mmm-yyyy")
            ElseIf GM.sCharges = feeStructurefrm Then
                Grid1.Text = Util.CheckNull(rs.Fields("Head").value)
            ElseIf GM.sCharges = GM.discountFrm Then
                Grid1.Text = Format(Util.CheckNull(rs.Fields("dateTime").value), "dd-mmm-yyyy")
            End If
            Grid1.Col = 2
            If GM.sCharges = chargefrm Then
                Grid1.Text = Util.CheckNull(rs.Fields("HeadName").value)
            ElseIf GM.sCharges = feeStructurefrm Then
                Dim StudentID As String
                StudentID = Util.CheckNull(rs.Fields("pid").value)
                If StudentID = "0" Then
                    StudentID = ""
                End If
                If Len(StudentID) > 0 Then
                    StudentID = " , " & StudentID
                End If
                Grid1.Text = Util.CheckNull(rs.Fields("Class").value) & StudentID
            ElseIf GM.sCharges = GM.discountFrm Then
                Grid1.Text = Util.CheckNull(rs.Fields("pid").value)
                p.pid = Grid1.Text
                Set p2 = p.GetPerson(site, -1)
            End If
            Grid1.Col = 3
            If GM.sCharges = chargefrm Then
                Grid1.Text = Util.CheckNull(rs.Fields("pid").value)
            ElseIf GM.sCharges = feeStructurefrm Then
                Grid1.Text = Util.CheckNull(rs.Fields("fType").value)
            ElseIf GM.sCharges = GM.discountFrm Then
                Grid1.Text = p2.firstName + " " + p2.middleName + " " + p2.lastName
                
            End If
            Grid1.Col = 4
            If GM.sCharges = GM.discountFrm Then
                Grid1.Text = p2.dept
            Else
                Grid1.Text = Util.CheckNull(rs.Fields("amount").value)
            End If
            Grid1.Col = 5
            Grid1.Text = Util.CheckNull(rs.Fields("tid").value)
            If GM.sCharges = GM.discountFrm Then
                Grid1.Col = 6
                Grid1.Text = Util.CheckNull(rs.Fields("discountPercent").value)
                Grid1.Col = 7
                Grid1.Text = Util.CheckNull(rs.Fields("discountHead").value)
            End If
            row = row + 1
            rs.MoveNext
        Wend
    End If
    Label6.Caption = "Total Records :  " & row - 1
    rs.Close
End Sub
 Sub setGridProperties()
    Grid1.Cols = 6
    Grid1.ColWidth(0) = 700
    Grid1.ColWidth(1) = 700 * 3
    Grid1.ColWidth(2) = 700 * 2
    Grid1.ColWidth(3) = 700 * 2
    Grid1.ColWidth(4) = 700 * 2
    Grid1.ColWidth(5) = 0
    Grid1.Width = Util.gridWidth(Grid1)
    Grid1.row = 0
    Grid1.Col = 0
    Grid1.Text = "ID"
    Grid1.Col = 1
    If GM.sCharges = chargefrm Then
        Grid1.Text = "Date"
    ElseIf GM.sCharges = feeStructurefrm Then
        Grid1.Text = "Head"
    End If
    Grid1.Col = 2
    If GM.sCharges = chargefrm Then
        Grid1.Text = "HeadName"
    ElseIf GM.sCharges = feeStructurefrm Then
        Grid1.Text = "Class"
    End If
    Grid1.Col = 3
    If GM.sCharges = chargefrm Then
        Grid1.Text = "Student ID"
    ElseIf GM.sCharges = feeStructurefrm Then
        Grid1.Text = "FType"
    End If
    Grid1.Col = 4
    Grid1.Text = "Amount"
    Grid1.Col = 5
    Grid1.Text = "tid"
End Sub
Sub SetGridPropertiesForDiscount()
    Grid1.Cols = 8
    Grid1.ColWidth(0) = 700
    Grid1.ColWidth(1) = 700 * 2
    Grid1.ColWidth(2) = 700
    Grid1.ColWidth(3) = 700 * 3
    Grid1.ColWidth(4) = 700
    Grid1.ColWidth(5) = 0
    Grid1.ColWidth(6) = 700
    Grid1.ColWidth(7) = 700
    Grid1.Width = Util.gridWidth(Grid1)
    Grid1.row = 0
    Grid1.Col = 0
    Grid1.Text = "Sl. No."
    Grid1.Col = 1
    Grid1.Text = "Date"
    Grid1.Col = 2
    Grid1.Text = "PID"
    Grid1.Col = 3
    Grid1.Text = "Name"
    Grid1.Col = 4
    Grid1.Text = "Class"
    Grid1.Col = 6
    Grid1.Text = "Discount %"
    Grid1.Col = 7
    Grid1.Text = "Head"
    
    
End Sub
Private Sub ckMonth_Click(Index As Integer)
    '*****************
    'ChargesHead = month
    'tblChargesMaster
    site2.conn.Execute "DELETE FROM tblChargesMaster WHERE ChargesHead='" & Me.ckMonth(Index).Caption & "'"
    site2.conn.Execute "INSERT INTO tblChargesMaster VALUES(1000," & Me.ckMonth(Index).value & ", '" & Me.ckMonth(Index).Caption & "')"
End Sub

Private Sub ComboMonth_GotFocus()
Call MDIForm1.mdiHelp
End Sub

Private Sub Form_Load()
    Me.KeyPreview = True
    Me.Label15.Visible = GM.sCharges = chargefrm
    Call FillCombo
    For i = 0 To Me.txtFromDate.count - 1
        Me.txtFromDate(i).Visible = (GM.sCharges = chargefrm Or GM.sCharges = GM.discountFrm)
    Next
    If GM.sCharges = chargefrm Then
       Call setFormForCharges
    ElseIf GM.sCharges = GM.discountFrm Then
       Call setFormForDiscount
    End If
    Call Util.SetProperties(Me.txthead)
    Call Util.SetProperties(Me.txtFeetype)
    Call Util.SetProperties(Me.txtClass)
    Call Util.SetProperties(Me.txtAmount)
    Call Util.SetProperties(Me.txtDiscountInAmount)
    Call Util.SetProperties(Me.txtPid)
    Call Util.SetFont(Me)
    Me.List1.Visible = False
    'Me.Frame1.Visible = GM.sCharges = feeStructurefrm
    If GM.sCharges = feeStructurefrm Then
        Call SetMonths
    End If
    Call updateButtons
    Call Util.FormResolution(Me)
End Sub
Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = 27 Then
        If List1.Visible = True Then
            List1.Visible = False
            Exit Sub
        End If
        Call btnClose_Click
    End If
    
End Sub

Private Sub txtClass_Change()
    If InStr(txtClass.Text, ",") > 0 Then
        MsgBox "Comma is not allowed..."
        txtClass.Text = Left(txtClass.Text, Len(txtClass.Text) - 1)
    End If
End Sub
Private Sub txtDiscountInAmount_Change()
    If GM.sCharges = GM.discountFrm And Len(Me.txtFeetype.Text) > 0 Then
        Me.txtAmount.Text = Util.GetDiscountInPercent(site, site2, Me.txtFeetype.Text, Me.txtDiscountInAmount.Text, txthead.Text)
    End If
End Sub

Private Sub Grid1_Click()
    Grid1.Col = 0
    If Len(Grid1.Text) < 1 Then
        Exit Sub
    End If
    Call getCid
    If GM.sCharges = feeStructurefrm Then
        Me.Label5.Caption = cid
        Me.lblCombo.Caption = Util.GetComboMonth(site2, cid)
        Me.txthead.Text = getHead
        Me.txtClass.Text = getClass
        Me.txtPid.Text = GetPid
        Me.txtFeetype = getFeeType
        Me.txtAmount.Text = getAmount
    ElseIf GM.sCharges = GM.chargefrm Then
        Me.txtFromDate(0).Text = Util.GetDay(CDate(getHead))
        Me.txtFromDate(1).Text = Util.GetMonth(CDate(getHead))
        Me.txtFromDate(2).Text = Util.GetYear(CDate(getHead))
        Me.Label5.Caption = cid
        Me.txthead.Text = getClass
        Me.txtClass.Text = ""
        Me.txtFeetype = getFeeType
        Me.txtAmount.Text = getAmount
    ElseIf GM.sCharges = GM.discountFrm Then
        Me.txtFromDate(0).Text = Util.GetDay(CDate(getHead))
        Me.txtFromDate(1).Text = Util.GetMonth(CDate(getHead))
        Me.txtFromDate(2).Text = Util.GetYear(CDate(getHead))
        Me.Label5.Caption = getGridTid
        txthead.Text = getDiscountHead
        Me.txtFeetype = getClass
        Me.txtClass.Text = getAmount
        Me.txtAmount.Text = getDisc
        cid = getGridTid
    End If
    Call updateButtons
End Sub

Private Sub List1_LostFocus()
    If (GM.sCharges = GM.chargefrm Or GM.sCharges = GM.discountFrm) And whichTextBox = "txtFeeType" And Len(List1.Text) > 0 Then
         Me.txtFeetype.Text = Util.GetTruncatedPid(List1.Text)
         List1.Visible = False
         Me.txtFeetype.SetFocus
    ElseIf GM.sCharges = feeStructurefrm And Len(List1.Text) > 0 And whichTextBox = "txtPid" Then
            Me.txtPid.Text = Util.GetTruncatedPid(List1.Text)
            List1.Visible = False
            Me.txtPid.SetFocus
    Else
            Call Util.HideList(textBoxVariable, List1)
    End If
    Call updateButtons
End Sub
Private Sub txtAmount_Change()
    Call updateButtons
End Sub
Private Sub txtAmount_GotFocus()
    Util.FOCUSME Me.txtAmount
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtAmount_LostFocus()
    Util.LostFocus Me.txtAmount
End Sub
Private Sub txtClass_GotFocus()
    Util.FOCUSME Me.txtClass
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtClass_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyDown Then
        Call Util.LoVClass(site, "Dept", List1)
        Set textBoxVariable = Me.txtClass
        whichTextBox = "txtClass"
    End If
End Sub
Private Sub txtClass_LostFocus()
    Util.LostFocus Me.txtClass
End Sub

Private Sub txtDiscountInAmount_GotFocus()
    Util.FOCUSME txtDiscountInAmount
    Call MDIForm1.mdiHelp
End Sub

Private Sub txtDiscountInAmount_LostFocus()
    Util.LostFocus txtDiscountInAmount
End Sub

Private Sub txtFeetype_Change()
'6666
    Me.ComboMonth.Enabled = (Me.txtFeetype.Text <> "Monthly")
    Me.txtPid.Enabled = (Me.txtFeetype.Text = "Monthly")
    If txtFeetype.Text <> "Monthly" Then
        txtPid.BackColor = Me.BackColor
    Else
        txtPid.BackColor = RGB(164, 209, 255)
    End If
    If IsNumeric(Me.txtFeetype.Text) And (GM.sCharges = GM.discountFrm Or GM.sCharges = GM.chargefrm) Then
        Dim p As Person
        Set p = New Person
        Dim p2 As Person
        p.pid = Trim(Me.txtFeetype.Text)
        Set p2 = p.GetPerson(site, -1)
        Me.txtClass.Text = p2.dept
    End If
    Call updateButtons
End Sub
Private Sub txtFeetype_GotFocus()
    Util.FOCUSME Me.txtFeetype
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtFeetype_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyDown Then
        If GM.sCharges = chargefrm Or GM.sCharges = GM.discountFrm Then
            Call Util.LoVPerson(site, Me.txtClass.Text, "", List1, False, "")
        ElseIf GM.sCharges = feeStructurefrm Then
            '222222222222
            If List1.Visible = True And List1.ListCount > 0 Then
                List1.SetFocus
            End If
        End If
        Set textBoxVariable = Me.txtFeetype
        whichTextBox = "txtFeeType"
    ElseIf KeyCode < 112 And KeyCode <> vbKeyShift And KeyCode <> 13 And KeyCode <> 27 Then
           If GM.sCharges = feeStructurefrm Then
                Call Util.lovFeetype(List1, txtFeetype.Text)
                Call Util.LovAuto(List1, txtFeetype)
           End If
    End If
    
End Sub
Private Sub txtFeetype_LostFocus()
    Call updateButtons
    Util.LostFocus Me.txtFeetype
End Sub
Private Sub txtFromDate_GotFocus(Index As Integer)
    Util.FOCUSME txtFromDate(Index)
End Sub

Private Sub txtFromDate_LostFocus(Index As Integer)
    Util.LostFocus txtFromDate(Index)
End Sub

Private Sub txthead_GotFocus()
    Util.FOCUSME Me.txthead
    Call MDIForm1.mdiHelp
End Sub
Private Sub txthead_KeyUp(KeyCode As Integer, Shift As Integer)
 If KeyCode = vbKeyDown Then
    If List1.Visible And List1.ListCount > 0 Then
        List1.SetFocus
        List1.Selected(0) = True
    End If
    Set textBoxVariable = Me.txthead
    whichTextBox = "txtHead"
  ElseIf KeyCode < 112 And KeyCode <> vbKeyShift And KeyCode <> 13 And KeyCode <> 27 Then
    If GM.sCharges = chargefrm Then
        Call Util.LoV2(site2, "headName", "tblFine", List1, txthead.Text)
     ElseIf GM.sCharges = GM.feeStructurefrm Or GM.sCharges = GM.discountFrm Then
        Call Util.LoV2(site2, "head", "tblFeeStucture", List1, txthead.Text)
        List1.AddItem "Transport"
    End If
    
    Set textBoxVariable = Me.txthead
    whichTextBox = "txtHead"
  End If
End Sub
Private Sub txthead_LostFocus()
    Util.LostFocus Me.txthead
End Sub
Private Sub List1_KeyUp(KeyCode As Integer, Shift As Integer)
    Select Case KeyCode
        Case 13
            If GM.sCharges = GM.chargefrm And whichTextBox = "txtFeeType" And Len(List1.Text) > 0 Then
                 Me.txtFeetype.Text = Util.GetTruncatedPid(List1.Text)
                 List1.Visible = False
                 Me.txtFeetype.SetFocus
            ElseIf GM.sCharges = feeStructurefrm And Len(List1.Text) > 0 And whichTextBox = "txtPid" Then
                 Me.txtPid.Text = Util.GetTruncatedPid(List1.Text)
                 List1.Visible = False
                 Me.txtPid.SetFocus
            Else
                Call Util.HideList(textBoxVariable, List1)
            End If
        End Select
    Call updateButtons
End Sub
Sub setFormForCharges()
    Call SetFromDate
    Me.Label1.Caption = "Student Charges/Fine"
    Me.lblType.Caption = "Student ID"
    Me.txtPid.Visible = False
    Me.lblPid.Visible = False
End Sub
Sub setFormForDiscount()
    Call SetFromDate
    Me.Label15.Visible = True
    Me.Label1.Caption = "Discount/Fee Adjustment"
    Me.lblType.Caption = "Student ID"
    '6666
    'Me.lblHead.Visible = False
    'Me.txthead.Visible = False
    Me.txtPid.Visible = False
    Me.lblPid.Visible = False
    Me.txtDiscountInAmount.Visible = True
    Me.lblDiscountInAmount.Visible = True
    Me.lblAmount.Caption = "Discount %"
End Sub


Sub SetFromDate()
    Dim i As Integer
    For i = 0 To txtFromDate.count - 1
        txtFromDate(i).Text = ""
        txtFromDate(i).BorderStyle = 1
        txtFromDate(i).Appearance = 0
        txtFromDate(i).MaxLength = 2
        txtFromDate(i).BackColor = RGB(164, 209, 255)
        txtFromDate(i).Height = GM.txtHeight
        txtFromDate(i).Width = GM.txtDateWidth
    Next
    txtFromDate(1).Left = txtFromDate(0).Left + txtFromDate(0).Width + 50
    txtFromDate(2).Left = txtFromDate(1).Left + txtFromDate(1).Width + 50
    txtFromDate(2).Width = txtFromDate(0).Width * 2
    txtFromDate(2).MaxLength = 4
    txtFromDate(0).Text = Util.GetDay(Now)
    txtFromDate(1).Text = Util.GetMonth(Now)
    txtFromDate(2).Text = Util.GetYear(Now)
End Sub
Sub getCid()
    Grid1.Col = 0
    cid = Grid1.Text
End Sub
Function getHead() As String
    Grid1.Col = 1
    getHead = Grid1.Text
End Function
Function getDiscountHead() As String
    Grid1.Col = 7
    getDiscountHead = Grid1.Text
End Function

Function getClass() As String
    Grid1.Col = 2
    Dim clas As String
    clas = Grid1.Text
    If InStr(clas, ",") > 0 Then
        Dim length As Integer
        length = Len(clas) - InStr(clas, ",")
        clas = Left(clas, length - 1)
    End If
    getClass = clas
End Function
Function GetPid() As String
    Grid1.Col = 2
    Dim id As String
    id = Grid1.Text
    If InStr(id, ",") > 0 Then
        Dim length As Integer
        length = Len(id) - InStr(id, ",")
        id = Trim(Mid(id, length + 2, Len(id)))
     Else
        id = ""
    End If
    GetPid = id
End Function

Function getFeeType() As String
    Grid1.Col = 3
    getFeeType = Grid1.Text
End Function
Function getAmount() As String
    Grid1.Col = 4
    getAmount = Grid1.Text
End Function
Function getGridTid() As String
    Grid1.Col = 5
    getGridTid = Grid1.Text
End Function
Function getDisc() As String
    Grid1.Col = 6
    getDisc = Grid1.Text
End Function
Sub FillCombo()
    If GM.sCharges = GM.feeStructurefrm Then
        Me.ComboMonth.Visible = True
        Me.ComboMonth.AddItem "Jan"
        Me.ComboMonth.AddItem "Feb"
        Me.ComboMonth.AddItem "Mar"
        Me.ComboMonth.AddItem "Apr"
        Me.ComboMonth.AddItem "May"
        Me.ComboMonth.AddItem "Jun"
        Me.ComboMonth.AddItem "Jul"
        Me.ComboMonth.AddItem "Aug"
        Me.ComboMonth.AddItem "Sep"
        Me.ComboMonth.AddItem "Oct"
        Me.ComboMonth.AddItem "Nov"
        Me.ComboMonth.AddItem "Dec"
        Me.ComboMonth.Text = "Apr"
    Else
        Me.ComboMonth.Visible = False
    End If
End Sub
Sub SetMonths()
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT  chargesHead, cid FROM tblChargesMaster "
    rs.Open query, site2.conn
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            Dim mnth As String
            mnth = Util.CheckNull(rs.Fields("chargesHead").value)
            For i = 3 To 14
                If mnth = Me.ckMonth(i).Caption Then
                    Me.ckMonth(i).value = CInt(Util.CheckNull(rs.Fields("cid").value))
                End If
            Next
            rs.MoveNext
        Wend
    End If
    rs.Close
End Sub
Private Sub txtPid_GotFocus()
    Util.FOCUSME Me.txtPid
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtPid_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyDown Then
        If GM.sCharges = feeStructurefrm Then
            
        End If
    ElseIf KeyCode < 112 And KeyCode <> vbKeyShift And KeyCode <> 13 And KeyCode <> 27 Then
        If GM.sCharges = feeStructurefrm Then
            Call Util.LoVPerson(site, Me.txtClass.Text, "", List1, False, txtPid.Text)
            Call Util.LovAuto(List1, txtPid)
            Set textBoxVariable = Me.txtPid
            whichTextBox = "txtPid"
        End If
    End If
End Sub
Private Sub txtPid_LostFocus()
    Util.LostFocus Me.txtPid
End Sub
