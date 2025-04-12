import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class Quanlynhanvien extends JFrame {

    private JTextField txtMaNV, txtTenNV, txtMaCV, txtNgayBDLV, txtGioiTinh, txtSDTNV, txtDiaChiNV, txtEmailNV, txtCCCDNV, txtLuong;
    private JButton btnAdd, btnClear;
    private Connection con;
    private Statement stmt;

    public Quanlynhanvien() {
        setTitle("Quản lý nhân viên");
        setSize(600, 500);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        getContentPane().setBackground(new Color(238, 238, 238));

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(12, 2, 10, 10));
        panel.setBackground(new Color(255, 255, 255));
        panel.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20));

        Font labelFont = new Font("Arial", Font.BOLD, 14);
        Font textFieldFont = new Font("Arial", Font.PLAIN, 14);

        panel.add(new JLabel("Mã NV:", JLabel.RIGHT));
        txtMaNV = new JTextField();
        txtMaNV.setFont(textFieldFont);
        panel.add(txtMaNV);

        panel.add(new JLabel("Tên NV:", JLabel.RIGHT));
        txtTenNV = new JTextField();
        txtTenNV.setFont(textFieldFont);
        panel.add(txtTenNV);

        panel.add(new JLabel("Mã Chức Vụ:", JLabel.RIGHT));
        txtMaCV = new JTextField();
        txtMaCV.setFont(textFieldFont);
        panel.add(txtMaCV);

        panel.add(new JLabel("Ngày Bắt Đầu Làm Việc:", JLabel.RIGHT));
        txtNgayBDLV = new JTextField();
        txtNgayBDLV.setFont(textFieldFont);
        panel.add(txtNgayBDLV);

        panel.add(new JLabel("Giới Tính:", JLabel.RIGHT));
        txtGioiTinh = new JTextField();
        txtGioiTinh.setFont(textFieldFont);
        panel.add(txtGioiTinh);

        panel.add(new JLabel("SĐT NV:", JLabel.RIGHT));
        txtSDTNV = new JTextField();
        txtSDTNV.setFont(textFieldFont);
        panel.add(txtSDTNV);

        panel.add(new JLabel("Địa Chỉ NV:", JLabel.RIGHT));
        txtDiaChiNV = new JTextField();
        txtDiaChiNV.setFont(textFieldFont);
        panel.add(txtDiaChiNV);

        panel.add(new JLabel("Email NV:", JLabel.RIGHT));
        txtEmailNV = new JTextField();
        txtEmailNV.setFont(textFieldFont);
        panel.add(txtEmailNV);

        panel.add(new JLabel("CCCD NV:", JLabel.RIGHT));
        txtCCCDNV = new JTextField();
        txtCCCDNV.setFont(textFieldFont);
        panel.add(txtCCCDNV);

        panel.add(new JLabel("Lương:", JLabel.RIGHT));
        txtLuong = new JTextField();
        txtLuong.setFont(textFieldFont);
        panel.add(txtLuong);

        btnAdd = new JButton("Thêm Nhân Viên");
        btnAdd.setFont(new Font("Arial", Font.BOLD, 14));
        btnAdd.setBackground(new Color(57, 138, 255));
        btnAdd.setForeground(Color.WHITE);
        btnAdd.setFocusPainted(false);
        btnAdd.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        panel.add(btnAdd);

        btnClear = new JButton("Xóa Nhập Liệu");
        btnClear.setFont(new Font("Arial", Font.BOLD, 14));
        btnClear.setBackground(new Color(255, 87, 34));
        btnClear.setForeground(Color.WHITE);
        btnClear.setFocusPainted(false);
        btnClear.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        panel.add(btnClear);

        add(panel);

        connectDatabase();

        btnAdd.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                addEmployee();
            }
        });

        btnClear.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                clearFields();
            }
        });
    }

    private void connectDatabase() {
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ten_database", "root", "");
            stmt = con.createStatement();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    private void addEmployee() {
        try {
            String maNV = txtMaNV.getText();
            String tenNV = txtTenNV.getText();
            String maCV = txtMaCV.getText();
            String ngayBDLV = txtNgayBDLV.getText();
            String gioiTinh = txtGioiTinh.getText();
            String sdtNV = txtSDTNV.getText();
            String diaChiNV = txtDiaChiNV.getText();
            String emailNV = txtEmailNV.getText();
            String cccdNV = txtCCCDNV.getText();
            String luong = txtLuong.getText();

            String query = "INSERT INTO NhanVien (MaNV, TenNV, MaCV, NgayBDLV, GioiTinh, SDTNV, DiaChiNV, EmailNV, CCCDNV, Luong) VALUES ('"
                    + maNV + "', '" + tenNV + "', '" + maCV + "', '" + ngayBDLV + "', '" + gioiTinh + "', '"
                    + sdtNV + "', '" + diaChiNV + "', '" + emailNV + "', '" + cccdNV + "', '" + luong + "')";
            stmt.executeUpdate(query);

            JOptionPane.showMessageDialog(this, "Nhân viên đã được thêm thành công!");
            clearFields();
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "Có lỗi khi thêm nhân viên!", "Lỗi", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void clearFields() {
        txtMaNV.setText("");
        txtTenNV.setText("");
        txtMaCV.setText("");
        txtNgayBDLV.setText("");
        txtGioiTinh.setText("");
        txtSDTNV.setText("");
        txtDiaChiNV.setText("");
        txtEmailNV.setText("");
        txtCCCDNV.setText("");
        txtLuong.setText("");
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new Quanlynhanvien().setVisible(true);
            }
        });
    }
}
