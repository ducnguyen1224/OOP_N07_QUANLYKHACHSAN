create database qlks1;
use qlks1;

--  tạo bảng tài khoản người dùng
CREATE TABLE Account (
    account_id INT PRIMARY KEY AUTO_INCREMENT, -- khóa chính kiểu nguyên, giá trị cột tăng dần lên 1 đơn vị
    username VARCHAR(50) NOT NULL UNIQUE, -- NOT NULL UNIQUE : bắt buộc phải có giá trị và là duy nhất
    password VARCHAR(255) NOT NULL,
    role ENUM('ADMIN', 'CUSTOMER') NOT NULL, -- role : vai trò
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- thời gian tạo tài khoản
);
-- select * from Account;
-- Tạo bảng Customer: thông tin khách hàng, đã có tài khoản
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    gender ENUM('MALE', 'FEMALE', 'OTHER'), -- kiểu dữ liệu ENUM giá trị tăng dần từ 0
    date_of_birth DATE,
    account_id INT UNIQUE, -- khóa ngoại liên kết với bảng Account
    FOREIGN KEY (account_id) REFERENCES Account(account_id) ON DELETE CASCADE
    -- -- Khi xóa một bản ghi ở Account bản ghi tương ứng trong bảng Customer cũng bị xóa theo
);
-- select * from Customer; -- hiển thị thông tin bảng 

-- Tạo bảng Employee: thông tin nhân viên, có / không có tài khoản
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    position VARCHAR(50), -- chức vụ 
    hire_date DATE, -- ngày thuê nhân viên 
    account_id INT UNIQUE,
    FOREIGN KEY (account_id) REFERENCES Account(account_id) ON DELETE CASCADE
    -- khóa ngoại (account_id) liên kết tới cột (account_id) của bảng Account 
);
ALTER TABLE Employee
ADD COLUMN salary DECIMAL(15,2) NOT NULL DEFAULT 0.00;

SET FOREIGN_KEY_CHECKS = 0; -- kiểm tra ràng buộc khóa ngoại 
-- import/export dữ liệu mà ko bị ràng buộc khóa ngoại 

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
('Nguyễn Văn Hoàng', 'nguyen.vanhoang@example.com', '0901234567', 'MALE', '1990-03-10', 5),
('Lê Thị Mai', 'le.thimai@example.com', '0902345678', 'FEMALE', '1992-06-20', 6),
('Trần Minh Tú', 'tran.minhtu@example.com', '0903456789', 'MALE', '1988-05-15', 7),
('Phạm Thị Bích', 'pham.thibich@example.com', '0904567890', 'FEMALE', '1993-08-25', 8),
('Hoàng Quang Đức', 'hoang.quangduc@example.com', '0905678901', 'MALE', '1989-12-30', 9),
('Ngô Tuấn Kiệt', 'ngo.tuankiet@example.com', '0906789012', 'MALE', '1991-04-18', 10),
('Vũ Ngọc Hiếu', 'vu.ngochieu@example.com', '0907890123', 'FEMALE', '1994-07-10', 11),
('Đỗ Quốc Hiếu', 'do.quochieu@example.com', '0908901234', 'MALE', '1992-11-02', 12),
('Phạm Thanh Tú', 'pham.thanhtu@example.com', '0909012345', 'MALE', '1987-09-14', 13),
('Nguyễn Bích Hoa', 'nguyen.bichhoa@example.com', '0900123456', 'FEMALE', '1995-01-05', 14);

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

SET FOREIGN_KEY_CHECKS = 1; -- bật lại chế độ kiểm tra ràng buộc khóa ngoại, đảm bảo tính toàn vẹn dữ liệu giữa các bảng liên kết.

-- Room --
CREATE TABLE Room (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10) NOT NULL UNIQUE,
    room_category ENUM('Normal', 'VIP', 'Master') NOT NULL,  
    beds INT DEFAULT 1, -- số lượng giường, mặc định là 1 nếu không nhập
    max_guests INT DEFAULT 2, -- số khách tối đa
    location VARCHAR(100), -- vị trí phòng
    description TEXT, -- mô tả chi tiết phòng 
    custom_price DECIMAL(15,2) -- giá phòng tùy chỉnh
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
    customer_id INT NOT NULL, -- khóa ngoại liên kết với bảng Customer               
    room_id INT NOT NULL, -- khóa ngoại liên kết với bảng Room
    start_date DATE NOT NULL, -- ngày bắt đầu đặt           
    end_date DATE NOT NULL,   -- ngày kết thúc                  
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- thời điểm tạo đơn
    status ENUM('Booked', 'Not Booked') DEFAULT 'Not Booked', -- trạng thái đặt phòng
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE, 
    -- Nếu xóa khách hàng, các bản ghi đặt phòng liên quan cũng bị xóa.
    FOREIGN KEY (room_id) REFERENCES Room(room_id) ON DELETE CASCADE  
    -- Nếu xóa phòng, các bản ghi đặt phòng liên quan cũng bị xóa.
);

-- Khi thời gian hiện tại đã qua thời gian đặt phòng ( hết giờ ) cập nhập lại trạng thái phòng 
CREATE EVENT IF NOT EXISTS ev_update_booking_status
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
  UPDATE Booking
  SET status = 'Not Booked'
  WHERE end_date < CURDATE() AND status = 'Booked';

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

-- Tạo bảng lưu thông tin dịch vụ 
CREATE TABLE Service (
    service_id INT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(100) NOT NULL,                 
    description TEXT,                            
    unit_price DECIMAL(10,2), -- giá tiền dịch vụ              
    unit VARCHAR(50)  -- đơn vị dịch vụ                           
);

INSERT INTO Service (name, description, unit_price, unit) VALUES
('Giặt ủi', 'Dịch vụ giặt ủi cho quần áo', 20000, '/kg'),
('Đưa đón sân bay', 'Đưa đón khách từ/đến sân bay bằng xe riêng', 500000, '/lượt'),
('Massage toàn thân', 'Massage thư giãn toàn thân trong 60 phút', 300000, '/h'),
('Thuê xe máy', 'Thuê xe máy để di chuyển trong thành phố', 150000, '/ngày'),
('Bữa sáng', 'Bữa sáng buffet tại nhà hàng khách sạn', 100000, '/người/ngày'),
('Dọn phòng nhanh', 'Dịch vụ dọn phòng theo yêu cầu khách', 80000, '/lần'),
('Trang trí sinh nhật', 'Trang trí phòng cho dịp sinh nhật đặc biệt', 500000, '/lần'),
('Set hoa tươi', 'Trang trí hoa tươi trong phòng', 120000, '/lần'),
('Mini bar', 'Sử dụng đồ ăn/đồ uống trong minibar', 70000, '/sản phẩm'),
('Đặt tour du lịch', 'Đặt tour tham quan thành phố và vùng lân cận', 800000, '/tour'),
('Giữ hành lý', 'Giữ hành lý trước/sau giờ check-in/out', 30000, '/lượt'),
('Thuê laptop', 'Cho thuê máy tính xách tay làm việc', 200000, '/ngày'),
('Thuê phòng họp', 'Phòng họp trang bị máy chiếu, wifi', 1000000, '/giờ'),
('In ấn tài liệu', 'In và sao chép tài liệu cho khách', 2000, '/trang'),
('Giặt khô cao cấp', 'Giặt khô các loại áo vest, đầm dạ hội', 120000, '/lần'),
('Chăm sóc trẻ em', 'Trông trẻ trong thời gian lưu trú', 150000, '/giờ'),
('Bữa tối lãng mạn', 'Set bữa tối lãng mạn trong phòng', 700000, '/lần'),
('Đặt hoa tươi', 'Đặt hoa gửi đến phòng theo yêu cầu', 300000, '/lần');

-- Tạo bảng khuyến mãi 
CREATE TABLE Promotion (
    promotion_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    discount_percent DECIMAL(5,2), -- phần trăm giảm giá
    start_date DATE, -- ngày bắt đầu khuyến mãi
    end_date DATE, -- ngày kết thúc 
    service_id INT NULL, -- khóa ngoại tham chiếu tới bảng Service
    room_category VARCHAR(50) NULL, -- loại phòng áp dụng khuyến mãi
    is_active BOOLEAN DEFAULT TRUE, -- trạng thái hoạt động của khuyến mãi ( 0 / 1 )
    FOREIGN KEY (service_id) REFERENCES Service(service_id)
    -- ràng buộc khóa ngoại, nếu một dịch vụ xóa khỏi Service chuyên trình khuyến mãi bị vô hiệu hóa
);

-- Cập nhập trạng thái khuyến mãi
-- Mỗi ngày chạy 1 lần, đúng 00h:00' mỗi ngày thực hiện lệnh bên trong
CREATE EVENT update_promotion_status ON SCHEDULE EVERY 1 DAY DO
  UPDATE Promotion SET is_active = (
    CURRENT_DATE BETWEEN start_date AND end_date
    -- kiểm tra xem ngày hiện tại có nằm trong thời gian khuyến mãi 
  );

INSERT INTO Promotion (name, description, discount_percent, start_date, end_date, room_category, service_id)
VALUES
('Giảm 10% dịch vụ Giặt ủi', 'Giảm 10% dịch vụ giặt ủi cho tất cả các khách hàng', 10.00, '2025-04-01', '2025-04-30', NULL, 1),
('Giảm 15% đưa đón sân bay', 'Giảm 15% dịch vụ đưa đón sân bay cho khách thuê phòng VIP', 15.00, '2025-04-05', '2025-04-20', 'VIP', 2),
('Giảm 20% massage toàn thân', 'Giảm 20% dịch vụ massage toàn thân cho khách thuê phòng Master', 20.00, '2025-04-10', '2025-04-25', 'Master', 3),
('Giảm 10% thuê xe máy', 'Giảm 10% thuê xe máy cho khách thuê phòng Normal', 10.00, '2025-04-01', '2025-04-30', 'Normal', 4),
('Giảm 5% bữa sáng', 'Giảm 5% dịch vụ bữa sáng cho khách thuê phòng VIP', 5.00, '2025-04-01', '2025-04-30', 'VIP', 5),
('Giảm 10% dọn phòng nhanh', 'Giảm 10% dịch vụ dọn phòng nhanh cho khách thuê phòng Master', 10.00, '2025-04-01', '2025-04-20', 'Master', 6),
('Giảm 25% trang trí sinh nhật', 'Giảm 25% dịch vụ trang trí sinh nhật cho phòng Normal', 25.00, '2025-04-05', '2025-04-20', 'Normal', 7),
('Giảm 15% set hoa tươi', 'Giảm 15% dịch vụ set hoa tươi cho phòng VIP', 15.00, '2025-04-01', '2025-04-30', 'VIP', 8),
('Giảm 20% mini bar', 'Giảm 20% dịch vụ mini bar cho khách thuê phòng Master', 20.00, '2025-04-01', '2025-04-30', 'Master', 9),
('Giảm 10% tour du lịch', 'Giảm 10% dịch vụ đặt tour du lịch cho khách thuê phòng Normal', 10.00, '2025-04-10', '2025-04-30', 'Normal', 10),
('Giảm 10% giữ hành lý', 'Giảm 10% dịch vụ giữ hành lý cho khách thuê phòng VIP', 10.00, '2025-04-01', '2025-04-30', 'VIP', 11),
('Giảm 20% thuê laptop', 'Giảm 20% dịch vụ thuê laptop cho khách thuê phòng Master', 20.00, '2025-04-01', '2025-04-30', 'Master', 12),
('Giảm 10% thuê phòng họp', 'Giảm 10% dịch vụ thuê phòng họp cho khách thuê phòng VIP', 10.00, '2025-04-01', '2025-04-30', 'VIP', 13),
('Giảm 15% in ấn tài liệu', 'Giảm 15% dịch vụ in ấn tài liệu cho khách thuê phòng Normal', 15.00, '2025-04-05', '2025-04-20', 'Normal', 14),
('Giảm 20% giặt khô cao cấp', 'Giảm 20% dịch vụ giặt khô cao cấp cho khách thuê phòng Master', 20.00, '2025-04-10', '2025-04-30', 'Master', 15),
('Giảm 10% chăm sóc trẻ em', 'Giảm 10% dịch vụ chăm sóc trẻ em cho khách thuê phòng Normal', 10.00, '2025-04-01', '2025-04-30', 'Normal', 16),
('Giảm 25% bữa tối lãng mạn', 'Giảm 25% dịch vụ bữa tối lãng mạn cho khách thuê phòng VIP', 25.00, '2025-04-01', '2025-04-20', 'VIP', 17),
('Giảm 15% đặt hoa tươi', 'Giảm 15% dịch vụ đặt hoa tươi cho khách thuê phòng Master', 15.00, '2025-04-05', '2025-04-20', 'Master', 18);

INSERT INTO Promotion (name, description, discount_percent, start_date, end_date, room_category, service_id)
VALUES
('Giảm 10% phòng Normal', 'Giảm 10% cho khách thuê phòng Normal từ ngày 1 đến ngày 15 tháng 4', 10.00, '2025-04-01', '2025-04-15', 'Normal', NULL),
('Giảm 15% phòng VIP', 'Giảm 15% cho khách thuê phòng VIP từ ngày 1 đến ngày 15 tháng 4', 15.00, '2025-04-01', '2025-04-15', 'VIP', NULL),
('Giảm 20% phòng Master', 'Giảm 20% cho khách thuê phòng Master từ ngày 1 đến ngày 15 tháng 4', 20.00, '2025-04-01', '2025-04-15', 'Master', NULL);

SELECT c.full_name, c.email, c.phone,r.room_number, b.start_date, b.end_date, r.custom_price, DATEDIFF(b.end_date, b.start_date) + 1 AS number_of_days, r.custom_price * DATEDIFF(b.end_date, b.start_date) AS total_price,b.status
FROM Booking b JOIN Customer c ON c.customer_id = b.customer_id JOIN room r ON r.room_id = b.room_id  WHERE start_date <= CURRENT_TIMESTAMP AND end_date >= CURRENT_TIMESTAMP;
-- chỉ lấy những phòng đang được sử dụng 

-- tạo bảng ServiceDetail để lưu thông tin chi tiết về các dịch vụ mà khách hàng sử dụng
CREATE TABLE ServiceDetail (
    service_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL, 
    service_id INT NOT NULL, 
    promotion_id INT DEFAULT NULL, -- Nếu dịch vụ này được áp dụng khuyến mãi, cột này sẽ chứa ID của chương trình khuyến mãi.
    order_date DATE NOT NULL, -- ngày sử dụng dịch vụ
    service_quantity INT DEFAULT 0, -- số lượng dịch vụ đã sử dụng
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id) ON DELETE CASCADE,
    FOREIGN KEY (service_id) REFERENCES Service(service_id) ON DELETE CASCADE,
    FOREIGN KEY (promotion_id) REFERENCES Promotion(promotion_id) ON DELETE SET NULL
    -- Khi chương trình khuyến mãi bị xóa đưa hết các cột về null 
);

INSERT INTO ServiceDetail (booking_id, service_id, order_date, service_quantity)
VALUES
(1, 1, '2025-03-05', 3),
(1, 2, '2025-03-06', 2),
(2, 1, '2025-03-09', 4),
(2, 3, '2025-03-10', 1),
(3, 2, '2025-03-13', 2),
(3, 4, '2025-03-14', 3),
(4, 3, '2025-03-17', 1),
(4, 5, '2025-03-18', 2),
(5, 4, '2025-03-21', 3),
(5, 2, '2025-03-22', 1),
(6, 5, '2025-03-25', 4),
(6, 1, '2025-03-26', 2),
(7, 1, '2025-03-29', 3),
(7, 2, '2025-03-30', 2),
(8, 3, '2025-04-02', 5),
(8, 4, '2025-04-03', 1),
(9, 2, '2025-04-06', 4),
(9, 5, '2025-04-07', 2),
(10, 1, '2025-04-10', 3),
(10, 3, '2025-04-11', 1),
(11, 4, '2025-04-13', 2),
(11, 5, '2025-04-14', 3),
(12, 1, '2025-04-15', 1),
(12, 2, '2025-04-16', 4),
(13, 3, '2025-04-18', 2),
(13, 4, '2025-04-19', 5),
(14, 5, '2025-04-21', 3),
(14, 1, '2025-04-22', 2),
(15, 2, '2025-04-24', 1),
(15, 3, '2025-04-25', 4),
(16, 4, '2025-04-27', 3),
(16, 5, '2025-04-28', 2);

UPDATE ServiceDetail sd
JOIN Promotion p ON sd.service_id = p.service_id
SET sd.promotion_id = p.promotion_id
WHERE sd.order_date BETWEEN p.start_date AND p.end_date;

SELECT 
    c.full_name AS customer_name,          
    r.room_number AS room_id,              
    s.name AS service_name,                
    sd.service_quantity,                   
    s.unit_price AS unit_price,            
    p.name AS promotion_name,              
    sd.order_date,                         
    (sd.service_quantity * s.unit_price * (1 - IFNULL(p.discount_percent, 0)/100)) AS total_price, 
    MONTH(sd.order_date) AS order_month,   
    YEAR(sd.order_date) AS order_year      
FROM 
    ServiceDetail sd
JOIN 
    Booking b ON sd.booking_id = b.booking_id
JOIN 
    Customer c ON b.customer_id = c.customer_id
JOIN 
    Room r ON b.room_id = r.room_id
JOIN 
    Service s ON sd.service_id = s.service_id
LEFT JOIN 
    Promotion p ON sd.promotion_id = p.promotion_id
    AND sd.order_date BETWEEN p.start_date AND p.end_date  
WHERE 
    sd.order_date BETWEEN '2025-01-01' AND '2025-12-31' 
ORDER BY 
    YEAR(sd.order_date), MONTH(sd.order_date);


-- hóa đơn-- 
CREATE TABLE Invoice (
    invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    total_amount DECIMAL(15, 2) NOT NULL,
    status ENUM('UNPAID', 'PAID') DEFAULT 'UNPAID',
    issued_at DATE,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id) ON DELETE CASCADE
);

DELIMITER //

CREATE TRIGGER set_invoice_issued_at
BEFORE INSERT ON Invoice
FOR EACH ROW
BEGIN
  DECLARE bookingEndDate DATE;

  SELECT end_date INTO bookingEndDate
  FROM Booking
  WHERE booking_id = NEW.booking_id;

  SET NEW.issued_at = bookingEndDate;
END;
//

DELIMITER ;


DELIMITER $$

CREATE TRIGGER trg_insert_invoice_after_booking
AFTER INSERT ON Booking
FOR EACH ROW
BEGIN
    DECLARE room_price DECIMAL(10,2);
    DECLARE num_days INT;
    DECLARE total_amount DECIMAL(10,2);

    -- Lấy đơn giá phòng
    SELECT custom_price INTO room_price FROM Room WHERE room_id = NEW.room_id;

    -- Tính số ngày
    SET num_days = DATEDIFF(NEW.end_date, NEW.start_date);
    -- Tính tổng tiền chỉ gồm giá phòng (chưa có dịch vụ)
    SET total_amount = room_price * num_days;
    -- Insert vào bảng Invoice
    INSERT INTO Invoice (booking_id, total_amount, status)
    VALUES (NEW.booking_id, total_amount, 'UNPAID');
END$$

DELIMITER 

SELECT 
    b.booking_id,
    IFNULL(r.custom_price * DATEDIFF(b.end_date, b.start_date), 0) AS room_amount,
    IFNULL(SUM(sd.service_quantity * s.unit_price * (1 - IFNULL(p.discount_percent, 0) / 100)), 0) AS service_amount,
    IFNULL(r.custom_price * DATEDIFF(b.end_date, b.start_date), 0) + 
    IFNULL(SUM(sd.service_quantity * s.unit_price * (1 - IFNULL(p.discount_percent, 0) / 100)), 0) AS total_amount
FROM 
    Booking b
JOIN 
    Room r ON b.room_id = r.room_id
LEFT JOIN 
    ServiceDetail sd ON b.booking_id = sd.booking_id
LEFT JOIN 
    Service s ON sd.service_id = s.service_id
LEFT JOIN 
    Promotion p ON sd.promotion_id = p.promotion_id 
        AND sd.order_date BETWEEN p.start_date AND p.end_date
GROUP BY 
    b.booking_id;

SELECT
    MONTH(issued_at) AS month_number,
    SUM(total_amount) AS revenue
FROM Invoice
WHERE status = 'PAID'
  AND YEAR(issued_at) = YEAR(CURRENT_DATE())
GROUP BY MONTH(issued_at)
ORDER BY month_number;

select * from invoice
SELECT COUNT(*) FROM Invoice WHERE status = 'PAID';



INSERT INTO Invoice (booking_id, total_amount, status)
SELECT 
    b.booking_id, 
    SUM(r.custom_price * DATEDIFF(b.end_date, b.start_date) + 
        IFNULL(sd.service_quantity * s.unit_price * (1 - IFNULL(p.discount_percent, 0) / 100), 0)) AS total_amount,'UNPAID' AS status
FROM 
    Booking b
JOIN 
    Room r ON b.room_id = r.room_id
LEFT JOIN 
    ServiceDetail sd ON b.booking_id = sd.booking_id
LEFT JOIN 
    Service s ON sd.service_id = s.service_id
LEFT JOIN 
    Promotion p ON sd.promotion_id = p.promotion_id 
        AND sd.order_date BETWEEN p.start_date AND p.end_date
GROUP BY 
    b.booking_id;


SELECT 
    r.room_category,
    SUM(i.total_amount) AS room_revenue
FROM 
    Invoice i
JOIN Booking b ON i.booking_id = b.booking_id
JOIN Room r ON b.room_id = r.room_id
WHERE 
    i.status = 'PAID'
GROUP BY 
    r.room_category;




SELECT 
    r.room_category,
    SUM(i.total_amount) AS room_revenue
FROM 
    Invoice i
JOIN Booking b ON i.booking_id = b.booking_id
JOIN Room r ON b.room_id = r.room_id
WHERE 
    i.status = 'PAID'
GROUP BY 
    r.room_category;

    
SELECT 
    s.name AS service_name,
    COALESCE(SUM(CASE WHEN i.status = 'PAID' THEN sd.service_quantity * s.unit_price ELSE 0 END), 0) AS paid_service_revenue
FROM 
    Service s
LEFT JOIN ServiceDetail sd ON s.service_id = sd.service_id
LEFT JOIN Booking b ON sd.booking_id = b.booking_id
LEFT JOIN Invoice i ON b.booking_id = i.booking_id
GROUP BY 
    s.name;



