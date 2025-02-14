let
    Source = Odbc.DataSource("dsn=ElectricalUncertaintyDB", [HierarchicalNavigation=true]),
    uncertainty_Database = Source{[Name="uncertainty",Kind="Database"]}[Data],
    public_Schema = uncertainty_Database{[Name="public",Kind="Schema"]}[Data],
    Items_Table = public_Schema{[Name="Items",Kind="Table"]}[Data],
    #"Removed Other Columns" = Table.SelectColumns(Items_Table,{"Item","Function"})
in
    #"Removed Other Columns"