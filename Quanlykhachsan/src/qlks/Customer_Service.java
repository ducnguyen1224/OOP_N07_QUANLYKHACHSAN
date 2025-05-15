package qlks;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.sql.Statement;
import java.text.DecimalFormat;


public class Customer_Service extends javax.swing.JFrame {
    private int accountId;
    public Customer_Service(int accountId) {
        this.accountId = accountId;
        initComponents();
        loadComboBox3();
        loadComboBox4();
        loadServiceDetailData();
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jToggleButton3 = new javax.swing.JToggleButton();
        jToggleButton4 = new javax.swing.JToggleButton();
        jToggleButton5 = new javax.swing.JToggleButton();
        jToggleButton6 = new javax.swing.JToggleButton();
        jPanel4 = new javax.swing.JPanel();
        jLabel20 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jPanel6 = new javax.swing.JPanel();
        jLabel17 = new javax.swing.JLabel();
        jComboBox3 = new javax.swing.JComboBox<>();
        jComboBox4 = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        label1 = new java.awt.Label();
        label2 = new java.awt.Label();
        jToggleButton1 = new javax.swing.JToggleButton();
        jLabel7 = new javax.swing.JLabel();
        jFormattedTextField1 = new javax.swing.JFormattedTextField();
        jScrollPane3 = new javax.swing.JScrollPane();
        jTable3 = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 255));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        jPanel2.setBackground(new java.awt.Color(255, 51, 51));
        jPanel2.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText(" Customer");

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));

        jToggleButton3.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jToggleButton3.setText("Thuê phòng");
        jToggleButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButton3ActionPerformed(evt);
            }
        });

        jToggleButton4.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jToggleButton4.setText("Dịch vụ");
        jToggleButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButton4ActionPerformed(evt);
            }
        });

        jToggleButton5.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jToggleButton5.setText("Thông tin cá nhân");
        jToggleButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButton5ActionPerformed(evt);
            }
        });

        jToggleButton6.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jToggleButton6.setText("Đăng Xuất");
        jToggleButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButton6ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addComponent(jToggleButton3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jToggleButton4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jToggleButton5, javax.swing.GroupLayout.DEFAULT_SIZE, 200, Short.MAX_VALUE)
            .addComponent(jToggleButton6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addComponent(jLabel2))
                .addGap(16, 16, 16)
                .addComponent(jToggleButton5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jToggleButton3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jToggleButton4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jToggleButton6)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBackground(new java.awt.Color(255, 51, 51));
        jPanel4.setForeground(new java.awt.Color(255, 51, 51));

        jLabel20.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel20.setForeground(new java.awt.Color(255, 255, 255));
        jLabel20.setText("DỊCH VỤ KHÁCH SẠN");

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(108, 108, 108)
                .addComponent(jLabel20)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel20, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 61, Short.MAX_VALUE)
        );

        jLabel3.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jLabel3.setText("Phòng");

        jLabel4.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jLabel4.setText("Dịch vụ");

        jPanel6.setBackground(new java.awt.Color(255, 51, 51));
        jPanel6.setForeground(new java.awt.Color(255, 51, 51));

        jLabel17.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel17.setForeground(new java.awt.Color(255, 255, 255));
        jLabel17.setText("DỊCH VỤ ĐÃ ĐẶT");

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(145, 145, 145)
                .addComponent(jLabel17)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel17, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 61, Short.MAX_VALUE)
        );

        jComboBox3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox3ActionPerformed(evt);
            }
        });

        jComboBox4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox4ActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jLabel5.setText("Giá");

        jLabel6.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jLabel6.setText("Đơn giá");

        label1.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N

        label2.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N

        jToggleButton1.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jToggleButton1.setText("Thêm dịch vụ");
        jToggleButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButton1ActionPerformed(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jLabel7.setText("Số lượng");

        jFormattedTextField1.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(java.text.NumberFormat.getIntegerInstance())));
        jFormattedTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jFormattedTextField1ActionPerformed(evt);
            }
        });

        jTable3.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        jTable3.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null}
            },
            new String [] {
                "STT", "Tên dịch vụ", "Mã phòng", "Tên dịch vụ", "Số lượng ", "Đơn giá", "Khuyến mại(%)", "Ngày đặt", "Thành tiền"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jScrollPane3.setViewportView(jTable3);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jFormattedTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jComboBox3, 0, 140, Short.MAX_VALUE)
                                    .addComponent(label1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jComboBox4, 0, 132, Short.MAX_VALUE)
                                    .addComponent(label2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                            .addComponent(jToggleButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(6, 6, 6)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 465, Short.MAX_VALUE))))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jComboBox3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jComboBox4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel5)
                        .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(label2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 1, Short.MAX_VALUE)
                        .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jToggleButton1)
                    .addComponent(jLabel7)
                    .addComponent(jFormattedTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(26, 26, 26)
                .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(7, 7, 7))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jToggleButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButton5ActionPerformed
        new Customer_Information(accountId).setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jToggleButton5ActionPerformed

    private void jToggleButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButton4ActionPerformed
        
    }//GEN-LAST:event_jToggleButton4ActionPerformed

    private void jToggleButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButton3ActionPerformed
        new Customer_Booking(accountId).setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jToggleButton3ActionPerformed

    private void jComboBox3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox3ActionPerformed
        
    }//GEN-LAST:event_jComboBox3ActionPerformed

    private void jToggleButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButton1ActionPerformed
        String selectedRoom = (String) jComboBox3.getSelectedItem();
        String selectedService = (String) jComboBox4.getSelectedItem();
        int quantity = Integer.parseInt(jFormattedTextField1.getText());

        try {
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/qlks1", "root", "9823"
            );

            // Lấy customer_id từ accountId
            String customerSql = "SELECT customer_id FROM Customer WHERE account_id = ?";
            PreparedStatement custStmt = conn.prepareStatement(customerSql);
            custStmt.setInt(1, accountId);
            ResultSet custRs = custStmt.executeQuery();
            int customerId = -1;
            if (custRs.next()) {
                customerId = custRs.getInt("customer_id");
            }
            custRs.close();
            custStmt.close();

            if (customerId == -1) {
                JOptionPane.showMessageDialog(this, "Không tìm thấy khách hàng.");
                conn.close();
                return;
            }

            // Lấy booking_id từ phòng và customer_id
            String bookingSql = "SELECT b.booking_id FROM Booking b " +
                                "JOIN Room r ON b.room_id = r.room_id " +
                                "JOIN Invoice i ON b.booking_id = i.booking_id " +
                                "WHERE r.room_number = ? AND b.customer_id = ? AND i.status = 'UNPAID'";
            PreparedStatement bookingStmt = conn.prepareStatement(bookingSql);
            bookingStmt.setString(1, selectedRoom);
            bookingStmt.setInt(2, customerId);
            ResultSet bookingRs = bookingStmt.executeQuery();
            int bookingId = -1;
            if (bookingRs.next()) {
                bookingId = bookingRs.getInt("booking_id");
            }
            bookingRs.close();
            bookingStmt.close();

            if (bookingId == -1) {
                JOptionPane.showMessageDialog(this, "Không tìm thấy booking phù hợp.");
                conn.close();
                return;
            }

            // Lấy service_id từ tên dịch vụ
            String serviceSql = "SELECT service_id FROM Service WHERE name = ?";
            PreparedStatement serviceStmt = conn.prepareStatement(serviceSql);
            serviceStmt.setString(1, selectedService);
            ResultSet serviceRs = serviceStmt.executeQuery();
            int serviceId = -1;
            if (serviceRs.next()) {
                serviceId = serviceRs.getInt("service_id");
            }
            serviceRs.close();
            serviceStmt.close();

            if (serviceId == -1) {
                JOptionPane.showMessageDialog(this, "Không tìm thấy dịch vụ.");
                conn.close();
                return;
            }

            // Lấy ngày hiện tại
            java.sql.Date today = new java.sql.Date(System.currentTimeMillis());

            // Chèn vào bảng ServiceDetail
            String insertSql = "INSERT INTO ServiceDetail (booking_id, service_id, order_date, service_quantity) " +
                               "VALUES (?, ?, ?, ?)";
            PreparedStatement insertStmt = conn.prepareStatement(insertSql);
            insertStmt.setInt(1, bookingId);
            insertStmt.setInt(2, serviceId);
            insertStmt.setDate(3, today);
            insertStmt.setInt(4, quantity);

            insertStmt.executeUpdate();
            insertStmt.close();
            conn.close();

            JOptionPane.showMessageDialog(null, "Thêm dịch vụ thành công!");
            loadServiceDetailData(); // Cập nhật lại bảng hiển thị

        } catch (Exception ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "Lỗi khi thêm dịch vụ: " + ex.getMessage());
        }
    }//GEN-LAST:event_jToggleButton1ActionPerformed

    private void jFormattedTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jFormattedTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jFormattedTextField1ActionPerformed

    private void jComboBox4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox4ActionPerformed
        String selectedService = (String) jComboBox4.getSelectedItem();
        try {
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/qlks1", "root", "9823"
            );

            String sql = "SELECT unit_price, unit FROM Service s WHERE s.name = ?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, selectedService);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                DecimalFormat df = new DecimalFormat("#,###");
                label1.setText(df.format(rs.getDouble("unit_price")));
                label2.setText(rs.getString("unit"));
            }

            rs.close();
            pst.close();
            conn.close();

        } catch (Exception ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "Lỗi khi lấy thông tin dịch vụ: " + ex.getMessage());
        }
    }//GEN-LAST:event_jComboBox4ActionPerformed

    private void jToggleButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButton6ActionPerformed
        Signin signinForm = new Signin();
        signinForm.setVisible(true);
        dispose();
    }//GEN-LAST:event_jToggleButton6ActionPerformed

    private void loadComboBox3() {
        try {
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/qlks1", "root", "9823"
            );

            // Lấy customer_id từ account_id
            String accountSql = "SELECT customer_id FROM Customer WHERE account_id = ?";
            PreparedStatement accStmt = conn.prepareStatement(accountSql);
            accStmt.setInt(1, accountId);
            ResultSet accRs = accStmt.executeQuery();
            int customerId = -1;
            if (accRs.next()) {
                customerId = accRs.getInt("customer_id");
            }
            accRs.close();
            accStmt.close();

            if (customerId == -1) {
                JOptionPane.showMessageDialog(this, "Không tìm thấy khách hàng cho tài khoản hiện tại.");
                conn.close();
                return;
            }
            String sql = "SELECT r.room_number " +
             "FROM room r " +
             "JOIN booking b ON r.room_id = b.room_id " +
             "JOIN invoice i ON b.booking_id = i.booking_id " +
             "WHERE b.customer_id = ? AND i.status = 'UNPAID'";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, customerId);
            ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            jComboBox3.addItem(rs.getString("room_number"));
        }
            conn.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Lỗi khi tải dữ liệu hóa đơn chưa thanh toán: " + e.getMessage());
        }    
    }
    private void loadComboBox4() {
        try {
           Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/qlks1", "root", "9823"
            );

            // Lấy customer_id từ account_id
            String sql = "SELECT name FROM Service s";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                jComboBox4.addItem(rs.getString("s.name"));
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void loadServiceDetailData() {
        try {
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/qlks1", "root", "9823"
            );
            String accountSql = "SELECT customer_id FROM Customer WHERE account_id = ?";
            PreparedStatement accStmt = conn.prepareStatement(accountSql);
            accStmt.setInt(1, accountId);
            ResultSet accRs = accStmt.executeQuery();
            int customerId = -1;
            if (accRs.next()) {
                customerId = accRs.getInt("customer_id");
            }
            accRs.close();
            accStmt.close();
            String sql = "SELECT " +
             "  c.full_name AS customer_name, " +
             "  r.room_number AS room_id, " +
             "  s.name , " +
             "  sd.service_quantity, " +
             "  s.unit_price, " +
             "  p.name AS promotion_name, " +
             "  sd.order_date, " +
             "  (sd.service_quantity * s.unit_price * (1 - IFNULL(p.discount_percent, 0)/100)) AS total_price " +
             "FROM ServiceDetail sd " +
             "JOIN Booking b ON sd.booking_id = b.booking_id " +
             "JOIN Customer c ON b.customer_id = c.customer_id " +
             "JOIN Room r ON b.room_id = r.room_id " +
             "JOIN Service s ON sd.service_id = s.service_id " +
             "LEFT JOIN Promotion p ON sd.promotion_id = p.promotion_id " +
             "     AND sd.order_date BETWEEN p.start_date AND p.end_date " +
             "WHERE c.customer_id = ? " +  
             "ORDER BY sd.order_date";


            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, customerId);
            ResultSet rs = stmt.executeQuery();

            DefaultTableModel model = (DefaultTableModel) jTable3.getModel();
            model.setRowCount(0); 
            DecimalFormat df = new DecimalFormat("#,###");
            int stt = 1;
            while (rs.next()) {
                Object[] row = {
                    stt++,
                    rs.getString("customer_name"),
                    rs.getString("room_id"),
                    rs.getString("s.name"),
                    rs.getInt("service_quantity"),
                    df.format(rs.getBigDecimal("unit_price")),
                    rs.getString("promotion_name") != null ? rs.getString("promotion_name") : "Không",
                    rs.getDate("order_date"),
                    df.format(rs.getBigDecimal("total_price"))
                };
                model.addRow(row);
            }

            rs.close();
            stmt.close();
            conn.close();

            // Tùy chỉnh độ rộng cột
            jTable3.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_OFF);
            jTable3.getColumnModel().getColumn(0).setPreferredWidth(40);   // STT
            jTable3.getColumnModel().getColumn(1).setPreferredWidth(150);  // Tên khách hàng
            jTable3.getColumnModel().getColumn(2).setPreferredWidth(80);   // Mã phòng
            jTable3.getColumnModel().getColumn(3).setPreferredWidth(150);  // Tên dịch vụ
            jTable3.getColumnModel().getColumn(4).setPreferredWidth(60);   // Số lượng
            jTable3.getColumnModel().getColumn(5).setPreferredWidth(80);   // Đơn giá
            jTable3.getColumnModel().getColumn(6).setPreferredWidth(150);  // Tên khuyến mãi
            jTable3.getColumnModel().getColumn(7).setPreferredWidth(100);  // Ngày đặt
            jTable3.getColumnModel().getColumn(8).setPreferredWidth(100);  // Thành tiền

        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Lỗi khi tải dữ liệu dịch vụ đã đặt: " + e.getMessage());
        }
    }
    
    private void clearInputFields() {
        jFormattedTextField1.setText("");
        //jFormattedTextField2.setText("");
        //jComboBox1.setSelectedIndex(0);
        //jComboBox2.setSelectedIndex(-1);
    }
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(() -> {
            int accountId = 5;  
            new Customer_Service(accountId).setVisible(true);   
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> jComboBox3;
    private javax.swing.JComboBox<String> jComboBox4;
    private javax.swing.JFormattedTextField jFormattedTextField1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTable jTable3;
    private javax.swing.JToggleButton jToggleButton1;
    private javax.swing.JToggleButton jToggleButton3;
    private javax.swing.JToggleButton jToggleButton4;
    private javax.swing.JToggleButton jToggleButton5;
    private javax.swing.JToggleButton jToggleButton6;
    private java.awt.Label label1;
    private java.awt.Label label2;
    // End of variables declaration//GEN-END:variables
}
