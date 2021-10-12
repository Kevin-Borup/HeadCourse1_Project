CREATE TABLE AddonCost (
Item varchar(30) PRIMARY KEY,
Price smallint
)

CREATE TABLE OrderingCost (
Item varchar(20) PRIMARY KEY,
PriceHigh smallint,
PriceLow smallint,
)
