create database qlks1;
use qlks1;
CREATE TABLE Account (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('ADMIN', 'CUSTOMER') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tạo bảng Customer: thông tin khách hàng, có tài khoản
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    gender ENUM('MALE', 'FEMALE', 'OTHER'),
    date_of_birth DATE,
    account_id INT NOT NULL UNIQUE,
    FOREIGN KEY (account_id) REFERENCES Account(account_id) ON DELETE CASCADE
);

-- Tạo bảng Employee: thông tin nhân viên, không có tài khoản
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    position VARCHAR(50),
    hire_date DATE
);
ALTER TABLE Employee
ADD COLUMN salary DECIMAL(15,2) NOT NULL DEFAULT 0.00;

SET FOREIGN_KEY_CHECKS = 0;

-- Tài khoản cho quản lý
INSERT INTO Account (username, password, role)
VALUES 
('nguyenvana', 'pass1', 'ADMIN'),
('tranthib', 'pass2', 'ADMIN'),
('levanc', 'pass3', 'ADMIN'),
('phamthid', 'pass4', 'ADMIN');

-- Quản lý 
INSERT INTO Employee (employee_id, full_name, email, phone, position, hire_date, salary)
VALUES 
(1, 'Nguyễn Văn A', 'a.manager@example.com', '0900000001', 'Quản lý', '2022-01-01', 20000000.00),
(2, 'Trần Thị B', 'b.manager@example.com', '0900000002', 'Quản lý', '2022-01-02', 20000000.00),
(3, 'Lê Văn C', 'c.manager@example.com', '0900000003', 'Quản lý', '2022-01-03', 20000000.00),
(4, 'Phạm Thị D', 'd.manager@example.com', '0900000004', 'Quản lý', '2022-01-04', 20000000.00);

-- Lễ tân 
INSERT INTO Employee (full_name, email, phone, position, hire_date, salary)
VALUES
('Nguyễn Thị Mai', 'letan1@example.com', '0910000001', 'Lễ tân', '2023-01-01', 10000000.00),
('Lê Văn Long', 'letan2@example.com', '0910000002', 'Lễ tân', '2023-01-02', 10000000.00),
('Trần Thị Hồng', 'letan3@example.com', '0910000003', 'Lễ tân', '2023-01-03', 10000000.00),
('Vũ Quang Huy', 'letan4@example.com', '0910000004', 'Lễ tân', '2023-01-04', 10000000.00),
('Phạm Minh Châu', 'letan5@example.com', '0910000005', 'Lễ tân', '2023-01-05', 10000000.00),
('Đinh Thị Hoa', 'letan6@example.com', '0910000006', 'Lễ tân', '2023-01-06', 10000000.00),
('Ngô Văn An', 'letan7@example.com', '0910000007', 'Lễ tân', '2023-01-07', 10000000.00),
('Hoàng Thị Nga', 'letan8@example.com', '0910000008', 'Lễ tân', '2023-01-08', 10000000.00),
('Lý Văn Hùng', 'letan9@example.com', '0910000009', 'Lễ tân', '2023-01-09', 10000000.00),
('Tô Thị Lan', 'letan10@example.com', '0910000010', 'Lễ tân', '2023-01-10', 10000000.00);

-- Phục vụ 
INSERT INTO Employee (full_name, email, phone, position, hire_date, salary)
VALUES
('Nguyễn Văn Phúc', 'phucvu1@example.com', '0920000001', 'Phục vụ', '2023-02-01', 9000000.00),
('Trần Văn Minh', 'phucvu2@example.com', '0920000002', 'Phục vụ', '2023-02-02', 9000000.00),
('Phan Thị Lệ', 'phucvu3@example.com', '0920000003', 'Phục vụ', '2023-02-03', 9000000.00),
('Lê Quang Vinh', 'phucvu4@example.com', '0920000004', 'Phục vụ', '2023-02-04', 9000000.00),
('Bùi Thị Trang', 'phucvu5@example.com', '0920000005', 'Phục vụ', '2023-02-05', 9000000.00),
('Đỗ Văn Tâm', 'phucvu6@example.com', '0920000006', 'Phục vụ', '2023-02-06', 9000000.00),
('Vũ Thị Nhi', 'phucvu7@example.com', '0920000007', 'Phục vụ', '2023-02-07', 9000000.00),
('Nguyễn Văn Dũng', 'phucvu8@example.com', '0920000008', 'Phục vụ', '2023-02-08', 9000000.00),
('Lương Thị Hằng', 'phucvu9@example.com', '0920000009', 'Phục vụ', '2023-02-09', 9000000.00),
('Hồ Thị Mai', 'phucvu10@example.com', '0920000010', 'Phục vụ', '2023-02-10', 9000000.00);

-- Bếp 
INSERT INTO Employee (full_name, email, phone, position, hire_date, salary)
VALUES
('Nguyễn Văn Bếp', 'bep1@example.com', '0930000001', 'Bếp', '2023-03-01', 11000000.00),
('Trần Thị Mùi', 'bep2@example.com', '0930000002', 'Bếp', '2023-03-02', 11000000.00),
('Hoàng Văn Bảo', 'bep3@example.com', '0930000003', 'Bếp', '2023-03-03', 11000000.00);

-- Bảo vệ 
INSERT INTO Employee (full_name, email, phone, position, hire_date, salary)
VALUES
('Phạm Văn Kiên', 'baove1@example.com', '0940000001', 'Bảo vệ', '2023-04-01', 8000000.00),
('Nguyễn Minh Hùng', 'baove2@example.com', '0940000002', 'Bảo vệ', '2023-04-02', 8000000.00),
('Đặng Quốc Trí', 'baove3@example.com', '0940000003', 'Bảo vệ', '2023-04-03', 8000000.00);

SET FOREIGN_KEY_CHECKS = 1;










