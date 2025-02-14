let
    Source = Odbc.DataSource("dsn=ElectricalUncertaintyDB", [HierarchicalNavigation=true]),
    uncertainty_Database = Source{[Name="uncertainty",Kind="Database"]}[Data],
    Items_Table = uncertainty_Database{[Name="Items",Kind="Table"]}[Data],
    #"Removed Other Columns" = Table.SelectColumns(Items_Table,{"Item","Function"})
in
    #"Removed Other Columns"