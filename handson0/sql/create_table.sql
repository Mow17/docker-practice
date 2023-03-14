CREATE TABLE departments (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO departments (name) VALUES
  ('Sales'),
  ('Marketing'),
  ('Engineering');

CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO employees (name, email, department_id) VALUES
  ('John Doe', 'john.doe@example.com', 1),
  ('Jane Smith', 'jane.smith@example.com', 2),
  ('Bob Johnson', 'bob.johnson@example.com', 3);
