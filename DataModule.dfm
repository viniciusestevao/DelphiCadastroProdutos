object DataModule1: TDataModule1
  Height = 260
  Width = 333
  object FDManager1: TFDManager
    WaitCursor = gcrHourGlass
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 208
    Top = 80
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'SERVER=tcp:viniciusestevao.database.windows.net,1433'
      'User_Name=vinicius'
      'Password=@Develop10'
      'OSAuthent=No'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=Notebook2'
      'DATABASE=BDAZURE1'
      'MARS=yes'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 72
    Top = 72
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    ODBCDriver = 'SQL Server'
    Left = 120
    Top = 152
  end
end
