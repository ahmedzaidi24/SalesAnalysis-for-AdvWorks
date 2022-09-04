/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  [ProductKey], 
  [ProductAlternateKey] AS productItemCode 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  ,[EnglishProductName] AS ProductName 
  ,PSC.EnglishProductSubcategoryName AS SubcategoryName 
  ,PC.EnglishProductCategoryName AS CategoryName 
  --,[SpanishProductName]
  --,[FrenchProductName]
  ,[StandardCost] AS Cost 
  --,[FinishedGoodsFlag]
  ,[Color] 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  ,[ListPrice]
  ,[Size] 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  ,[ProductLine] 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  ,[ModelName] 
  --,[LargePhoto]
  ,[EnglishDescription] AS ProductDescription 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  ,isnull([Status], 'Outdated') 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS P 
  Left Join Dbo.DimProductSubcategory AS PSC on PSC.ProductCategoryKey = P.ProductSubcategoryKey 
  LEFT JOIN DBO.DimProductCategory AS PC on PSC.ProductCategoryKey = PC.ProductCategoryKey 
Order by 
  P.ProductKey ASC
