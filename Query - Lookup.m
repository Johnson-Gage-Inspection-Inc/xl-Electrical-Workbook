let
    Source = Odbc.DataSource("dsn=ElectricalUncertaintyDB", [HierarchicalNavigation=true]),
    uncertainty_Database = Source{[Name="uncertainty",Kind="Database"]}[Data],
    public_Schema = uncertainty_Database{[Name="public",Kind="Schema"]}[Data],
    Lookup_View = public_Schema{[Name="Lookup",Kind="View"]}[Data]
in
    Lookup_View