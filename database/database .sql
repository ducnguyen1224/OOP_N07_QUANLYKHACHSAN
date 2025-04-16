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
    email VARCHAR(100) UNIQUE,4
    phone VARCHAR(20),
    gender ENUM('MALE', 'FEMALE', 'OTHER'),
    date_of_birth DATE,
    account_id INT UNIQUE, 
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

INSERT INTO Account (username, password, role) VALUES
('nguyen_van_hoang', 'password123', 'CUSTOMER'),
('le_thi_mai', 'password123', 'CUSTOMER'),
('tran_minh_tu', 'password123', 'CUSTOMER'),
('pham_thi_bich', 'password123', 'CUSTOMER'),
('hoang_quang_duc', 'password123', 'CUSTOMER'),
('ngo_tuan_kiet', 'password123', 'CUSTOMER'),
('vu_ngoc_hieu', 'password123', 'CUSTOMER'),
('do_quoc_hieu', 'password123', 'CUSTOMER'),
('pham_thanh_tu', 'password123', 'CUSTOMER'),
('nguyen_bich_hoa', 'password123', 'CUSTOMER');

INSERT INTO Customer (full_name, email, phone, gender, date_of_birth, account_id) VALUES
('Nguyễn Văn Hoàng', 'nguyen.vanhoang@example.com', '0901234567', 'MALE', '1990-03-10', 6),
('Lê Thị Mai', 'le.thimai@example.com', '0902345678', 'FEMALE', '1992-06-20', 7),
('Trần Minh Tú', 'tran.minhtu@example.com', '0903456789', 'MALE', '1988-05-15', 8),
('Phạm Thị Bích', 'pham.thibich@example.com', '0904567890', 'FEMALE', '1993-08-25', 9),
('Hoàng Quang Đức', 'hoang.quangduc@example.com', '0905678901', 'MALE', '1989-12-30', 10),
('Ngô Tuấn Kiệt', 'ngo.tuankiet@example.com', '0906789012', 'MALE', '1991-04-18', 11),
('Vũ Ngọc Hiếu', 'vu.ngochieu@example.com', '0907890123', 'FEMALE', '1994-07-10', 12),
('Đỗ Quốc Hiếu', 'do.quochieu@example.com', '0908901234', 'MALE', '1992-11-02', 13),
('Phạm Thanh Tú', 'pham.thanhtu@example.com', '0909012345', 'MALE', '1987-09-14', 14),
('Nguyễn Bích Hoa', 'nguyen.bichhoa@example.com', '0900123456', 'FEMALE', '1995-01-05', 15);


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

-- Room --
CREATE TABLE Room (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10) NOT NULL UNIQUE,
    room_category ENUM('Normal', 'VIP', 'Master') NOT NULL,  
    beds INT DEFAULT 1,
    max_guests INT DEFAULT 2,
    location VARCHAR(100),
    description TEXT,
    custom_price DECIMAL(15,2)
);
INSERT INTO Room (room_number, room_category, beds, max_guests, location, description, custom_price) VALUES
('101', 'Normal', 1, 2, 'Tầng 1, Hướng Đông', 'Phòng tiêu chuẩn cho 2 người', 500000),
('102', 'Normal', 2, 3, 'Tầng 1, Hướng Tây', 'Phòng tiêu chuẩn cho 3 người', 600000),
('103', 'Normal', 1, 2, 'Tầng 1, Hướng Nam', 'Phòng tiêu chuẩn cho 2 người', 550000),
('104', 'Normal', 2, 3, 'Tầng 1, Hướng Bắc', 'Phòng tiêu chuẩn cho 3 người', 600000),
('105', 'VIP', 2, 3, 'Tầng 2, Hướng Đông', 'Phòng VIP cao cấp, có cửa sổ lớn', 1000000),
('106', 'VIP', 2, 4, 'Tầng 2, Hướng Tây', 'Phòng VIP với không gian rộng rãi', 1200000),
('107', 'VIP', 2, 4, 'Tầng 2, Hướng Nam', 'Phòng VIP với nội thất sang trọng', 1100000),
('108', 'VIP', 3, 5, 'Tầng 2, Hướng Bắc', 'Phòng VIP dành cho gia đình', 1300000),
('109', 'Master', 2, 3, 'Tầng 3, Hướng Đông', 'Phòng Master với không gian sang trọng', 1500000),
('110', 'Master', 2, 3, 'Tầng 3, Hướng Tây', 'Phòng Master với tiện nghi đầy đủ', 1600000),
('111', 'Master', 3, 5, 'Tầng 3, Hướng Nam', 'Phòng Master dành cho gia đình', 1700000),
('112', 'Master', 3, 6, 'Tầng 3, Hướng Bắc', 'Phòng Master với bể bơi riêng', 1800000),
('113', 'Normal', 1, 2, 'Tầng 1, Hướng Đông', 'Phòng tiêu chuẩn với view đẹp', 550000),
('114', 'Normal', 2, 3, 'Tầng 1, Hướng Tây', 'Phòng tiêu chuẩn cho 3 người', 600000),
('115', 'Normal', 1, 2, 'Tầng 2, Hướng Nam', 'Phòng tiêu chuẩn cho 2 người', 520000),
('116', 'Normal', 2, 3, 'Tầng 2, Hướng Bắc', 'Phòng tiêu chuẩn cho 3 người', 590000),
('117', 'VIP', 2, 4, 'Tầng 4, Hướng Đông', 'Phòng VIP với view đẹp', 1100000),
('118', 'VIP', 2, 4, 'Tầng 4, Hướng Tây', 'Phòng VIP sang trọng với cửa sổ lớn', 1200000),
('119', 'VIP', 2, 4, 'Tầng 4, Hướng Nam', 'Phòng VIP với phòng tắm lớn', 1150000),
('120', 'VIP', 3, 5, 'Tầng 4, Hướng Bắc', 'Phòng VIP dành cho gia đình', 1300000),
('121', 'Master', 3, 5, 'Tầng 5, Hướng Đông', 'Phòng Master với bể bơi riêng', 1700000),
('122', 'Master', 2, 4, 'Tầng 5, Hướng Tây', 'Phòng Master với thiết kế sang trọng', 1600000),
('123', 'Master', 3, 6, 'Tầng 5, Hướng Nam', 'Phòng Master dành cho gia đình lớn', 1800000),
('124', 'Master', 3, 6, 'Tầng 5, Hướng Bắc', 'Phòng Master với đầy đủ tiện nghi', 1900000),
('125', 'Normal', 1, 2, 'Tầng 6, Hướng Đông', 'Phòng tiêu chuẩn đơn giản', 500000),
('126', 'Normal', 2, 3, 'Tầng 6, Hướng Tây', 'Phòng tiêu chuẩn cho 3 người', 580000),
('127', 'Normal', 1, 2, 'Tầng 6, Hướng Nam', 'Phòng tiêu chuẩn với view đẹp', 540000),
('128', 'Normal', 2, 3, 'Tầng 6, Hướng Bắc', 'Phòng tiêu chuẩn cho 3 người', 600000),
('129', 'VIP', 2, 4, 'Tầng 7, Hướng Đông', 'Phòng VIP với view biển', 1200000),
('130', 'VIP', 2, 4, 'Tầng 7, Hướng Tây', 'Phòng VIP với phòng tắm lớn', 1250000),
('131', 'VIP', 2, 4, 'Tầng 7, Hướng Nam', 'Phòng VIP sang trọng với nội thất đẹp', 1300000),
('132', 'VIP', 3, 5, 'Tầng 7, Hướng Bắc', 'Phòng VIP dành cho gia đình', 1350000),
('133', 'Master', 3, 5, 'Tầng 8, Hướng Đông', 'Phòng Master với không gian rộng rãi', 1600000),
('134', 'Master', 3, 6, 'Tầng 8, Hướng Tây', 'Phòng Master với đầy đủ tiện nghi', 1700000),
('135', 'Master', 2, 3, 'Tầng 8, Hướng Nam', 'Phòng Master với thiết kế đặc biệt', 1800000),
('136', 'Master', 3, 6, 'Tầng 8, Hướng Bắc', 'Phòng Master dành cho gia đình lớn', 1900000);

-- booking --
CREATE TABLE Booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,  
    customer_id INT NOT NULL,                 
    room_id INT NOT NULL,                    
    start_date DATE NOT NULL,                
    end_date DATE NOT NULL,                     
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    status ENUM('Booked', 'Not Booked') DEFAULT 'Not Booked', 
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,  
    FOREIGN KEY (room_id) REFERENCES Room(room_id) ON DELETE CASCADE   
);

INSERT INTO Booking (customer_id, room_id, start_date, end_date, status) VALUES
(5, 26, '2025-03-05', '2025-03-08', 'Not Booked'),
(6, 27, '2025-03-09', '2025-03-12', 'Not Booked'),
(7, 28, '2025-03-13', '2025-03-16', 'Not Booked'),
(8, 29, '2025-03-17', '2025-03-20', 'Not Booked'),
(9, 30, '2025-03-21', '2025-03-24', 'Not Booked'),
(10, 31, '2025-03-25', '2025-03-28', 'Not Booked'),
(1, 32, '2025-03-29', '2025-04-01', 'Not Booked'),
(2, 33, '2025-04-02', '2025-04-05', 'Not Booked'),
(3, 34, '2025-04-06', '2025-04-09', 'Not Booked'),
(4, 35, '2025-04-10', '2025-04-12', 'Not Booked'),
(5, 36, '2025-04-13', '2025-04-14', 'Not Booked'),
(6, 25, '2025-04-15', '2025-04-17', 'Booked'),
(7, 24, '2025-04-18', '2025-04-20', 'Booked'),
(8, 23, '2025-04-21', '2025-04-23', 'Booked'),
(9, 22, '2025-04-24', '2025-04-26', 'Booked'),
(10, 21, '2025-04-27', '2025-04-29', 'Booked'),
(1, 20, '2025-04-30', '2025-05-01', 'Booked'),
(2, 19, '2025-01-01', '2025-01-03', 'Not Booked'),
(3, 18, '2025-01-04', '2025-01-07', 'Not Booked'),
(4, 17, '2025-01-08', '2025-01-11', 'Not Booked'),
(5, 16, '2025-01-12', '2025-01-15', 'Not Booked'),
(6, 15, '2025-01-16', '2025-01-19', 'Not Booked'),
(7, 14, '2025-01-20', '2025-01-23', 'Not Booked'),
(8, 13, '2025-01-24', '2025-01-27', 'Not Booked'),
(9, 12, '2025-01-28', '2025-01-31', 'Not Booked'),
(10, 11, '2025-02-01', '2025-02-04', 'Not Booked'),
(1, 10, '2025-02-05', '2025-02-08', 'Not Booked'),
(2, 9,  '2025-02-09', '2025-02-12', 'Not Booked'),
(3, 8,  '2025-02-13', '2025-02-16', 'Not Booked'),
(4, 7,  '2025-02-17', '2025-02-20', 'Not Booked');














