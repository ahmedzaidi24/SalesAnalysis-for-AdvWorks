/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [CustomerKey] AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] As FirstName
      --,[MiddleName]
      ,[LastName] As LastName,
	  FirstName + ' ' + LastName As FullName
      --,[NameStyle]
      ,[BirthDate] AS BirthDate
      ,Case [MaritalStatus] When 'M' Then 'Married' When 'S' Then 'Single' End AS MartialStatus -- Case added for Removing Abbrevations 
      --,[Suffix]
      ,Case [Gender] When 'M' Then 'Male' When 'F' Then 'Female' End AS Gender -- Case added for Removing Abbrevations
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase] AS FirstPurchase,
      --,[CommuteDistance]
	  G.City AS CustomerCity -- City of Customer brought from Geography Table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS C
  LEFT JOIN dbo.DimGeography as G ON G.GeographyKey = C.GeographyKey -- LeftJoined Customer Table with Geography Table
  Order by
  CustomerKey ASC -- Ordered in ascending by CustomerKey




