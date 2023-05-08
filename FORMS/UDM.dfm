object DM: TDM
  OldCreateOrder = False
  Height = 359
  Width = 314
  object Conexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Documents and Settings\Aldo\Meus documentos\Projetos' +
        ' Delphi\Clinica M'#233'dica\EXE\DADOS\CLINICAMEDICA.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 30
    Top = 15
  end
  object sqlPacientes: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM PACIENTES ORDER BY ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 25
    Top = 95
  end
  object dspPacientes: TDataSetProvider
    DataSet = sqlPacientes
    Left = 25
    Top = 160
  end
  object cdsPacientes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPacientes'
    Left = 25
    Top = 215
    object cdsPacientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPacientesNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cdsPacientesCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 16
    end
    object cdsPacientesDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPacientesCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000-0;1;_'
      Size = 14
    end
  end
  object dtsPacientes: TDataSource
    DataSet = cdsPacientes
    Left = 25
    Top = 280
  end
  object sqlAgenda: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM AGENDAMENTO ORDER BY ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 115
    Top = 100
  end
  object dspAgenda: TDataSetProvider
    DataSet = sqlAgenda
    Left = 115
    Top = 160
  end
  object cdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgenda'
    Left = 115
    Top = 215
    object cdsAgendaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAgendaID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object cdsAgendaDATA: TDateField
      FieldName = 'DATA'
      EditMask = '##/##/####;1;_'
    end
    object cdsAgendaESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      Size = 25
    end
    object cdsAgendaMEDICO: TStringField
      FieldName = 'MEDICO'
      Size = 30
    end
    object cdsAgendaHORA: TTimeField
      FieldName = 'HORA'
      EditMask = '##:##;1;_'
    end
  end
  object dtsAgenda: TDataSource
    DataSet = cdsAgenda
    Left = 115
    Top = 280
  end
end