VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form PaymentFrm 
   Caption         =   "Payment"
   ClientHeight    =   6975
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10440
   Icon            =   "PaymentFrm.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6975
   ScaleWidth      =   10440
   WindowState     =   2  'Maximized
   Begin VB.CommandButton btnBalanceByMonth 
      Caption         =   "Fee Balance By Month"
      Height          =   255
      Left            =   8520
      Style           =   1  'Graphical
      TabIndex        =   58
      Top             =   7800
      Width           =   1935
   End
   Begin VB.ListBox List1 
      Height          =   5520
      Left            =   6480
      TabIndex        =   14
      Top             =   1920
      Width           =   3375
   End
   Begin VB.CommandButton btnCalculateTotal 
      Caption         =   "Total"
      Height          =   375
      Left            =   9600
      TabIndex        =   57
      Top             =   4800
      Width           =   735
   End
   Begin VB.TextBox txtAdmNo 
      Height          =   285
      Left            =   4080
      TabIndex        =   55
      Top             =   600
      Width           =   1095
   End
   Begin VB.PictureBox Picture3 
      Height          =   4455
      Left            =   5280
      ScaleHeight     =   4395
      ScaleWidth      =   4995
      TabIndex        =   51
      Top             =   240
      Width           =   5055
      Begin VB.VScrollBar VScroll1 
         Height          =   1815
         Left            =   4680
         TabIndex        =   54
         Top             =   960
         Width           =   255
      End
      Begin VB.PictureBox Picture4 
         Height          =   4335
         Left            =   120
         ScaleHeight     =   4275
         ScaleWidth      =   4755
         TabIndex        =   52
         Top             =   0
         Width           =   4815
      End
   End
   Begin VB.CommandButton btnPrintPayment 
      Caption         =   "Print Payment Rcd"
      Height          =   255
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   48
      Top             =   5400
      Width           =   1575
   End
   Begin VB.CommandButton btnPrint 
      Caption         =   "&Print"
      Height          =   255
      Left            =   7320
      Style           =   1  'Graphical
      TabIndex        =   33
      Top             =   7800
      Width           =   975
   End
   Begin VB.CheckBox ckbFine 
      Caption         =   "Calculate Late Fee Fine"
      Height          =   255
      Left            =   360
      TabIndex        =   31
      Top             =   6600
      Width           =   2055
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid Grid2 
      Height          =   1695
      Left            =   120
      TabIndex        =   26
      Top             =   3600
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   2990
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
      _Band(0).GridLinesBand=   1
      _Band(0).TextStyleBand=   0
      _Band(0).TextStyleHeader=   0
   End
   Begin VB.TextBox txtFromDate 
      Height          =   285
      Index           =   0
      Left            =   1920
      TabIndex        =   21
      Top             =   240
      Width           =   490
   End
   Begin VB.TextBox txtFromDate 
      Height          =   285
      Index           =   1
      Left            =   2400
      TabIndex        =   23
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtFromDate 
      Height          =   285
      Index           =   2
      Left            =   3000
      TabIndex        =   24
      Top             =   240
      Width           =   735
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   6
      Left            =   1920
      TabIndex        =   18
      Top             =   1680
      Width           =   2055
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   5
      Left            =   1920
      TabIndex        =   4
      Top             =   2400
      Width           =   2055
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   4
      Left            =   1920
      TabIndex        =   5
      Top             =   2760
      Width           =   2055
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   3
      Left            =   1920
      TabIndex        =   3
      Top             =   2040
      Width           =   2055
   End
   Begin VB.CommandButton btnClear 
      Caption         =   "Clear&All"
      Height          =   255
      Left            =   5400
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   7800
      Width           =   975
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   2
      Left            =   1920
      TabIndex        =   1
      Top             =   960
      Width           =   2055
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   1
      Left            =   1920
      TabIndex        =   2
      Top             =   1320
      Width           =   2055
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Index           =   0
      Left            =   1920
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
   Begin VB.CommandButton btnSave 
      Caption         =   "&Save"
      Height          =   255
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   7800
      Width           =   975
   End
   Begin VB.CommandButton btnClose 
      Caption         =   "&Close"
      Height          =   255
      Left            =   6375
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   7800
      Width           =   975
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid Grid1 
      Height          =   1455
      Left            =   240
      TabIndex        =   25
      Top             =   5880
      Width           =   7935
      _ExtentX        =   13996
      _ExtentY        =   2566
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
   Begin VB.Frame Frame1 
      Caption         =   "Fee Month"
      Height          =   4575
      Left            =   10560
      TabIndex        =   35
      Top             =   480
      Width           =   1215
      Begin VB.CheckBox ckMonth 
         Caption         =   "Dec"
         Height          =   255
         Index           =   11
         Left            =   120
         TabIndex        =   47
         Top             =   4200
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Nov"
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   46
         Top             =   3840
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Oct"
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   45
         Top             =   3480
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Sep"
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   44
         Top             =   3120
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Aug"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   43
         Top             =   2760
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Jul"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   42
         Top             =   2400
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Jun"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   41
         Top             =   2040
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "May"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   40
         Top             =   1680
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Apr"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   39
         Top             =   1320
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Mar"
         Height          =   255
         Index           =   14
         Left            =   120
         TabIndex        =   38
         Top             =   960
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Feb"
         Height          =   255
         Index           =   13
         Left            =   120
         TabIndex        =   37
         Top             =   600
         Width           =   735
      End
      Begin VB.CheckBox ckMonth 
         Caption         =   "Jan"
         Height          =   255
         Index           =   12
         Left            =   120
         TabIndex        =   36
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.CommandButton btnDeleteLedger 
      Caption         =   "Delete"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      Style           =   1  'Graphical
      TabIndex        =   50
      Top             =   5400
      Width           =   975
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid grid3 
      Height          =   255
      Left            =   7440
      TabIndex        =   53
      Top             =   0
      Visible         =   0   'False
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   450
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
      _Band(0).GridLinesBand=   1
      _Band(0).TextStyleBand=   0
      _Band(0).TextStyleHeader=   0
   End
   Begin VB.Label lblAdmNo 
      Caption         =   "Admn.No."
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
      Left            =   3240
      TabIndex        =   56
      Top             =   600
      Width           =   855
   End
   Begin VB.Label Label3 
      Height          =   255
      Left            =   2160
      TabIndex        =   27
      Top             =   5400
      Width           =   3135
   End
   Begin VB.Image picture2 
      Height          =   1215
      Left            =   12240
      Picture         =   "PaymentFrm.frx":044A
      Stretch         =   -1  'True
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label Label18 
      Caption         =   "Label18"
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
      Left            =   5400
      TabIndex        =   49
      Top             =   4800
      Width           =   3975
   End
   Begin VB.Label Label17 
      Caption         =   "Label17"
      Height          =   255
      Left            =   0
      TabIndex        =   34
      Top             =   0
      Width           =   2295
   End
   Begin VB.Image Picture1 
      BorderStyle     =   1  'Fixed Single
      Height          =   1455
      Left            =   9840
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   1815
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      Caption         =   "Label14"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   32
      Top             =   0
      Width           =   3375
   End
   Begin VB.Label Label16 
      Caption         =   "Fees Structure"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7440
      TabIndex        =   30
      Top             =   0
      Width           =   2295
   End
   Begin VB.Label Label12 
      Caption         =   "Payment Received"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   29
      Top             =   3360
      Width           =   1815
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
      Height          =   255
      Left            =   600
      TabIndex        =   22
      Top             =   240
      Width           =   615
   End
   Begin VB.Label Label5 
      Caption         =   "Party (To)"
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
      TabIndex        =   20
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label13 
      Caption         =   "Label13"
      Height          =   135
      Left            =   120
      TabIndex        =   19
      Top             =   1560
      Width           =   15
   End
   Begin VB.Label Label11 
      Caption         =   "Mode (By)"
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
      Left            =   120
      TabIndex        =   17
      Top             =   2760
      Width           =   1815
   End
   Begin VB.Label Label10 
      Caption         =   "Particulars"
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
      Left            =   120
      TabIndex        =   16
      Top             =   2400
      Width           =   1695
   End
   Begin VB.Label Label9 
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
      Height          =   375
      Left            =   120
      TabIndex        =   15
      Top             =   2040
      Width           =   1575
   End
   Begin VB.Label Label8 
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
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   960
      Width           =   1815
   End
   Begin VB.Label Label7 
      Caption         =   "Student Name"
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
      TabIndex        =   11
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label Label6 
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
      Left            =   360
      TabIndex        =   10
      Top             =   7440
      Width           =   5415
   End
   Begin VB.Label Label1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   480
      TabIndex        =   7
      Top             =   10680
      Width           =   1695
   End
   Begin VB.Label Label2 
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
      Left            =   120
      TabIndex        =   6
      Top             =   600
      Width           =   1695
   End
   Begin VB.Label Label4 
      Height          =   255
      Left            =   2280
      TabIndex        =   28
      Top             =   3240
      Width           =   2775
   End
End
Attribute VB_Name = "PaymentFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Util As New Util
Dim site As New DBSite
Dim site2 As New DBSite2
Dim tIndex As Integer
Dim totalCharges As Double
Dim dt As Date
Dim lateFineAmount As Double
Dim lateFineDate As Date
Dim ledgerid As String
Dim receiptNoGlobal As String
Dim countMonths As Integer
Dim checkedlastMonthDate As Date
Dim delFid As String
Dim labelTop As Long
Dim label2Top As Long
Dim txtTop As Long
Dim WithEvents ctlLabel As VB.Label
Attribute ctlLabel.VB_VarHelpID = -1
Dim WithEvents ctlText As TextBox
Attribute ctlText.VB_VarHelpID = -1
Dim prvValue As Integer
Dim isReprint As Boolean


Private Sub btnBalanceByMonth_Click()

    If Len(txtString(0).Text) < 1 Or (Not IsNumeric(txtString(0).Text)) Then
        MsgBox "Student ID is not correct. "
        Exit Sub
    End If
    
    Call ShowBalanceByMonth
End Sub

Private Sub btnCalculateTotal_Click()
Dim total As Double
total = 0

Dim totalFees As Double

totalFees = 0

 Dim control
    For Each control In Me.Controls
        If Left(control.Name, 3) = "txx" Then
            Dim txtCid As String
            If IsNumeric(control.Text) Then
                   total = total + CDbl(control.Text)
            End If
        End If
        
       If Left(control.Name, 3) = "lbb" Then
              If IsNumeric(control.Caption) Then
                   totalFees = totalFees + CDbl(control.Caption)
            End If
        End If
    
        
        
    Next control
    ' 9999
    
    Label18.Caption = "Total Fee: " & Util.FormatDouble(totalFees) & " Receipt Total: " & Util.FormatDouble(total)
   
End Sub

Private Sub btnClear_Click()
    Call ClearForm
    Call FillGrid
    isReprint = False
    
    If GM.isFees = 0 Then
        'Me.txtString(0).SetFocus
        txtAdmNo.SetFocus
    Else
        Me.txtString(6).SetFocus
    End If
End Sub
Private Sub btnClose_Click()
    adminFrm.Show
    Unload Me
End Sub
Private Sub btnDeleteLedger_Click()
    On Error GoTo errHandler:
        site2.conn.BeginTrans

            Call Util.deleteLedgerRecord(site2, "", delFid)
        site2.conn.CommitTrans
    
    Call FillGrid2(False)
    
errHandler:
    If Err.Number <> 0 Then
        MsgBox Err.description
        site2.conn.RollbackTrans
    End If
    
    
    
End Sub
Private Sub btnPrint_Click()
     'MsgBox Util.AmountInWords(Util.FormatDouble(Me.txtString(5).Text))
     'Exit Sub
     
     If GM.isFees = 0 Then
        Dim checked_mnths() As String
        Dim checked_mnths_str As String
        
        checked_mnths_str = Util.GetSeletctedMonthsByLedgerId(site2, ledgerid)
        
        checked_mnths = Split(checked_mnths_str, ",")
        
        Dim i As Integer
        
        ' 5555
        ' clear all check boxes
                
        
                
        For i = 3 To 14
            Dim mnth  As String
            mnth = ckMonth(i).value
            
            Dim mn As Integer
            mn = i
            If i > 11 Then
                mn = i - 12
            End If
            mnth = Format(mn + 1 & "/10/2004 ", "mmmm")
            Dim k As Integer
            
            For k = 0 To UBound(checked_mnths)
                If UCase(Trim(checked_mnths(k))) = UCase(Trim(mnth)) Then
                    ckMonth(i).value = 1
                End If
            Next
            
            For k = 0 To UBound(checked_mnths)
                If UCase(Trim(checked_mnths(k))) <> UCase(Trim(mnth)) Then
                    ckMonth(i).value = 0
                End If
            Next
            
            
        Next
        
        
        
        
        
        Call PrintReceiptFull
     Else
        Call PrintVoucher
     End If
End Sub

Private Sub btnPrintPayment_Click()
    Call Me.FillGrid2(True)
End Sub
Private Sub btnSave_Click()
    On Error GoTo errHandler:
    Dim prn
            ' fees collection
    
    
    Dim p As Person
    Set p = New Person
    Dim cid As Long
    cid = p.getID(site.conn, "gid")
    ledgerid = cid
    
    Dim isPrint As Boolean
    isPrint = False
    
    If GM.isFees = 0 Then
        prn = MsgBox("Do You Want to print the Receipt?", vbYesNoCancel, "Receipt Printing")
        If prn = vbCancel Then
            Exit Sub
        ElseIf prn = vbYes Then
            isPrint = True
        Else
            Call Me.GetCheckedMonths
        End If
    Else
        'prn = MsgBox("Do You Want to print the Voucher?", vbYesNo, "Voucher Printing")
        'If prn = vbYes Then
         '   Call PrintVoucher
        'End If
    End If
    
        
    If GM.isFees = 0 Then
        Call Me.AddFees
    End If
    If Not (IsNumeric(txtString(3).Text) And CDbl(txtString(3).Text) > 0) Then
        MsgBox "No Amount Entered..."
        Exit Sub
    End If
    If Not Util.CheckDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "10", "10", "AM") Then
        MsgBox "Pls. Check Date.."
        txtFromDate(0).SetFocus
        Exit Sub
    Else
        If Not Util.checkFinancialYear(site2, Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text) Then
            MsgBox "Date entered is not in current financial year...Pls. Check"
            txtFromDate(0).SetFocus
            Exit Sub
        End If
    End If
    Dim ldate As Date
    ldate = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "10", "10", "AM")
    
    
    
    
    Dim particulars As String
    Dim mode As String
    Dim party As String
    Dim pid As String
    Dim amount As Double
    Dim receiptNo As String
    receiptNo = ""
    If GM.isFees = 0 Then
        party = "Student Account"
        receiptNo = CStr(p.getID(site.conn, "rid"))
    Else
        party = Me.txtString(6).Text
    End If
    
    ' sandeep
    particulars = GetCheckedMonths & " | " & Me.txtString(5).Text
    
    mode = Me.txtString(4).Text
    pid = Util.formatString(Me.txtString(0).Text)
    ' payment made
    If GM.isFees = 2 Or GM.isFees = 4 Then
        Dim tmp As String
        tmp = mode
        mode = party
        party = tmp
    End If
    Dim tm As String
    tm = Util.GetTimeInSeconds(Now)
    ldate = Util.GetDateWithSeconds(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, tm)
    'ledgerID = cid
    receiptNoGlobal = receiptNo
    If Util.ValiDateAmount(Me.txtString(3).Text, Me.txtString(3)) = False Then
        Exit Sub
    End If
    amount = CDbl(Me.txtString(3).Text)
    ' cash or bank mode
    If GM.isFees < 3 Then ' not if purchase
        If Not Util.ValiDateCashBank(site, txtString(4).Text, txtString(4), False) Then
              Exit Sub
        End If
        If GM.isFees <> 0 Then
            If Not Util.ValiDateCashBank(site, txtString(6).Text, txtString(6), True) Then
                Exit Sub
            End If
        End If
    Else
        If Not Util.ValiDatePurchase(site, txtString(4).Text, txtString(4), True) Then
            Exit Sub
        End If
    End If
    
    
    
    ' both save should be done
    site2.conn.BeginTrans
    Call Util.saveLedger(site2, cid, ldate, party, particulars, amount, mode, pid, False, "", GM.isFees, receiptNo)
    Dim control
    For Each control In Me.Controls
        If Left(control.Name, 3) = "txx" Then
            Dim txtCid As String
            If IsNumeric(control.Text) Then
                txtCid = Mid(control.Name, 4, Len(control.Name))
                Dim headCaption As String
                Dim headDetails As String
                Dim headFee As String
                Dim control1
                For Each control1 In Me.Controls
                    Dim lblCid As String
                    If Left(control1.Name, 3) = "lbb" Then
                        lblCid = Mid(control1.Name, 4, Len(control1.Name))
                        If lblCid = txtCid Then
                                                
                            headCaption = control1.Caption
                            headDetails = control1.DataField
                        End If
                    End If
                Next control1
                
                '55555
                ' save Fee By Head
                
                For Each control1 In Me.Controls
                    
                    If Left(control1.Name, 4) = "lbb9" Then
                        lblCid = Mid(control1.Name, 5, Len(control1.Name))
                        If lblCid = txtCid Then
                            headFee = control1.Caption
                          End If
                    End If
                Next control1
                
                Call Util.saveBreakUp(site2, cid, ldate, pid, headCaption, headDetails, headFee, CDbl(control.Text), receiptNo, GetCheckedMonths)
            End If
        End If
    Next control
    
    ' commit if all is well
    site2.conn.CommitTrans
    
    Dim tid As Long
    tid = p.getID(site.conn, "tid")
    cid = p.getID(site.conn, "cid")
    If Me.ckbFine.Visible = True And Me.ckbFine.value = 1 Then
        Call Util.saveFine(site2, tid, CStr(cid), pid, lateFineDate, "LateFeeFine", lateFineAmount)
    End If
    
    If isPrint Then
        Call PrintReceiptFull
    End If
    
    
errHandler:
    If Err.Number <> 0 Then
        MsgBox Err.description
        site2.conn.RollbackTrans
        
    End If
    
    Call ClearForm
    Call feesCalculation
    Call ReceiptTotal
End Sub
Private Sub ckMonth_Click(Index As Integer)
    Dim mnthString, lastMonth As String
    mnthString = GetCheckedMonths
    If countMonths = 0 Then
        MsgBox "Pls. select at least one month.."
        ckMonth(Index).value = 1
        Exit Sub
    End If
    Dim firstMonth As String
    Dim i As Integer
        For i = 0 To countMonths - 1
              lastMonth = Util.GetToken(Trim(GetCheckedMonths), ",", i)
              If i = 0 Then
                firstMonth = lastMonth
              End If
        Next
    'dt = Util.GetDate(Me.txtFromDate(0).Text, Format(lastMonth, mm), Me.txtFromDate(2).Text, "10", "10", "Am")
    dt = Util.GetDate(Me.txtFromDate(0).Text, Format(lastMonth, "mm"), Me.txtFromDate(2).Text, "10", "10", "Am")
    checkedlastMonthDate = dt
    Call feesCalculation
    Call ReceiptTotal
    Call FillGrid3
    Call FillGrid2(False)
    Dim firstDate As Date
    Dim currentDate As Date
    'firstDate = Util.GetDate(Me.txtFromDate(0).Text, Format(firstMonth, mm), Me.txtFromDate(2).Text, "11", "10", "Am")
    firstDate = Util.GetDate(Me.txtFromDate(0).Text, Format(firstMonth, "mm"), Me.txtFromDate(2).Text, "11", "10", "Am")
    currentDate = Util.GetDate(Util.GetDay(Now), Util.GetMonth(Now), Util.GetYear(Now), "10", "10", "Am")
    If firstDate < currentDate Then
       Label1.Caption = ""
       Label3.Caption = ""
       'Label4.Caption = ""
    End If
End Sub



Private Sub Form_Load()
    Me.KeyPreview = True
    Dim i As Integer
    For i = 0 To Me.txtString.count - 1
         Util.SetProperties txtString(i)
    Next
    If GM.isFees > 0 Then
        Me.txtString(6).TabIndex = 0
    End If
    If GM.isFees = 0 Then
        Call Util.SetProperties(txtAdmNo)
    End If
    VScroll1.Left = Me.Picture4.Left + Me.Picture4.Width - VScroll1.Width
    Me.VScroll1.Top = Me.Picture4.Top
    Me.VScroll1.Height = Me.Picture4.Height
    
    Call setGridProperties
    Call SetFromDate
    Call ClearForm
    
    isReprint = False
    
    Call updateButton
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
Private Sub Grid1_Click()
    Grid1.Col = 0
    If Len(Grid1.Text) > 0 Then
        ledgerid = Left(Grid1.Text, (Len(Grid1.Text) - 1))
    End If
    
    Call Me.updateButton
End Sub
Private Sub Grid2_Click()
   
     Grid2.Col = 4
     If Len(Grid2.Text) > 0 Then
        ledgerid = Left(Grid2.Text, (Len(Grid2.Text) - 1))
    End If
    
    If GM.isLedgerDelete Then
        Grid2.Col = 1
        If Len(Grid2.Text) > 0 Then
            delFid = Grid2.Text
        End If
    End If
   
   Call Me.updateButton
   
End Sub

Private Sub List1_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
       If tIndex = 1 And Len(List1.Text) > 0 Then
            txtString(0).Text = Util.GetTruncatedPid(List1.Text)
        End If
       Call Util.HideList(Me.txtString(tIndex), List1)
    End If
End Sub
Private Sub List1_LostFocus()
    Call Util.HideList(Me.txtString(tIndex), List1)
End Sub

Private Sub txtAdmNo_GotFocus()
    Util.FOCUSME txtAdmNo
End Sub
Private Sub txtAdmNo_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        txtString(0).Text = Util.GetPid(site, txtAdmNo.Text)
        Dim mnthString, lastMonth As String
        mnthString = GetCheckedMonths
        Dim i As Integer
        For i = 0 To countMonths - 1
              lastMonth = Util.GetToken(GetCheckedMonths, ",", i)
        Next
        dt = Util.GetDate(Me.txtFromDate(0).Text, Format(lastMonth, "mm"), Me.txtFromDate(2).Text, "12", "01", "Am")
        Call feesCalculation
        Call ReceiptTotal
        Call FillGrid3
        Call FillGrid2(False)
    End If
End Sub
Private Sub txtAdmNo_LostFocus()
    Util.LostFocus txtAdmNo
End Sub

Private Sub txtFromDate_GotFocus(Index As Integer)
    Util.FOCUSME txtFromDate(Index)
End Sub
Private Sub txtFromDate_LostFocus(Index As Integer)
    Util.LostFocus txtFromDate(Index)
End Sub
Private Sub txtString_Change(Index As Integer)
    Call updateButton
End Sub
Private Sub txtString_GotFocus(Index As Integer)
    Util.FOCUSME txtString(Index)
    Call MDIForm1.mdiHelp
End Sub
Private Sub txtString_KeyUp(Index As Integer, KeyCode As Integer, Shift As Integer)
      If Index < 2 And KeyCode = 13 Then
        Dim mnthString, lastMonth As String
        mnthString = GetCheckedMonths
        Dim i As Integer
        For i = 0 To countMonths - 1
              lastMonth = Util.GetToken(GetCheckedMonths, ",", i)
        Next
        dt = Util.GetDate(Me.txtFromDate(0).Text, Format(lastMonth, "mm"), Me.txtFromDate(2).Text, "12", "01", "Am")
        Call feesCalculation
        Call ReceiptTotal
        Call FillGrid3
        Call FillGrid2(False)
     End If
     If KeyCode = vbKeyDown Then
        Select Case Index
            Case 2
                  Call Util.LoVClass(site, "Dept", List1)
             Case 5 'particulars
                Call Util.LoVParticulars(site2, "Particulars", "vw_Ledger", List1, GM.isFees = 0)
             Case 1, 4, 6 'party
                If List1.Visible And List1.ListCount > 0 Then
                    List1.SetFocus
                    List1.Selected(0) = True
                 End If
        End Select
        tIndex = Index
        ElseIf KeyCode < 112 And KeyCode <> vbKeyShift And KeyCode <> 13 And KeyCode <> 27 Then
            Select Case Index
               Case 1
                    If Len(Me.txtString(2).Text) > 0 Then
                        Call Util.LoVPerson(site, Me.txtString(2).Text, "", List1, False, txtString(1).Text)
                        If List1.ListCount = 1 Then
                            List1.Selected(0) = True
                            If Len(List1.Text) > 0 Then
                                txtString(0).Text = Util.GetTruncatedPid(List1.Text)
                            End If
                        End If
                        Call Util.LovAuto(List1, txtString(Index))
                        tIndex = Index
                    End If
               Case 4
                    If GM.isFees > 2 Then
                       Call Util.LoVPurchase(site, "FirstName", List1, txtString(Index).Text)
                     Else
                       Call Util.LoVCashBank(site, "FirstName", List1, txtString(Index).Text)
                    End If
                    Call Util.LovAuto(List1, txtString(Index))
                    tIndex = Index
               Case 6
                    Call Util.lovPartyOnChange(site, "FirstName", List1, txtString(Index).Text)
                    Call Util.LovAuto(List1, txtString(Index))
                    tIndex = Index
            End Select
    End If
End Sub
Sub ClearForm()
    Me.Label1.Caption = ""
    Me.Label6.Caption = ""
    Me.Label18.Caption = ""
    Me.Label14.FontSize = 10
    Me.Label14.FontBold = True
    Me.Label17.Caption = "Cash In Hand: " & Util.GetCashInHand(site2)
    Me.Label2.Visible = GM.isFees = 0
    Me.Label8.Visible = GM.isFees = 0
    Me.Label7.Visible = GM.isFees = 0
    Me.Label1.Visible = GM.isFees = 0
    Me.Label18.Visible = GM.isFees = 0
    Me.Label12.Visible = GM.isFees = 0
    Me.Label16.Visible = GM.isFees = 0
    Me.Grid2.Visible = GM.isFees = 0
    'Me.grid3.Visible = GM.isFees = 0
    Me.grid3.Visible = False
    Me.Frame1.Visible = GM.isFees = 0
    
    Me.txtString(0).Visible = GM.isFees = 0
    Me.txtString(1).Visible = GM.isFees = 0
    Me.txtString(2).Visible = GM.isFees = 0
    txtAdmNo.Visible = GM.isFees = 0
    lblAdmNo.Visible = GM.isFees = 0
    Picture3.Visible = GM.isFees = 0
    Me.ckbFine.value = 1
    lateFineAmount = 0
    Me.ckbFine.Visible = False
    Me.Label5.Visible = GM.isFees > 0
    Me.txtString(6).Visible = GM.isFees > 0
    If GM.isFees > 0 Then
        Me.txtString(5).Width = 6000
    End If
    Select Case GM.isFees
        Case 0
            Me.Label14.Caption = "Fee Collection"
            'frame
            Dim mnth As Integer
    '***********************
            Dim k As Integer
            Dim ckChecked As Boolean
            ckChecked = False
            For k = 3 To 14
                If Me.ckMonth(k).value = 1 Then
                    ckChecked = True
                    Exit For
                End If
            Next
    
      '****************
            mnth = CInt(Util.GetMonth(Now))
            If mnth < 4 Then
                mnth = 12 + mnth
            End If
            If Not ckChecked Then
                Me.ckMonth(mnth - 1).value = 1
            End If
            
        Case 1
            Me.Label14.Caption = "Payment Received"
        Case 2
            Me.Label14.Caption = "Payment Made"
        Case 3
            Me.Label14.Caption = "Purchase"
        Case 4
            Me.Label14.Caption = "Purchase Return"
    End Select
    Me.txtString(2).Text = ""
    Me.txtString(1).Text = ""
    Me.txtString(3).Text = ""
    Me.txtString(4).Text = ""
    Me.txtString(5).Text = ""
    Me.txtString(6).Text = ""
    Me.Picture1.Picture = LoadPicture()
    Me.List1.Visible = False
    Label1.FontSize = 9
    Label1.FontBold = True
    
    
    
    Call Clear
    Call SetGrid3Properties
    Call SetGrid2Properties
End Sub
Private Sub txtString_LostFocus(Index As Integer)
    Util.LostFocus Me.txtString(Index)
End Sub
Sub feesCalculation()
        Call ClearForm
        Dim fees As Double
        fees = Util.CalculateFees(site, site2, Me.txtString(0).Text)
        Me.Label6.FontSize = 7
        If fees = -9999999 Then
           Me.Label6.Caption = "No Student found having PID as: '" & Me.txtString(0).Text & "'"
           Me.Label6.ForeColor = vbRed
        Else
            Me.Label1.Caption = fees
            Dim p As Person
            Set p = New Person
            p.pid = Me.txtString(0).Text
            Dim p2 As Person
            Set p2 = p.GetPerson(site, -1)
            Me.txtString(2).Text = p2.dept
            Me.txtString(1).Text = p2.firstName & " " & p2.middleName & " " & p2.lastName
            Me.txtString(4).Text = "Cash"
            'Me.txtString(4).Text = "Axis Bank"
            
            
            Me.Label4.Caption = "Balance  " & Util.FormatDouble(Util.GetStudentFeeBalance(site2, dt, p2.pid))
            
            Dim pfile As String
            pfile = Util.getPictureFileName(site, p.pid, -1)
            
            
            
            Me.Picture1.Picture = LoadPicture(pfile)
        End If
End Sub
Sub updateButton()
    If GM.isFees = 0 Then
        Me.btnSave.Enabled = Len(Me.txtString(0).Text) > 0 And Len(Me.txtString(4).Text) > 0
        txtString(3).BackColor = Me.BackColor
        'RGB(255, 159, 207)
        'Picture3.BackColor = RGB(255, 159, 207)
        'Picture4.BackColor = Picture3.BackColor
    Else
        Me.btnSave.Enabled = Len(Me.txtString(6).Text) > 0 And Len(Me.txtString(4).Text) > 0 And Len(Me.txtString(3).Text) > 0
    End If
    txtString(3).Enabled = GM.isFees <> 0
    
    Me.btnPrintPayment.Visible = GM.isFees = 0
    Me.btnCalculateTotal.Visible = GM.isFees = 0
    Me.btnDeleteLedger.Visible = False 'GM.isFees = 0 And GM.isLedgerDelete
    Grid2.row = 1
    Grid2.Col = 1
    Me.btnPrintPayment.Enabled = Len(Grid2.Text) > 0
    Me.btnPrint.Enabled = Len(ledgerid) > 0
    'Me.btnPrint.Visible = GM.isFees = 0
    Me.Label6.Visible = GM.isFees = 0
    Me.Picture1.Visible = GM.isFees = 0
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
Sub setGridProperties()
    Grid1.Refresh
    Grid1.Clear
    Grid1.Cols = 6
    
    Grid1.ColWidth(0) = 700
    Grid1.ColWidth(1) = 700 * 2
    Grid1.ColWidth(2) = 700 * 3
    Grid1.ColWidth(3) = 700 * 2
    Grid1.ColWidth(4) = 700 * 2
    Grid1.ColWidth(5) = 700 * 2
    Grid1.Width = Util.gridWidth(Grid1)
    Grid1.row = 0
    Grid1.Col = 0
    Grid1.Text = "ID"
    Grid1.Col = 1
    Grid1.Text = "Date"
    Grid1.Col = 2
    Grid1.Text = "Party"
    Grid1.Col = 3
    Grid1.Text = "Particulars"
    Grid1.Col = 4
    Grid1.Text = "Amount"
    Grid1.Col = 5
    Grid1.Text = "Mode"
End Sub
Sub FillGrid()
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    Dim lDtFrom, lDtTo As Date
    lDtTo = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "11", "59", "PM")
    lDtFrom = lDtTo - 1
    'query = "SELECT  cid, lDate, Party, particulars, amount, mode, pid FROM tblLedger WHERE lDate BETWEEN '" & lDtFrom & "' AND '" & lDtTo & "'"
    If GM.isSql Then
        query = " SELECT cid, lDate, acname, particulars, dr, cr, pid "
        query = query & " FROM vw_Ledger "
        query = query & " WHERE Acname NOT IN (SELECT ACNAME FROM tblLedger "
        query = query & " WHERE (ch_group = 'Bank Account' OR ch_group = 'Purchase Account')"
        query = query & " UNION Select 'Cash') "
        query = query & " AND lDate BETWEEN '" & lDtFrom & "' AND '" & lDtTo & "' "

    Else
        query = "SELECT  cid, lDate, acname, particulars, dr, cr, pid FROM tblLedger WHERE right(cid,1) IN ('C','O') AND lDate BETWEEN #" & lDtFrom & "# AND #" & lDtTo & "# "
    End If
    
    
    rs.Open query, site2.conn
    Dim row As Integer
    row = 1
    'Grid1.Rows = 2
    Call setGridProperties
    Dim cid As String
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            Grid1.Rows = row + 1
            Grid1.row = row
            Grid1.Col = 0
            cid = Util.CheckNull(rs.Fields("cid").value)
            Grid1.Text = cid
            Grid1.Col = 1
            Grid1.Text = Format(Util.CheckNull(rs.Fields("LDate").value), "dd-mmm-yyyy")
            Grid1.Col = 2
            Dim partyName As String
            partyName = Util.GetModeParty(site2, cid, "Party")
            Dim id As String
            id = Util.CheckNull(rs.Fields("pid").value)
            If Len(id) > 0 Then
                partyName = partyName & "(" & id & ")"
            End If
            Grid1.Text = partyName
            Grid1.Col = 3
            Grid1.Text = Util.CheckNull(rs.Fields("Particulars").value)
            Grid1.Col = 4
            Dim amt As Double
            Dim amtStr As String
            amtStr = Util.CheckNull(rs.Fields("cr").value)
            If Len(amtStr) < 1 Then
                amtStr = Util.CheckNull(rs.Fields("dr").value)
            End If
            amt = Util.CheckNullDouble(amtStr)
            Grid1.Text = Util.FormatDouble(amt)
            Grid1.Col = 5
            'Grid1.Text = Util.CheckNull(rs.Fields("mode").value)
            '*******
            Grid1.Text = Util.GetModeParty(site2, cid, "Mode")
            'Grid1.Text = "Cash"
            row = row + 1
            rs.MoveNext
        Wend
    End If
    Label6.Caption = "Total Records :  " & row - 1
    rs.Close
End Sub

Sub SetGrid1PropertiesByMonth()
    Grid1.Refresh
    Grid1.Clear
    Grid1.Cols = 7
    Grid1.Rows = 2
    Dim wdth As Integer
    wdth = 600
    Grid1.ColWidth(0) = wdth * 2
    Grid1.ColWidth(1) = wdth * 2
    Grid1.ColWidth(2) = wdth * 2
    Grid1.ColWidth(3) = wdth * 2
    Grid1.ColWidth(4) = wdth * 2
    Grid1.ColWidth(5) = wdth * 2
    Grid1.ColWidth(6) = 100
    Grid1.Width = Util.gridWidth(Grid1) - 100
    Grid1.row = 0
    Grid1.Col = 0
    Grid1.Text = "Month"
    Grid1.Col = 1
    Grid1.Text = "Fee"
    Grid1.Col = 2
    Grid1.Text = "Discount"
    Grid1.Col = 3
    Grid1.Text = "Net Fee"
    Grid1.Col = 4
    Grid1.Text = "Payment Rcd"
    Grid1.Col = 5
    Grid1.Text = "Balance"
    Grid1.Col = 6
    Grid1.Text = " "
End Sub



Sub ShowBalanceByMonth()
    ' 8888
    
    
    
    
    Dim query As String
    query = "DELETE FROM tblFee"
    site2.conn.Execute query
    
    Dim feeRecord As String
       
    Dim mnth_str As String
    ReDim months(1 To 12)
    'months = Array("January", "Feburary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
    months = Array("April", "May", "June", "July", "August", "September", "October", "November", "December", "January", "February", "March")
    
    Dim i As Integer
    
    For i = 0 To UBound(months)
        feeRecord = Util.GetFeesMonthHeadWise_Bazpur(site2, txtString(0).Text, CStr(months(i)), CInt(i), "")
    Next
       
    
    Dim rs As Recordset
    Set rs = New Recordset
    
        
    query = " SELECT FeeMonth "
    query = query + ", SUM(FeeAmount) Fee "
    query = query + ", SUM(Discount) Discount "
    query = query + ", SUM(FeeAfterDiscount) FeeAfterDiscount "
    query = query + ", SUM(PaymentRcd) PaymentRcd "
    query = query + ", sum(BalanceAmount) Balance "
    query = query + "From tblFee "
    query = query + " Where feeAmount > 0 "
    query = query + " Group By MonthNo, FeeMonth "
    query = query + " Order By MonthNo "
    rs.Open query, site2.conn
    Dim row As Integer
    row = 1
    Call SetGrid1PropertiesByMonth
    Dim paymentRcd As Double
    paymentRcd = 0
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            Grid1.Rows = row + 1
            Grid1.row = row
            Grid1.Col = 0
            Grid1.Text = Util.CheckNull(rs.Fields("FeeMonth").value)
            
            Grid1.Col = 1
            Grid1.Text = Util.CheckNullDouble(rs.Fields("Fee").value)
            
            Grid1.Col = 2
            Grid1.Text = Util.CheckNullDouble(rs.Fields("Discount").value)
            
            Grid1.Col = 3
            Grid1.Text = Util.CheckNullDouble(rs.Fields("FeeAfterDiscount").value)
            
            Grid1.Col = 4
            Grid1.Text = Util.CheckNullDouble(rs.Fields("PaymentRcd").value)
            
            Grid1.Col = 5
            Grid1.Text = Util.CheckNullDouble(rs.Fields("Balance").value)
            
            
            row = row + 1
            rs.MoveNext
        Wend
    End If
    rs.Close
    
    
        query = "SELECT * FROM tblFee"
        rs.Open query, site2.conn
    
    
        If rs.EOF = False Then
            Util.Export2CSV_GetRows rs, App.Path & "\", "FeeBalanceByMonth.CSV", 1000
        End If
        
        rs.Close
        
        Label6.Caption = "Created: " & App.Path & "\" & "FeeBalanceByMonth.CSV"
        
    
    
    
End Sub

Sub FillGrid2(isPrint As Boolean)
    Dim startX, startY, SpaceBetweenLine, col1x, col2X, col3X, col4X, col5x, col6x As Integer
    If isPrint Then
        startX = 650
        startY = 100
        col2X = startX + 600
        col3X = col2X + 1000
        col4X = col3X + 1000
        col5x = col4X + 1800 + 800 + 800
        col6x = col5x + 1800
        SpaceBetweenLine = 400
        Printer.FontSize = 12
        Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
        Printer.CurrentY = startY
        Printer.Print GM.registrationName
        Printer.FontSize = 10
        startY = startY + 300
        Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
        Printer.CurrentY = startY
        Printer.Print GM.registrationAddress
        startY = startY + 300
        Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
        Printer.CurrentY = startY
        Printer.Print GM.registrationAffiliation
        Printer.CurrentX = startX + 4000
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.FontSize = 12
        Printer.Print "Payment Details"
        Printer.FontSize = 9
        SpaceBetweenLine = SpaceBetweenLine + 200
        startY = startY
        Printer.FontBold = True
        Dim StudentName As String
        Dim pid As String
        pid = Me.txtString(0).Text
        StudentName = Me.txtString(1).Text
        SpaceBetweenLine = SpaceBetweenLine + 400
        Printer.CurrentX = startX + col1x
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "ID : " & pid
        Printer.CurrentX = startX + col2X - 200
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print " Admn.No.: " & Util.GetRegistrationNo(site, Trim(pid))
        Printer.CurrentX = startX + col3X
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Name : " & StudentName
        Printer.CurrentX = startX + 950 + col4X + 1600
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Class : " & Me.txtString(2).Text
        Printer.CurrentX = startX + 550 + col5x
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Date : " & Format(Now, "dd-mmm-yyyy")
        startX = startX + 550
        SpaceBetweenLine = SpaceBetweenLine + 500
        col2X = 550
        Printer.CurrentX = startX + col2X - 550
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Date"
        Printer.CurrentX = startX + col3X
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Folio No."
        Printer.CurrentX = startX + col4X
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Particulars"
        Printer.CurrentX = startX + col5x
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.Print "Amount"
        Printer.FontBold = False
    End If
    Dim rs As Recordset
    Set rs = New Recordset
    Dim query As String
    query = "SELECT lDate, cid, particulars, cr, Group_Name FROM vw_Ledger WHERE Acname IN ('Student Account') AND pid='" & Me.txtString(0).Text & "' ORDER by ldate"
    rs.Open query, site2.conn
    Dim row As Integer
    row = 1
    Call SetGrid2Properties
    Dim paymentRcd As Double
    paymentRcd = 0
    If Not rs.EOF Then
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            Grid2.Rows = row + 1
            Grid2.row = row
            Grid2.Col = 0
            Dim dt As String
            dt = Format(Util.CheckNull(rs.Fields("LDate").value), "dd-mmm-yyyy")
            Grid2.Text = dt
            Grid2.Col = 1
            Dim ledger_id As String
            Dim folio As String
            Dim rmks As String
            ledger_id = Util.CheckNull(rs.Fields("cid").value)
            folio = Util.FormatFolioNo(Util.CheckNull(rs.Fields("Group_Name").value))
            rmks = Util.CheckNull(rs.Fields("particulars").value)
            Grid2.Text = folio
            Grid2.Col = 2
            Grid2.Text = rmks
            Grid2.Col = 3
            Dim amt As Double
            amt = Util.CheckNullDouble(rs.Fields("cr").value)
            Grid2.Text = Util.FormatDouble(amt)
            Grid2.Col = 4
            Grid2.Text = ledger_id
            If isPrint Then
                SpaceBetweenLine = SpaceBetweenLine + 250
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.CurrentX = startX + col2X - 550
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print dt
                Printer.CurrentX = startX + col3X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print folio
                Printer.CurrentX = startX + col4X
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print rmks
                Call Util.PrintRightAlign(startX + col5x, startY + SpaceBetweenLine, Util.FormatDouble(amt))
            End If
            paymentRcd = paymentRcd + amt
            row = row + 1
            rs.MoveNext
        Wend
    End If
    rs.Close
    Me.Label3 = "Total Payment Rcd   " & Util.FormatDouble(paymentRcd)
    Me.Label3.FontBold = True
    'Me.Label4.Caption = "Balance                          " & Util.FormatDouble(totalCharges - paymentRcd)
    
    Me.Label4.FontBold = True
    If isPrint Then
        SpaceBetweenLine = SpaceBetweenLine + 300
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.CurrentX = startX + col2X
        Printer.CurrentY = startY + SpaceBetweenLine
        Printer.FontBold = True
        Printer.Print "Total Payment Received"
        Call Util.PrintRightAlign(startX + col5x, startY + SpaceBetweenLine, Util.FormatDouble(paymentRcd))
        Printer.FontBold = False
        Printer.CurrentX = startX + col5x + 100
        Printer.CurrentY = startY + SpaceBetweenLine + 800
        Printer.Print "Signature"
        Printer.CurrentX = startX + col5x + 100
        Printer.CurrentY = startY + SpaceBetweenLine + 800 + 300
        Printer.Print "(Office Supdt.)"
        Printer.EndDoc
    End If
    Call updateButton
End Sub
Sub SetGrid2Properties()
    Grid2.Refresh
    Grid2.Clear
    Grid2.Cols = 5
    Grid2.Rows = 2
    Dim wdth As Integer
    wdth = 600
    Grid2.ColWidth(0) = wdth * 2
    Grid2.ColWidth(1) = wdth * 2
    Grid2.ColWidth(2) = wdth * 2
    Grid2.ColWidth(3) = wdth * 2
    Grid2.ColWidth(4) = 100
    Grid2.Width = Util.gridWidth(Grid2) - 100
    Grid2.row = 0
    Grid2.Col = 0
    Grid2.Text = "Date"
    Grid2.Col = 1
    Grid2.Text = "FolioNo"
    Grid2.Col = 2
    Grid2.Text = "Particulars"
    Grid2.Col = 3
    Grid2.Text = "Amount"
    Grid2.Col = 4
    Grid2.Text = "LedgerID"
End Sub
Sub SetGrid3Properties()
    grid3.Refresh
    grid3.Clear
    grid3.Cols = 3
    grid3.Rows = 2
    grid3.ColWidth(0) = 700 * 2
    grid3.ColWidth(1) = 700 * 4
    grid3.ColWidth(2) = 700 * 2
    grid3.Width = Util.gridWidth(grid3)
    grid3.row = 0
    grid3.Col = 0
    grid3.Text = "Fees Head"
    grid3.Col = 1
    grid3.Text = "Particulars"
    grid3.Col = 2
    grid3.Text = "Amount"
End Sub
Sub PrintReceiptFull22March15()
    
        
    
    Dim dtt As Date
    dtt = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "10", "10", "AM")
    Dim startX, startY, SpaceBetweenLine, col2X, col3X, col4X, col5x, col6x As Integer
    startX = 650
    startY = 100
    col2X = startX + 600
    col3X = col2X + 1800
    col4X = col3X + 1800
    col5x = col4X + 1800
    col6x = col5x + 1800
    SpaceBetweenLine = 400
    Printer.PaintPicture Picture2.Picture, startX - 500, startY, 1000, 1000
    
    Printer.FontSize = 12
    Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
    Printer.CurrentY = startY
    Printer.Print GM.registrationName
    Printer.FontSize = 10
    startY = startY + 300
    Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
    Printer.CurrentY = startY
    Printer.Print GM.registrationAddress
    startY = startY + 300
    Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
    Printer.CurrentY = startY
    Printer.Print GM.registrationAffiliation
    
    Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth("RECEIPT") / 2)
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.FontSize = 10
    Printer.FontBold = True
    Printer.FontUnderline = True
    Printer.Print "RECEIPT"
    Printer.FontBold = False
    Printer.FontUnderline = False
    
    Printer.FontSize = 9
    SpaceBetweenLine = SpaceBetweenLine * 2
    startY = startY
    Printer.CurrentX = startX + 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Fees For The Month Of " & GetCheckedMonths()
    Printer.CurrentX = startX + 550 + col5x
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Date : " & Format(dtt, "dd-mmm-yyyy")
    Dim lid As String
    lid = ledgerid + "D"
    Dim lgrId As String
    lgrId = lid
    
    ' get student name from ledgerId
    
    Dim pid As String
    Dim StudentName As String
    Dim clas As String
    
    
    'pid = Me.txtString(0).Text
    pid = Util.GetPidByLedgerId(site2, lid)
    
    'StudentName = Me.txtString(1).Text
    Dim p As Person
    Set p = New Person
    p.pid = pid
    
    Dim p2 As Person
    Set p2 = p.GetPerson(site, -1)

    
    StudentName = p2.firstName + " " + p2.lastName
    clas = p2.dept
    
    
    
    SpaceBetweenLine = SpaceBetweenLine + 400
    Printer.CurrentX = startX + 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "FolioNo. : " & Util.folioNo(site2, lgrId)
    Printer.CurrentX = startX + 1000 + col2X
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "ID : " & pid
    Printer.CurrentX = startX + col3X
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print " Admn. No: " & Util.GetRegistrationNo(site, Trim(pid))
    Printer.CurrentX = startX + 550 + col3X + 1000
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Class : " & clas
    Printer.CurrentX = startX + 550 + col5x
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Name : " & StudentName
    
    startX = startX + 550
    SpaceBetweenLine = SpaceBetweenLine + 300
    col2X = 550
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Father Name : " & Util.GetFatherName(pid)
    
    
    startX = startX + 550
    SpaceBetweenLine = SpaceBetweenLine + 500
    col2X = 550
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Fee Head"
    Printer.CurrentX = startX + col5x
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Amount"
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    
    '999
    
    query = "SELECT head as head, amount, fType, whichMonth FROM tblFeeStucture WHERE tid IN (SELECT max(tid) from tblFeeStucture Group By cid) AND   class = '" & clas & "' AND pid IN ('0','" & pid & "') "
    query = query + " UNION "
    'query = query + "SELECT headName as head, amount, '', 'xxx'  FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid) AND format(cDate,'mmm')='" & Format(dtt, "mmm") & "' AND pid ='" & Me.txtString(0).Text & "'"
    
    query = query + " select 'Transport' head, isNull(RouteFee, 0) amount, 'Monthly' ftype, '' whichmonth "
    query = query + " from tblPerson p "
    query = query + " LEFT OUTER JOIN tblRoute r on r.RouteId = p.routeID "
    query = query + " WHERE p.tid IN (SELECT MAX(tid) from tblPerson Group By pid) "
    query = query + " and pid = '" & pid & "' "
    
    
    query = query + " UNION "
    ' 444
    If GM.isSql Then
        query = query + "SELECT headName as head, amount, 'One Time', DATENAME(month, cDate)  FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  AND pid ='" & pid & "'"
    Else
        query = query + "SELECT headName as head, amount, 'One Time', format(cDate,'mmm')  FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  AND pid ='" & pid & "'"
    End If
    
    query = " "
    query = query + " select "
    query = query + " (case when FineHeadName is NUll then StuctureHeadName else FineHeadName end) Head "
    query = query + " , (case when FineHeadName is NUll then fType else 'One Time' end) fType"
    query = query + " , whichMonth"
    query = query + " , amount"
    query = query + " From"
    query = query + " ("
    query = query + " select"
    query = query + " fm.head headID"
    query = query + " , headName FineHeadName"
    query = query + " , (case when fm.head = '111111' then 'Transport' else s.head end )StuctureHeadName "
    query = query + " , (case when fm.head = '111111' then 'Monthly' else s.fType end)ftype "
    query = query + " , whichMonth"
    query = query + " , FeeAmount amount"
    query = query + " from tblFeeMonth fm"
    query = query + " LEFT OUTER JOIN tblFine f ON f.cid = fm.head"
    query = query + " LEFT OUTER JOIN tblFeeStucture s on s.cid = fm.head"
    query = query + " Where fm.pid = '" & pid & "' "
    query = query + " )as T1 WHERE (case when FineHeadName is NUll then StuctureHeadName else FineHeadName end) is not null"

    
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    Dim head As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
    If Not rs.EOF Then
        Printer.FontSize = 8
        SpaceBetweenLine = SpaceBetweenLine + 200
        Dim mnth, fType As String
        mnth = Format(dtt, "mmm")
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            head = Util.CheckNull(rs.Fields("Head").value)
            fType = Util.CheckNull(rs.Fields("fType").value)
            amount = Util.CheckNullDouble(rs.Fields("amount").value)
            WhichMonth = Util.CheckNull(rs.Fields("WhichMonth").value)
            Dim willPrint As Boolean
            willPrint = True
            If (fType = "One Time" Or fType = "Annual") And Util.isWhichMonthSeleted(GetCheckedMonths, WhichMonth) Then
                willPrint = False
                amount = 0
            End If
            '6666
            If (fType = "Monthly") And Util.isDiscountHead(site2, head) Then
                '*************
                'discount should be calculated monthwiuse
                '*************
                Dim tutionAmount As Double
                Dim TtltutionAmount As Double
                tutionAmount = amount
                TtltutionAmount = 0
                Dim i As Integer
                For i = 0 To countMonths - 1
                    Dim monthName As String
                    monthName = Util.GetToken(GetCheckedMonths, ",", i)
                    Dim YY As String
                    YY = Util.CalculateYearMonthWise(dtt, monthName)
                    TtltutionAmount = TtltutionAmount + tutionAmount - (tutionAmount * (Util.GetMonthWiseDiscount(site2, pid, monthName, YY, head) / 100))
                Next
                amount = TtltutionAmount
             End If
            '666
            If (fType = "Annual") And Util.isDiscountHead(site2, head) And Util.isWhichMonthSeleted1(GetCheckedMonths, WhichMonth, countMonths) Then
                YY = Util.CalculateYearMonthWise(dtt, WhichMonth)
                Dim tutionAmount2 As Double
                Dim TtltutionAmount2 As Double
                tutionAmount2 = amount
                TtltutionAmount2 = 0
                tutionAmount2 = amount
                TtltutionAmount2 = TtltutionAmount2 + tutionAmount2 - (tutionAmount2 * (Util.GetMonthWiseDiscount(site2, pid, WhichMonth, YY, head) / 100))
                amount = TtltutionAmount2
            End If
            If (fType = "Monthly") And Not Util.isDiscountHead(site2, head) Then
                amount = amount * countMonths
            End If
            
            
            ' 4444 ledgerID
            'total = total + amount
            
            Dim RcdfeeAmountByMonth As Double
            RcdfeeAmountByMonth = 0
            
            Dim k As Integer
            
            For k = 0 To countMonths
                Dim monthName2 As String
                monthName2 = Util.GetToken(GetCheckedMonths, ",", k)
                RcdfeeAmountByMonth = RcdfeeAmountByMonth + Util.GetFeeRcdMonthHeadWise(site2, pid, monthName2, head, ledgerid)
            Next
            
            willPrint = RcdfeeAmountByMonth <> 0
            total = total + RcdfeeAmountByMonth
         
            If willPrint Then
                SpaceBetweenLine = SpaceBetweenLine + 250
                Printer.CurrentX = startX
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print head
                '6666
                'Call Util.PrintRightAlign(startX + col5x + 150, startY + SpaceBetweenLine, Util.FormatDouble(amount))
                Call Util.PrintRightAlign(startX + col5x + 150, startY + SpaceBetweenLine, Util.FormatDouble(200))
            End If
            rs.MoveNext
        Wend
    End If
    SpaceBetweenLine = SpaceBetweenLine + 250
    SpaceBetweenLine = SpaceBetweenLine + 250
    Dim bal, advance, payment As Double
    advance = 0#
    payment = Util.GetPayment(site2, lid)
    bal = total - payment
    If bal < 0 Then
        advance = bal * -1
        bal = 0
    End If
    SpaceBetweenLine = SpaceBetweenLine + 250
    Printer.CurrentX = startX + col4X
    SpaceBetweenLine = SpaceBetweenLine + 280
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "----------------------------------------------------------"
    Printer.CurrentX = startX + col4X
    SpaceBetweenLine = SpaceBetweenLine + 300
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "TOTAL FEES "
    Call Util.PrintRightAlign(startX + col5x + 150, startY + SpaceBetweenLine, Util.FormatDouble(total))
    Printer.CurrentX = startX + col4X
    SpaceBetweenLine = SpaceBetweenLine + 320
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "----------------------------------------------------------"
    
    SpaceBetweenLine = SpaceBetweenLine + 250
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.FontBold = True
    Printer.FontItalic = True
    Printer.Print "Amount Rcd"
    Call Util.PrintRightAlign(startX + col5x + 150, startY + SpaceBetweenLine, Util.FormatDouble(payment))
    Printer.FontBold = False
    Printer.FontItalic = False
    
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine + 800
    Printer.Print Util.GetParticularsForReciept(site2, lid)
        
    Printer.CurrentX = startX + col5x + 100
    Printer.CurrentY = startY + SpaceBetweenLine + 800
    Printer.Print "Signature"
    Printer.CurrentX = startX + col5x + 100
    Printer.CurrentY = startY + SpaceBetweenLine + 800 + 300
    Printer.Print "(Office Supdt.)"
    
    ' SKM haldwani
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "Note: A late fee shall be levied from 16th to the last working day @Rs 5.00 per day."
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      No request will be entertained regarding the fine exemption."
    
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      If the fee is not cleared upto the last day of the month, he/she will have to pay "
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      a sum of Rs.100.00 as re=admission fee alongwith last month dues."
    
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      After two months, if the fee is not paid, his/her name will be struck off "
    
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      and he/she will have to go through the new admission procedure after seeking"
    
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      approval from the principal."
    
    Printer.EndDoc
End Sub
Sub PrintReceiptFull()
    
    
    Dim startX, startY, SpaceBetweenLine, col2X, col3X, col4X, col5x, col6x As Integer
    startX = 650
    startY = 100
    col2X = startX + 600
    col3X = col2X + 1800
    col4X = col3X + 1800
    col5x = col4X + 1800
    col6x = col5x + 1800
    SpaceBetweenLine = 400
    Printer.PaintPicture Picture2.Picture, startX - 500, startY, 1000, 1000
    
    Printer.FontSize = 12
    Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2)
    Printer.CurrentY = startY
    Printer.Print GM.registrationName
    Printer.FontSize = 10
    startY = startY + 300
    Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAddress) / 2)
    Printer.CurrentY = startY
    Printer.Print GM.registrationAddress
    startY = startY + 300
    Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationAffiliation) / 2)
    Printer.CurrentY = startY
    Printer.Print GM.registrationAffiliation
    
    Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth("RECEIPT") / 2)
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.FontSize = 10
    Printer.FontBold = True
    Printer.FontUnderline = True
    Printer.Print "RECEIPT"
    Printer.FontBold = False
    Printer.FontUnderline = False
    
    
    Dim lid As String
    lid = ledgerid + "D"
    Dim lgrId As String
    lgrId = lid
    
    
    Printer.FontSize = 9
    SpaceBetweenLine = SpaceBetweenLine * 2
    startY = startY
    Printer.CurrentX = startX + 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Fees For The Month Of " & Util.GetMonthsByLedgerId(site2, lid)
    Printer.CurrentX = startX + 550 + col5x
    Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "Date : " & Format(dtt, "dd-mmm-yyyy")
    Printer.Print "Date : " & Util.GetRptDateByLedgerId(site2, lid)
    
    ' get student name from ledgerId
    
    Dim pid As String
    Dim StudentName As String
    Dim clas As String
    
    
    'pid = Me.txtString(0).Text
    pid = Util.GetPidByLedgerId(site2, lid)
    
    'StudentName = Me.txtString(1).Text
    Dim p As Person
    Set p = New Person
    p.pid = pid
    
    Dim p2 As Person
    Set p2 = p.GetPerson(site, -1)

    
    StudentName = p2.firstName + " " + p2.lastName
    clas = p2.dept
    
    
    
    SpaceBetweenLine = SpaceBetweenLine + 400
    Printer.CurrentX = startX + 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "FolioNo. : " & Util.folioNo(site2, lgrId)
    Printer.CurrentX = startX + 1000 + col2X
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "ID : " & pid
    Printer.CurrentX = startX + col3X
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Admn.No.: " & Util.GetRegistrationNo(site, Trim(pid))
    Printer.CurrentX = startX + 550 + col3X + 1000
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Class : " & clas
    Printer.CurrentX = startX + 550 + col5x
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Name : " & StudentName
    
    startX = startX + 550
    SpaceBetweenLine = SpaceBetweenLine + 300
    col2X = 550
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Father Name : " & Util.GetFatherName(pid)
    
    
    startX = startX + 550
    SpaceBetweenLine = SpaceBetweenLine + 500
    col2X = 550
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Fee Head"
    
    Printer.CurrentX = startX + col4X
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Fee Amount"
    
    Printer.CurrentX = startX + col5x
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.Print "Amount Rcd"
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    
    
    query = " "
    query = query + " select "
    query = query + " (case when FineHeadName is NUll then StuctureHeadName else FineHeadName end) Head "
    query = query + " , HeadFee"
    query = query + " , amount"
    query = query + " From"
    query = query + " ("
    query = query + " select"
    query = query + "  headName FineHeadName"
    query = query + " , (case when bk.head = '111111' then 'Transport' else s.head end )StuctureHeadName "
    query = query + " , bk.HeadFee "
    query = query + " , bk.amount "
    
    query = query + " from tblBreakUp bk"
    query = query + " LEFT OUTER JOIN tblFine f ON f.cid = bk.head  AND f.tid IN (SELECT MAX(tid) FROM tblFine GROUP BY cid) "
    query = query + " LEFT OUTER JOIN tblFeeStucture s on s.cid = bk.head  AND s.tid IN (SELECT MAX(tid) FROM tblFeeStucture GROUP BY cid) "
    query = query + " Where bk.cid = '" & ledgerid & "' "
    query = query + " )as T1 WHERE (case when FineHeadName is NUll then StuctureHeadName else FineHeadName end) is not null "
    query = query + " AND amount > 0 "
    query = query + " ORDER BY Head "
    
    'MsgBox query
    
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    Dim head As String
    Dim headFee As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
    If Not rs.EOF Then
        Printer.FontSize = 8
        SpaceBetweenLine = SpaceBetweenLine + 200
        Dim mnth, fType As String
        'mnth = Format(dtt, "mmm")
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            head = Util.CheckNull(rs.Fields("Head").value)
            'fType = Util.CheckNull(rs.Fields("fType").value)
            headFee = Util.CheckNull(rs.Fields("HeadFee").value)
            amount = Util.CheckNullDouble(rs.Fields("amount").value)
            'WhichMonth = Util.CheckNull(rs.Fields("WhichMonth").value)
            Dim willPrint As Boolean
            willPrint = True
            If willPrint Then
                SpaceBetweenLine = SpaceBetweenLine + 250
                Printer.CurrentX = startX
                Printer.CurrentY = startY + SpaceBetweenLine
                Printer.Print head
                '66666
                Call Util.PrintRightAlign(startX + col4X + 150, startY + SpaceBetweenLine, Util.FormatDouble(headFee))
                Call Util.PrintRightAlign(startX + col5x + 150, startY + SpaceBetweenLine, Util.FormatDouble(amount))
                total = total + amount
            End If
            rs.MoveNext
        Wend
    End If
    SpaceBetweenLine = SpaceBetweenLine + 250
    SpaceBetweenLine = SpaceBetweenLine + 250
    Dim bal, advance, payment As Double
    advance = 0#
    payment = Util.GetPayment(site2, lid)
    bal = total - payment
    If bal < 0 Then
        advance = bal * -1
        bal = 0
    End If
    SpaceBetweenLine = SpaceBetweenLine + 250
    Printer.CurrentX = startX + col4X
    SpaceBetweenLine = SpaceBetweenLine + 280
    Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "----------------------------------------------------------"
    Printer.CurrentX = startX + col4X
    SpaceBetweenLine = SpaceBetweenLine + 300
    Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "TOTAL FEES "
    Call Util.PrintRightAlign(startX + col5x + 150, startY + SpaceBetweenLine, Util.FormatDouble(total))
    Printer.CurrentX = startX + col4X
    SpaceBetweenLine = SpaceBetweenLine + 320
    Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "----------------------------------------------------------"
    
    SpaceBetweenLine = SpaceBetweenLine + 250
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.FontBold = True
    Printer.FontItalic = True
    Printer.Print "Amount Rcd"
    Call Util.PrintRightAlign(startX + col5x + 150, startY + SpaceBetweenLine, Util.FormatDouble(payment))
    Printer.FontBold = False
    Printer.FontItalic = False
    
    
    SpaceBetweenLine = SpaceBetweenLine + 250
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine
    Printer.FontBold = True
    Printer.FontItalic = True
    
    ' 2222222
    Printer.Print "Net Balance"
    Call Util.PrintRightAlign(startX + col5x + 150, startY + SpaceBetweenLine, Util.FormatDouble(Util.GetStudentFeeBalance(site2, dt, p2.pid)))
    Printer.FontBold = False
    Printer.FontItalic = False
    
    
    Printer.CurrentX = startX + col2X - 550
    Printer.CurrentY = startY + SpaceBetweenLine + 800
    Printer.Print Util.GetParticularsForReciept(site2, lid)
        
        
    
        
        
        
    Printer.CurrentX = startX + col5x + 100
    Printer.CurrentY = startY + SpaceBetweenLine + 800
    Printer.Print "Signature"
    Printer.CurrentX = startX + col5x + 100
    Printer.CurrentY = startY + SpaceBetweenLine + 800 + 300
    Printer.Print "(Office Supdt.)"
    
    ' SKM haldwani
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "Note: A late fee shall be levied from 16th to the last working day @Rs 5.00 per day."
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      No request will be entertained regarding the fine exemption."
    
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      If the fee is not cleared upto the last day of the month, he/she will have to pay "
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      a sum of Rs.100.00 as re=admission fee alongwith last month dues."
    
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      After two months, if the fee is not paid, his/her name will be struck off "
    
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      and he/she will have to go through the new admission procedure after seeking"
    
    'SpaceBetweenLine = SpaceBetweenLine + 250
    'Printer.CurrentX = startX + col2X - 550
    'Printer.CurrentY = startY + SpaceBetweenLine
    'Printer.Print "      approval from the principal."
    
    Printer.EndDoc
End Sub



Function GetCheckedMonths() As String
    GetCheckedMonths = ""
    countMonths = 0
    Dim count As Integer
    count = 0
    Dim i As Integer
    For i = 3 To 14
        If Me.ckMonth(i).value = 1 Then
            Dim mn As Integer
            mn = i
            If i > 11 Then
                mn = i - 12
            End If
            GetCheckedMonths = GetCheckedMonths + ", " & Format(mn + 1 & "/10/2004 ", "mmmm")
            count = count + 1
        End If
    Next
    countMonths = count
    If Len(GetCheckedMonths) > 0 Then
        GetCheckedMonths = Right(GetCheckedMonths, Len(GetCheckedMonths) - Len(", ") + 1)
    End If
End Function
Sub ReceiptTotal()
    Dim dtt As Date
    dtt = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "10", "10", "AM")
    Dim lid As String
    lid = ledgerid + "D"
    Dim lgrId As String
    lgrId = lid
    Dim StudentName As String
    Dim pid As String
    pid = Me.txtString(0).Text
    StudentName = Me.txtString(1).Text
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT head as head, amount, fType, whichMonth FROM tblFeeStucture WHERE tid IN (SELECT max(tid) from tblFeeStucture Group By cid) AND   class = '" & Me.txtString(2).Text & "' AND pid IN ('0','" & Me.txtString(0).Text & "') "
    query = query + " UNION "
    If GM.isSql Then
        query = query + "SELECT headName as head, amount, 'One Time', DATENAME(month, cDate)  FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  AND pid ='" & Me.txtString(0).Text & "'"
    Else
        query = query + "SELECT headName as head, amount, 'One Time', format(cDate,'mmm')  FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  AND pid ='" & Me.txtString(0).Text & "'"
    End If
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    Dim head As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
    If Not rs.EOF Then
        Dim mnth, fType As String
        mnth = Format(dtt, "mmm")
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            head = Util.CheckNull(rs.Fields("Head").value)
            fType = Util.CheckNull(rs.Fields("fType").value)
            amount = Util.CheckNullDouble(rs.Fields("amount").value)
            WhichMonth = Util.CheckNull(rs.Fields("WhichMonth").value)
            Dim willPrint As Boolean
            willPrint = True
            If (fType = "One Time" Or fType = "Annual") And Util.isWhichMonthSeleted(Me.GetCheckedMonths, WhichMonth) Then
                willPrint = False
                amount = 0
            End If
            '6666
            If (fType = "Monthly") And Util.isDiscountHead(site2, head) Then
                Dim tutionAmount As Double
                Dim TtltutionAmount As Double
                tutionAmount = amount
                TtltutionAmount = 0
                Dim i As Integer
                For i = 0 To countMonths - 1
                    Dim monthName As String
                    monthName = Util.GetToken(GetCheckedMonths, ",", i)
                    Dim YY As String
                    YY = Util.CalculateYearMonthWise(dtt, monthName)
                    TtltutionAmount = TtltutionAmount + tutionAmount - (tutionAmount * (Util.GetMonthWiseDiscount(site2, pid, monthName, YY, head) / 100))
                Next
                amount = TtltutionAmount
            End If
            '6666
            If (fType = "Annual") And Util.isDiscountHead(site2, head) And Util.isWhichMonthSeleted1(GetCheckedMonths, WhichMonth, countMonths) Then
                YY = Util.CalculateYearMonthWise(dtt, WhichMonth)
                Dim tutionAmount2 As Double
                Dim TtltutionAmount2 As Double
                tutionAmount2 = amount
                TtltutionAmount2 = 0
                tutionAmount2 = amount
                TtltutionAmount2 = TtltutionAmount2 + tutionAmount2 - (tutionAmount2 * (Util.GetMonthWiseDiscount(site2, pid, WhichMonth, YY, head) / 100))
                amount = TtltutionAmount2
            End If
            If (fType = "Monthly") And Not Util.isDiscountHead(site2, head) Then
                amount = amount * countMonths
            End If
            total = total + amount
            rs.MoveNext
        Wend
    End If
    Label18.Caption = "Receipt Total                  " & Util.FormatDouble(total)
End Sub
Private Sub PrintVoucher()
    Dim startX, startY, col2X, col3X, col4X, paraY1, paraY2, endX, endY, lineY, extnX, lineX As Integer
    Dim col1x, col5x, col6x As Integer
    startX = 2500 + 1000
    startY = 200
    col2X = 600
    col3X = col2X + 600 + 1200 + 1000 + 800
    col4X = col3X + 1000
    col5x = col4X + 1800
    col6x = col5x + 1800
    paraY1 = 200
    paraY2 = 600
    endY = 5000
    endX = 10500
    lineY = 300
    extnX = 3000
    lineX = 200
    Printer.DrawWidth = 4
    Printer.Line (startX - extnX, startY)-(startX - extnX, endY)
    Printer.Line (startX - extnX, startY)-(endX, startY)
    Printer.Line (startX, startY)-(endX, startY)
    Printer.Line (startX, startY)-(startX, endY)
    Printer.Line (endX, startY)-(endX, endY)
    startX = startX + 200
     startY = startY + 100
     Printer.FontSize = 10
     Printer.CurrentX = (Printer.ScaleWidth / 2) - (Printer.TextWidth(GM.registrationName) / 2) + 1000
     Printer.CurrentY = startY
     Printer.Print GM.registrationName
    startY = startY + paraY1
    Printer.FontSize = 12
    Printer.CurrentX = GM.startXX + 1000 + 500 + 1000
    Printer.CurrentY = startY
    'Printer.Print GM.registrationAddress
    startY = startY + paraY1
    Printer.CurrentX = startX + 1750
    Printer.CurrentY = startY
    Printer.FontUnderline = True
    Printer.FontSize = 9
    Dim voucherType As String
    voucherType = "PAYMENT MADE VOUCHER"
    If GM.isFees = 1 Then
        voucherType = "PAYMENT RECEIPT VOUCHER"
    End If
    Printer.Print voucherType
    Printer.FontUnderline = False
    Printer.FontSize = 9
    Printer.DrawWidth = 2
    startY = startY + paraY1
    Printer.Line (startX - lineX, startY + lineY)-(endX, startY + lineY)
    Printer.Line (startX + col4X - 100, startY + lineY)-(endX, startY + lineY)
    startY = startY + lineY
    Printer.CurrentX = startX
    Printer.CurrentY = startY
    Printer.Print "LedgerNo. : " & ledgerid
    Dim lid As String
    lid = ledgerid + "D"
    
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT Ldate, Particulars, CR, DR FROM vw_Ledger WHERE CID='" & lid & "'"
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
      rs.MoveFirst
      While rs.AbsolutePosition <> adPosEOF
        Dim amt As String
        Dim dtt, particulars As String
        amt = Util.FormatDouble(rs.Fields("CR").value)
        particulars = Util.CheckNull(rs.Fields("particulars").value)
        dtt = rs.Fields("Ldate").value
        Printer.CurrentX = startX + col3X + 800
        Printer.CurrentY = startY
        Printer.Print "Date : " & Format(dtt, "dd-mmm-yyyy")
        startY = startY + lineY
        Printer.Line (startX - lineX, startY)-(endX, startY)
        Printer.Line (startX + col4X - 100, startY)-(startX + col4X - 100, endY - 700) '888888888888
        Printer.CurrentX = startX - extnX - 150
        Printer.CurrentY = startY
        Printer.Print "Received the sum of Rs"
        Printer.CurrentX = startX - extnX - 150
        Printer.CurrentY = startY + 300
        Dim amtt As String
        amtt = amt
        Printer.Print Util.AmountInWords(amtt)
        Printer.CurrentX = startX - extnX - 150
        Printer.CurrentY = startY + 600 + 300 + 1000
        Printer.Print "Rs. " & amt
        Printer.CurrentX = startX - extnX + 2000
        Printer.CurrentY = startY + 600 + 300 + 1000
        Printer.Print "Sign"
        Printer.CurrentX = startX + col1x
        Printer.CurrentY = startY
        Printer.FontBold = True
        Dim drcr As String
        drcr = "CREDIT"
        If GM.isFees = 2 Then
            drcr = "DEBIT"
        End If
        Printer.Print drcr
        Printer.FontBold = False
        startY = startY + paraY1
        Printer.CurrentX = startX + col2X
        Printer.CurrentY = startY
        Printer.FontBold = True
        Printer.Print "M/s " & Util.GetModeParty(site2, lid, "Party")
        Printer.FontBold = False
        startY = startY + paraY1 + 100
        Printer.CurrentX = startX + col1x
        Printer.CurrentY = startY
        Printer.Print "Particulars : " & particulars
        Printer.Line (startX - lineX, endY / 2)-(endX, endY / 2)
        startY = endY / 2 + 100
        Printer.CurrentX = startX + col3X
        Printer.CurrentY = startY
        Printer.FontItalic = True
        Printer.Print "Total"
        Printer.FontItalic = False
        Printer.CurrentX = startX + col4X + 200
        Printer.CurrentY = startY
        Printer.Print amt
        
        Printer.Line (startX - lineX, (endY / 2) + 300)-(endX, (endY / 2) + 300)
        startY = startY + paraY1
        Printer.CurrentX = startX + col1x
        Printer.CurrentY = startY
        Printer.FontBold = True
        drcr = "DEBIT"
        If GM.isFees = 2 Then
            drcr = "CREDIT"
        End If
        Printer.Print drcr
        Printer.FontBold = False
        startY = startY + paraY1 + 100
        Printer.CurrentX = startX + col2X
        Printer.CurrentY = startY
        Printer.FontBold = True
        Printer.Print Util.GetModeParty(site2, lid, "Mode")
        Printer.FontBold = False
        
        startY = startY + paraY2
        Printer.Line (startX - lineX, endY - 700 - 300)-(endX, endY - 700 - 300)
        
        Printer.CurrentX = startX + col3X
        Printer.CurrentY = endY - 700 - 200
        Printer.FontItalic = True
        Printer.Print "Total"
        Printer.FontItalic = False
        Printer.CurrentX = startX + col4X + 200
        Printer.CurrentY = endY - 700 - 200
        Printer.Print amt
        startY = startY + 100
        Printer.Line (startX - lineX, endY - 700)-(endX, endY - 700)
        rs.MoveNext
       Wend
    End If
    startY = startY + paraY1
    Printer.CurrentX = startX + col4X
    Printer.CurrentY = endY - 300
    Printer.Print "Sign(Accounts)"
    'Printer.Line (startX - 1000, endY)-(startX, endY)
    Printer.DrawWidth = 4
    Printer.Line (startX - lineX - extnX, endY)-(endX, endY)
    Printer.EndDoc
End Sub
'receipt Total
Sub FillGrid3()
    Call Clear
    Dim dtt As Date
    dtt = Util.GetDate(Me.txtFromDate(0).Text, Me.txtFromDate(1).Text, Me.txtFromDate(2).Text, "10", "10", "AM")
    Dim lid As String
    lid = ledgerid + "D"
    Dim lgrId As String
    lgrId = lid
    Dim StudentName As String
    Dim pid As String
    pid = Me.txtString(0).Text
    StudentName = Me.txtString(1).Text
    Dim query As String
    Dim rs As Recordset
    Set rs = New Recordset
    query = "SELECT cid, head as head, amount, fType, whichMonth FROM tblFeeStucture WHERE tid IN (SELECT max(tid) from tblFeeStucture Group By cid) AND   class = '" & Me.txtString(2).Text & "' AND pid IN ('0','" & Me.txtString(0).Text & "') "
    query = query + " UNION "
    
    query = query + Util.GetTransportQry(Me.txtString(0).Text)
    
    
    query = query + " UNION "
    
    If GM.isSql Then
        query = query + "SELECT cid, headName as head, amount, 'One Time', DATENAME(month, cDate)  FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  AND pid ='" & Me.txtString(0).Text & "'"
    Else
        query = query + "SELECT cid, headName as head, amount, 'One Time', format(cDate,'mmm')  FROM tblFine WHERE tid IN (SELECT max(tid) from tblFine Group By cid)  AND pid ='" & Me.txtString(0).Text & "'"
    End If
    
    
    
    
    rs.Open query, site2.conn, adOpenDynamic, adLockOptimistic
    
    'MsgBox query
    
    
    Dim cid As String
    Dim head As String
    Dim WhichMonth As String
    Dim amount As Double
    Dim total As Double
    total = 0
    
    
    
    Dim count As Integer
    count = 0
    If Not rs.EOF Then
        Dim mnth, fType As String
        mnth = Format(dtt, "mmm")
        
        rs.MoveFirst
        While rs.AbsolutePosition <> adPosEOF
            count = count + 1
            cid = Util.CheckNull(rs.Fields("cid").value)
            head = Util.CheckNull(rs.Fields("Head").value)
            fType = Util.CheckNull(rs.Fields("fType").value)
            amount = Util.CheckNullDouble(rs.Fields("amount").value)
            WhichMonth = Util.CheckNull(rs.Fields("WhichMonth").value)
            Dim willPrint As Boolean
            willPrint = True
            'If (fType = "One Time" Or fType = "Annual") And Util.isWhichMonthSeleted(Me.GetCheckedMonths, WhichMonth) And Not Util.isDiscountHead(site2, head) Then
            If (fType = "One Time" Or fType = "Annual") And Util.isWhichMonthSeleted(Me.GetCheckedMonths, WhichMonth) Then
                willPrint = False
                amount = 0
            End If
            '6666
            'If head = GM.discountHead Then
            Dim show_discount As String
            show_discount = ""
            If (fType = "Monthly") And Util.isDiscountHead(site2, head) Then
                Dim tutionAmount As Double
                Dim TtltutionAmount As Double
                tutionAmount = amount
                TtltutionAmount = 0
                Dim i As Integer
                For i = 0 To countMonths - 1
                    Dim monthName As String
                    monthName = Util.GetToken(GetCheckedMonths, ",", i)
                    Dim YY As String
                    YY = Util.CalculateYearMonthWise(dtt, monthName)
                    
                    'MsgBox YY & " head: " & head & " date: " & CStr(dtt) & " month: " & monthName
                    
                    TtltutionAmount = TtltutionAmount + tutionAmount - (tutionAmount * (Util.GetMonthWiseDiscount(site2, pid, monthName, YY, head) / 100))
                    show_discount = Util.GetMonthWiseDiscount(site2, pid, monthName, YY, head)
                    If Len(show_discount) > 0 And show_discount <> "0" Then
                        show_discount = " " & show_discount & "%"
                    End If
                    
                Next
                amount = TtltutionAmount
            End If
            '6666
            If (fType = "Annual") And Util.isDiscountHead(site2, head) And Util.isWhichMonthSeleted1(GetCheckedMonths, WhichMonth, countMonths) Then
                YY = Util.CalculateYearMonthWise(dtt, WhichMonth)
                
                Dim tutionAmount2 As Double
                Dim TtltutionAmount2 As Double
                tutionAmount2 = amount
                TtltutionAmount2 = 0
                tutionAmount2 = amount
                TtltutionAmount2 = TtltutionAmount2 + tutionAmount2 - (tutionAmount2 * (Util.GetMonthWiseDiscount(site2, pid, WhichMonth, YY, head) / 100))
                amount = TtltutionAmount2
            End If
            If (fType = "Monthly") And Not Util.isDiscountHead(site2, head) Then
                amount = amount * countMonths
            End If
            
            
            Dim RcdfeeAmountByMonth As Double
            RcdfeeAmountByMonth = 0
            
            Dim k As Integer
            
            For k = 0 To countMonths
                Dim monthName2 As String
                monthName2 = Util.GetToken(GetCheckedMonths, ",", k)
                'RcdfeeAmountByMonth = RcdfeeAmountByMonth + Util.GetFeeRcdMonthHeadWise(site2, pid, monthName2, head, "")
                RcdfeeAmountByMonth = RcdfeeAmountByMonth + Util.GetFeeRcdMonthHeadWise(site2, pid, monthName2, cid, "")
            Next
            
            Dim amountAfterFeeRcdByMonth As Double
            
            
            
            amountAfterFeeRcdByMonth = amount - RcdfeeAmountByMonth
            'If amount < 0 Then
             '   amount = 0
            'End If
            
            Dim valu As String
            valu = Util.FormatDouble(amountAfterFeeRcdByMonth)
            ' negative fees
            'If amount > -1 Then
            '55555
            
           
            
             Call AddLabel(cid, head, fType, WhichMonth, count)
             Call AddLabel2(cid, Util.FormatDouble(amount) + show_discount, count)
             Call AddTextBox(cid, valu, count)
            'End If
            total = total + amountAfterFeeRcdByMonth
            Dim total_amount As Double
            total_amount = total_amount + amount
            rs.MoveNext
        Wend
    End If
    Label18.Caption = "Total Fee: " & Util.FormatDouble(total_amount) & " Receipt Total :" & Util.FormatDouble(total)
End Sub
Sub AddLabel(cid As String, cap As String, fType As String, WhichMonth As String, count As Integer)
    Dim i As Integer
    Dim Name As String
    Name = "lbb" & count
    Set ctlLabel = Controls.Add("VB.Label", Name, Me.Picture4)
    If count > 1 Then
        labelTop = labelTop + 400
    Else
        labelTop = 200
    End If
    ctlLabel.Move 100, labelTop, 2000, 300
    ctlLabel.Visible = True
    ctlLabel.BackStyle = 0
    ctlLabel.FontSize = 7
    ctlLabel.DataField = cid + "|" + fType + "|" + WhichMonth
    ctlLabel.Caption = cap
    
 End Sub
Sub AddLabel2(cid As String, cap As String, count As Integer)
    Dim i As Integer
    Dim Name As String
    Name = "lbb9" & count
    Set ctlLabel = Controls.Add("VB.Label", Name, Me.Picture4)
    If count > 1 Then
        label2Top = label2Top + 400
    Else
        label2Top = 200
    End If
    ctlLabel.Move 2100, labelTop, 1000, 300
    ctlLabel.Visible = True
    ctlLabel.BackStyle = 0
    ctlLabel.FontSize = 7
    ctlLabel.Caption = cap
 End Sub
Sub AddTextBox(cid As String, valu As String, count As Integer)
    Dim i As Integer
    Dim Name As String
    Name = "txx" & count
    Set ctlText = Controls.Add("VB.TextBox", Name, Picture4)
    If count > 1 Then
        txtTop = txtTop + 400
    Else
        txtTop = 200
    End If
    ctlText.Move 3100, txtTop, 1000, 300
    ctlText.Visible = True
    ctlText.Text = valu
    ctlText.BorderStyle = 1
    ctlText.Appearance = 0
 End Sub
Sub Clear()
    Dim control
    For Each control In Me.Controls
    If Left(control.Name, 3) = "lbb" Or Left(control.Name, 3) = "txx" Then
      Me.Controls.Remove control.Name
      Set control = Nothing
    End If
    Next control
End Sub
Sub AddFees()
    Dim summ As Double
    summ = 0
    Dim control
    For Each control In Me.Controls
    If Left(control.Name, 3) = "txx" Then
        If IsNumeric(control.Text) Then
            summ = summ + CDbl(control.Text)
        End If
    End If
    Next control
    txtString(3).Text = summ
End Sub
Private Sub ctlText_Change()
    Call AddFees
End Sub
Private Sub VScroll1_Change()
    Dim moveUp As Boolean
    moveUp = prvValue < Me.VScroll1.value
    If moveUp Then
       Me.Picture4.Height = Me.Picture4.Height + 100
       Me.Picture4.Top = Me.Picture4.Top - 100
    Else
       If Me.Picture4.Top < 0 Then
       Me.Picture4.Height = Me.Picture4.Height - 100
       Me.Picture4.Top = Me.Picture4.Top + 100
    End If
End If
prvValue = Me.VScroll1.value
End Sub

