-- To create categories table--
-- CREATE TABLE categories(
--     id INTEGER NOT NULL PRIMARY KEY,
--     name VARCHAR(250),
--     type VARCHAR(250)
-- );
-- Inserting values into categories table--
-- INSERT INTO categories
--     (id, name, type)
-- VALUES(1, 'salary', 'income'),
-- (2, 'rent', 'expense'),
-- (3, 'groceries', 'expense'),
-- (4, 'entertainment', 'expense'),
-- (5, 'bonus', 'income');

-- Retrieves the categories table--
-- SELECT * FROM categories;

-- TO create transactions table--
-- CREATE TABLE transactions(
--     id INTEGER NOT NULL PRIMARY KEY,
--     type VARCHAR(250),
--     category_id INTEGER,
--     amount FLOAT,
--     date DATE,
--     description TEXT,
--     FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE);

-- Inserting values into transactions table--
-- INSERT INTO transactions(
--     id, type, category_id, amount, date, description)
-- VALUES(101, 'expense', 4, 2000.50, '2020-06-10', 'movie'),
-- (102, 'expense', 3, 3000.00, '2021-12-17', 'ration'),
-- (103, 'income', 5, 6096.00, '1994-10-20', 'diwali bonus'),
-- (104, 'income', 1, 50000.00, '2022-10-31', 'monthly salary'),
-- (105, 'expense', 2, 7000.00, '1993-12-05', 'house rent');
-- SELECT * FROM transactions;

-- Adding new transaction into a table--
-- INSERT INTO transactions(
-- --     id, type, category_id, amount, date, description)
-- VALUES(106,'income', 1, 5000.00, '2014-05-22', 'reward');

-- Retrieves all transactions from transactions table--
-- SELECT * FROM transactions;

-- Retrieves a specific transaction id from transactions table--
--SELECT * FROM transactions
--WHERE id=104;

-- Updates a specific id in transactions table--
-- UPDATE transactions
-- SET amount = 10000.00
-- WHERE id=103;

-- Retrieves all transactions from table after upgradation--
-- SELECT * FROM transactions;

-- Deleting a specific id from transactions--
-- DELETE FROM transactions
-- WHERE id=106;
-- SELECT * FROM transactions;

-- Retrieves the summary of transactions--
-- SELECT SUM(CASE WHEN transactions.type=="income" THEN transactions.amount
--         ELSE 0
--         END) AS total_income,
--         SUM(CASE WHEN transactions.type="expense" THEN transactions.amount
--         ELSE 0
--         END) AS total_expense,
--         SUM(CASE WHEN transactions.type=="income" THEN transactions.amount
--             WHEN transactions.type=="expense" THEN 
--             -transactions.amount
--             ELSE 0
--             END) AS balance
--     FROM categories
--     INNER JOIN transactions
--     ON categories.id = transactions.category_id;
