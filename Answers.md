Que-1=>
The relationship between the "Product" and "Product_Category" entities in the diagram is one to many
one product can have many categoires,
relationship is represented by foreign key category_id in the Product table, foreign key is a column in a table that references the primary key of another table. In this case, the category_id column in the Product table references the "id" column in the roduct_Category table. 
This creates a link between the two tables, allowing you to associate products with categories.

Que-2=>
Foreign Key Constraint-
 database can be set up with  foreign key constraint on the category_id column in the Product table, This constraint would reference the primary key of the Product_Category table. The database would then enforce data integrity by preventing products from being added with an invalid category_id
