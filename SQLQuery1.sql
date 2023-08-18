
/*Filtering out the necessary data (Only show records relating to classic jerseys)*/
SELECT *
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%';

/*Finding all unique Classic Jersey sizes*/
SELECT DISTINCT Product
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%'
ORDER BY Product ASC;


/* Select total jerseys bought. (Female)*/
SELECT Product,COUNT(*) AS ProductCount
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%' AND Customer_Gender = 'F'
GROUP BY Product
ORDER BY Product ASC;

/* Select total jerseys bought. (Male)*/
SELECT Product,COUNT(*) AS ProductCount
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%' AND Customer_Gender = 'M'
GROUP BY Product
ORDER BY Product ASC;

/*Select distinct Age_group*/
SELECT DISTINCT Age_Group
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%'
ORDER BY Age_Group ASC;

/* Select total jerseys bought. (Youth)*/
SELECT Product,COUNT(*) AS ProductCount
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%' AND Age_Group LIKE 'Youth%'
GROUP BY Product
ORDER BY Product ASC;

/* Select total jerseys bought. (Young Adults)*/
SELECT Product,COUNT(*) AS ProductCount
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%' AND Age_Group LIKE 'Young Adults%'
GROUP BY Product
ORDER BY Product ASC;

/* Select total jerseys bought. (Adults)*/
SELECT Product,COUNT(*) AS ProductCount
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%' AND Age_Group LIKE 'Adults%'
GROUP BY Product
ORDER BY Product ASC;

/* Select total jerseys bought. (Seniors)*/
SELECT Product,COUNT(*) AS ProductCount
FROM [dbo].[Sales]
WHERE Sub_Category LIKE 'Jerseys' AND Product LIKE '%Classic%' AND Age_Group LIKE 'Seniors%'
GROUP BY Product
ORDER BY Product ASC;