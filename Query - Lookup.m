let
    Source = Odbc.DataSource("dsn=ElectricalUncertaintyDB", [HierarchicalNavigation=true]),
    uncertainty_Database = Source{[Name="uncertainty",Kind="Database"]}[Data],
    Lookup_View = uncertainty_Database{[Name="Lookup",Kind="View"]}[Data]
in
    Lookup_View