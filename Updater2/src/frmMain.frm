VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   3825
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   7320
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   255
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   488
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrTimeout 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   480
      Top             =   720
   End
   Begin InetCtlsObjects.Inet inetDownload 
      Left            =   120
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.PictureBox Picture1 
      Height          =   5535
      Left            =   -240
      Picture         =   "frmMain.frx":000C
      ScaleHeight     =   5475
      ScaleWidth      =   8355
      TabIndex        =   1
      Top             =   -240
      Width           =   8415
      Begin VB.Timer tmrUpToDate 
         Interval        =   5000
         Left            =   720
         Top             =   1440
      End
      Begin VB.Timer tmrServerStatus 
         Interval        =   30000
         Left            =   240
         Top             =   1440
      End
      Begin VB.Timer tmrCheck 
         Interval        =   1500
         Left            =   240
         Top             =   960
      End
      Begin VB.PictureBox lblConnect 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   555
         Left            =   5580
         Picture         =   "frmMain.frx":3F111
         ScaleHeight     =   555
         ScaleWidth      =   1515
         TabIndex        =   3
         Top             =   3000
         Visible         =   0   'False
         Width           =   1515
      End
      Begin VB.PictureBox picprogress 
         Appearance      =   0  'Flat
         BackColor       =   &H0041E7D2&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   720
         ScaleHeight     =   195
         ScaleWidth      =   6375
         TabIndex        =   2
         Top             =   3600
         Width           =   6375
         Begin VB.Label lblstatus 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            Caption         =   "---------------------------"
            ForeColor       =   &H80000008&
            Height          =   255
            Left            =   0
            TabIndex        =   4
            Top             =   0
            Width           =   6375
         End
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   375
         Left            =   6960
         TabIndex        =   9
         Top             =   240
         Width           =   780
      End
      Begin VB.Label lblServer 
         BackStyle       =   0  'Transparent
         Caption         =   "View Server List"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   720
         TabIndex        =   8
         Top             =   2880
         Visible         =   0   'False
         Width           =   3135
      End
      Begin VB.Label lblVer 
         BackStyle       =   0  'Transparent
         Caption         =   "lblVer"
         ForeColor       =   &H0000C0C0&
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   3840
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Install Libraries.."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   720
         TabIndex        =   6
         Top             =   3360
         Width           =   3135
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Register DLLs.."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   720
         TabIndex        =   5
         Top             =   3120
         Width           =   3135
      End
   End
   Begin VB.Label lblExit 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   8280
      TabIndex        =   0
      Top             =   0
      Width           =   450
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pastx, pasty, presentx, presenty, bt As Long
Option Explicit


Private Sub Form_Load()
Dim Filename As String

    ' Load a GUI image, if it does not exist.. Exit out of the program.
    'Form_LoadPicture (App.Path & "\data\graphics\gui\updater\update.jpg")
    
    'Load the webpage
    'PicNews.Navigate NewsURL
    
    Me.Show
    
    'picprogress.Width = 0
    ChangeStatus "Press Escape to exit. Checking for update.."
    
    'Everything's loaded.. Check for updates!
    regasm = "C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe"
    GtDLL = App.Path & "\data\" & "GTranslate.dll"
    GtTLB = App.Path & "\data\" & "GTranslate.tlb"

    lblVer.Caption = App.Major & "." & App.Minor & "." & App.Revision

    DownloadFile UpdateURL & "status.txt", App.Path & "\data\status.ini"

    ReadServerFile
    CheckServerFull

End Sub

Private Sub inetDownload_StateChanged(ByVal State As Integer)
    DoEvents
End Sub

Private Sub Label1_Click()
On Error Resume Next
If FileExist(App.Path & "\" & "Starter.exe") Then
    Shell App.Path & "\" & "Starter.exe", vbNormalFocus
    DoEvents
    End
Else
    registerDLL
End If
End Sub

Private Sub Label2_Click()
On Error Resume Next

If FileExist(Environ("windir") & "\System32\MSWINSCK.OCX") Or FileExist(Environ("windir") & "\SysWow64\MSWINSCK.OCX") Then
    If FileExist(Environ("windir") & "\System32\Richtx32.ocx") Or FileExist(Environ("windir") & "\SysWow64\Richtx32.ocx") Then
        If MsgBox("It doesn't seem like you need to install the VB6 runtime/libraries. Do you want to anyway?", vbYesNo) = vbYes Then If FileExist(App.Path & "\" & "Librer�as.exe") Then Shell App.Path & "\" & "Librer�as.exe", vbNormalFocus
    End If
End If
End Sub

Private Sub Label3_Click()
On Error Resume Next
DestroyUpdater
End Sub

Private Sub lblConnect_Click()

registerDLL

Sleep 100
DoEvents

If FileExist(Environ("windir") & "\System32\MSWINSCK.OCX") Or FileExist(Environ("windir") & "\SysWow64\MSWINSCK.OCX") Then
    'this is promising!
    If FileExist(Environ("windir") & "\System32\Richtx32.ocx") Or FileExist(Environ("windir") & "\SysWow64\Richtx32.ocx") Then
        'looks like they have the runtimes
        frmMain.Label1.Caption = "Registering.."
        Sleep 100
        
        Sleep 100
        frmMain.Label1.Caption = "Register DLLs.."
    Else
        MsgBox "You need to install the VB6 runtime files."
        Label2.Caption = "Installing VB6 Libraries.."
        Sleep 100
        Label2_Click
        Label2.Caption = "Install Libraries.."
        Sleep 100
    End If

End If
'windir\SysWow64\MSWINSCK.OCX
'\SysWow64\Richtx32.ocx
'or \system32\..

    If UpToDate <> 0 Then
        WriteClientInfo
        If FileExist(App.Path & "\" & ClientName) Then
            If Server(SelectedServer).Port > 0 Then
                Shell App.Path & "\" & ClientName & " -launcher 1 -server trollparty.org -port " & Server(SelectedServer).Port, vbNormalFocus
            Else
                Shell App.Path & "\" & ClientName & " -launcher 1", vbNormalFocus
            End If
        Else
            MsgBox "Could not locate " & ClientName, vbCritical
        End If
        DestroyUpdater
    End If

End Sub

Private Sub lblExit_Click()
    DestroyUpdater
End Sub

Private Sub lblServer_Click()
    ReadServerFile
    CheckServerFull (SelectedServer)
    DoEvents
    frmSelect.Show vbModal
    If UpToDate = 1 Then ChangeStatus "Your client is up to date! Server: " & Server(SelectedServer).Name & " - " & " Players Online: " & Server(SelectedServer).CurrentPlayers
End Sub

Private Sub Picture1_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyEscape Then DestroyUpdater

End Sub

Function moving()
Dim xx As Long, yy As Long

xx = presentx - pastx
yy = presenty - pasty
If bt Then 'set your condition: left btn or right btn or mid btn
Me.Left = Me.Left + xx
Me.Top = Me.Top + yy
End If
End Function

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
pastx = X
pasty = Y
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
presentx = X
presenty = Y
bt = Button
moving
End Sub

Private Sub tmrCheck_Timer()
CheckVersion
tmrCheck.Enabled = False
End Sub

Private Sub tmrServerStatus_Timer()

DownloadFile UpdateURL & "status.txt", App.Path & "\data\status.ini"

DoEvents

ReadServerFile

CheckServerFull (SelectedServer)

If UpToDate = 1 Then ChangeStatus "Your client is up to date! Server: " & Server(SelectedServer).Name & " - " & " Players Online: " & Server(SelectedServer).CurrentPlayers

End Sub

Private Sub tmrTimeout_Timer()
    MsgBox "The connection to the update server could not be made.", vbCritical, "Connection Error"
    DestroyUpdater
End Sub

Private Sub tmrUpToDate_Timer()
If UpToDate = 1 Then lblConnect.Visible = True
End Sub
