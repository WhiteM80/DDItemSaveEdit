object Form1: TForm1
  Left = 254
  Top = 120
  BorderStyle = bsSingle
  Caption = 'SaveEdit Divine Divinity'
  ClientHeight = 451
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 560
    Height = 16
    Caption = 
      #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1084#1077#1090#1072' ----------------------------------------------' +
      '-----------------------------------'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 208
    Top = 424
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 136
    Top = 24
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 24
    Width = 75
    Height = 25
    Caption = #1076#1072#1083#1077#1077
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 296
    Top = 424
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button4Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 56
    Width = 241
    Height = 121
    Caption = #1054#1089#1085#1086#1074#1085#1099#1077
    TabOrder = 5
    object LabeledEdit1: TLabeledEdit
      Left = 72
      Top = 16
      Width = 65
      Height = 21
      EditLabel.Width = 57
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1088#1086#1095#1085#1086#1089#1090#1100' '
      LabelPosition = lpLeft
      TabOrder = 0
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit2: TLabeledEdit
      Left = 160
      Top = 16
      Width = 65
      Height = 21
      EditLabel.Width = 15
      EditLabel.Height = 13
      EditLabel.Caption = #1080#1079' '
      LabelPosition = lpLeft
      TabOrder = 1
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit3: TLabeledEdit
      Left = 72
      Top = 40
      Width = 65
      Height = 21
      EditLabel.Width = 53
      EditLabel.Height = 13
      EditLabel.Caption = #1052#1072#1082#1089'. '#1095#1072#1088' '
      LabelPosition = lpLeft
      TabOrder = 2
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit4: TLabeledEdit
      Left = 72
      Top = 64
      Width = 65
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = #1041#1088#1086#1085#1103' '
      LabelPosition = lpLeft
      TabOrder = 3
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit5: TLabeledEdit
      Left = 160
      Top = 88
      Width = 65
      Height = 21
      EditLabel.Width = 15
      EditLabel.Height = 13
      EditLabel.Caption = #1076#1086' '
      LabelPosition = lpLeft
      TabOrder = 4
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit6: TLabeledEdit
      Left = 72
      Top = 88
      Width = 65
      Height = 21
      EditLabel.Width = 43
      EditLabel.Height = 13
      EditLabel.Caption = #1059#1088#1086#1085' '#1086#1090' '
      LabelPosition = lpLeft
      TabOrder = 5
      OnKeyPress = LabeledEdit1KeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 256
    Top = 56
    Width = 169
    Height = 273
    Caption = #1041#1086#1085#1091#1089#1099
    TabOrder = 6
    object LabeledEdit7: TLabeledEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1089#1080#1083#1077
      LabelPosition = lpRight
      TabOrder = 0
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit8: TLabeledEdit
      Left = 8
      Top = 48
      Width = 65
      Height = 21
      EditLabel.Width = 59
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1083#1086#1074#1082#1086#1089#1090#1080
      LabelPosition = lpRight
      TabOrder = 1
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit9: TLabeledEdit
      Left = 8
      Top = 96
      Width = 65
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1089#1083#1086#1078#1077#1085#1080#1102
      LabelPosition = lpRight
      TabOrder = 2
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit10: TLabeledEdit
      Left = 8
      Top = 72
      Width = 65
      Height = 21
      EditLabel.Width = 69
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1080#1085#1090#1077#1083#1083#1077#1082#1090#1091
      LabelPosition = lpRight
      TabOrder = 3
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit11: TLabeledEdit
      Left = 8
      Top = 192
      Width = 65
      Height = 21
      EditLabel.Width = 38
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1084#1072#1085#1077
      LabelPosition = lpRight
      TabOrder = 4
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit12: TLabeledEdit
      Left = 8
      Top = 168
      Width = 65
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1078#1080#1074#1091#1095#1077#1089#1090#1080
      LabelPosition = lpRight
      TabOrder = 5
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit13: TLabeledEdit
      Left = 8
      Top = 144
      Width = 65
      Height = 21
      EditLabel.Width = 50
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1079#1072#1097#1080#1090#1077
      LabelPosition = lpRight
      TabOrder = 6
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit14: TLabeledEdit
      Left = 8
      Top = 120
      Width = 65
      Height = 21
      EditLabel.Width = 68
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1085#1072#1087#1072#1076#1077#1085#1080#1102
      LabelPosition = lpRight
      TabOrder = 7
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit15: TLabeledEdit
      Left = 8
      Top = 240
      Width = 65
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1089#1083#1091#1093#1091
      LabelPosition = lpRight
      TabOrder = 8
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit16: TLabeledEdit
      Left = 8
      Top = 216
      Width = 65
      Height = 21
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1086#1073#1079#1086#1088#1091
      LabelPosition = lpRight
      TabOrder = 9
      OnKeyPress = LabeledEdit1KeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 184
    Width = 177
    Height = 129
    Caption = #1059#1089#1090#1086#1081#1095#1080#1074#1086#1089#1090#1080
    TabOrder = 7
    object LabeledEdit17: TLabeledEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1086#1075#1085#1102
      LabelPosition = lpRight
      TabOrder = 0
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit18: TLabeledEdit
      Left = 8
      Top = 48
      Width = 65
      Height = 21
      EditLabel.Width = 50
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1084#1086#1083#1085#1080#1080
      LabelPosition = lpRight
      TabOrder = 1
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit19: TLabeledEdit
      Left = 8
      Top = 96
      Width = 65
      Height = 21
      EditLabel.Width = 89
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1084#1091#1082#1072#1084' '#1089#1086#1074#1077#1089#1090#1080
      LabelPosition = lpRight
      TabOrder = 2
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit20: TLabeledEdit
      Left = 8
      Top = 72
      Width = 65
      Height = 21
      EditLabel.Width = 38
      EditLabel.Height = 13
      EditLabel.Caption = ' '#1082' '#1103#1076#1072#1084
      LabelPosition = lpRight
      TabOrder = 3
      OnKeyPress = LabeledEdit1KeyPress
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 320
    Width = 177
    Height = 129
    Caption = #1058#1088#1077#1073#1086#1074#1072#1085#1080#1103
    TabOrder = 8
    object LabeledEdit21: TLabeledEdit
      Left = 88
      Top = 24
      Width = 65
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = #1051#1086#1074#1082#1086#1089#1090#1100': '
      LabelPosition = lpLeft
      TabOrder = 0
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit22: TLabeledEdit
      Left = 88
      Top = 48
      Width = 65
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1080#1083#1072': '
      LabelPosition = lpLeft
      TabOrder = 1
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit23: TLabeledEdit
      Left = 88
      Top = 96
      Width = 65
      Height = 21
      EditLabel.Width = 57
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1083#1086#1078#1077#1085#1080#1077': '
      LabelPosition = lpLeft
      TabOrder = 2
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit24: TLabeledEdit
      Left = 88
      Top = 72
      Width = 65
      Height = 21
      EditLabel.Width = 60
      EditLabel.Height = 13
      EditLabel.Caption = #1048#1085#1090#1077#1083#1083#1077#1082#1090': '
      LabelPosition = lpLeft
      TabOrder = 3
      OnKeyPress = LabeledEdit1KeyPress
    end
  end
  object Button5: TButton
    Left = 384
    Top = 424
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 376
    Top = 24
    Width = 81
    Height = 25
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 10
    OnClick = Button6Click
  end
  object OpenDialog1: TOpenDialog
    FileName = 'items.000'
    Filter = #1074#1077#1097#1080'|items.000'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 296
    Top = 24
  end
end
