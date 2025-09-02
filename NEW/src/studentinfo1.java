import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.imageio.ImageIO;
import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.RowFilter;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;
import javax.swing.table.TableRowSorter;

import java.awt.Color;
import java.awt.Container;
import java.awt.Font;


import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.awt.print.PageFormat;
import java.awt.print.Printable;
import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.toedter.calendar.JDateChooser;
import java.sql.*;

public class studentinfo1{
	
	//JDBC connection method
    public static Connection getConnection() {
        Connection con = null;
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to database 
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb", "root", "");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Database Connection Failed: " + e.getMessage());
        }
        return con;
    }
	

	
	static String imagepath = "";
	public static void main(String []args) {
	JFrame frame = new JFrame();
	frame.setSize(2000,850);
	frame.setLocationRelativeTo(null);
	frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	frame.setTitle("STUDENT INFORMATION MANAGEMENT");
	Container c;
	c =frame.getContentPane();
	c.setBackground(new Color(135,206,250,30));//RGBT
	frame.setLayout(null);
	
	JLabel titlelabel = new JLabel ("STUDENT INFORMATION MANAGEMENT");
	titlelabel.setBounds(70,10,300,20);
	titlelabel.setFont(new Font("Arial",Font.BOLD,14));
	titlelabel.setForeground(Color.BLUE);
	titlelabel.setText("STUDENT INFORMATION MANAGEMENT");
	frame.add(titlelabel);
	
	
	JLabel PersonalInfo = new JLabel ("Personal Information :");
	PersonalInfo.setFont(new Font("Arial",Font.BOLD,12));
	PersonalInfo.setBounds(50,50,200,20);
	frame.add(PersonalInfo);
	
	
	JLabel namelabel = new JLabel("Name :");
	namelabel.setBounds(50,80,100,20);
	frame.add(namelabel);
	JTextField nametf = new JTextField();
	nametf.setBounds(150,80,200,20);
	frame.add(nametf);
	
	JLabel idlabel = new JLabel ("Student ID :");
	idlabel.setBounds(50,110,200,20);
	frame.add(idlabel);
	JTextField Idtf = new JTextField();
	Idtf.setBounds(150,110,200,20);
	frame.add(Idtf);
	
	JLabel BirthDate = new JLabel("Date of Birth");
	BirthDate.setBounds(50,140,200,20);
	frame.add(BirthDate);
	JDateChooser BDChooser = new JDateChooser();
	BDChooser.setBounds(150,140,200,20);
	frame.add(BDChooser);
	

	JLabel Genderlabel = new JLabel("Gender :");
	Genderlabel.setBounds(50,170,100,20);
	frame.add(Genderlabel);

	
	String gender[]= {"Male","Female","Other"};
	JComboBox c1 = new JComboBox(gender);
	c1.setBounds(150,170,200,20);
	frame.add(c1);
	
	JLabel Bloodgroup= new JLabel ("Blood Group :");
	Bloodgroup.setBounds(50,200,100,20);
	frame.add(Bloodgroup);
	
	String BloodGroup[]= {"A+","A-","B+","B-","AB+","AB-","O+","O-"};
	JComboBox c2 = new JComboBox(BloodGroup);
	c2.setBounds(150,200,200,20);
	frame.add(c2);
	
	JLabel Nationality = new JLabel ("Nationality :");
	Nationality.setBounds(50,230,100,20);
	frame.add(Nationality);
	JTextField Nationalitytf = new JTextField();
	Nationalitytf.setBounds(150,230,200,20);
	frame.add(Nationalitytf);

	JLabel Address = new JLabel ("Address :");
	Address.setBounds(50,260,100,20);
	frame.add(Address);
	JTextField Addresstf = new JTextField();
	Addresstf.setBounds(150,260,200,20);
	frame.add(Addresstf);
	
	JLabel Contact = new JLabel ("Contact Number :");
	Contact.setBounds(50,290,100,20);
	frame.add(Contact);
	JTextField Contacttf = new JTextField();
	Contacttf.setBounds(150,290,200,20);
	frame.add(Contacttf);
	
	JLabel Email= new JLabel ("Email :");
	Email.setBounds(50,320,100,20);
	frame.add(Email);
	JTextField Emailtf = new JTextField();
	Emailtf.setBounds(150,320,200,20);
	frame.add(Emailtf);
	
	JLabel AcademicInfo = new JLabel ("Academic Information :");
	AcademicInfo.setFont(new Font("Arial",Font.BOLD,12));
	AcademicInfo.setBounds(50,380,200,20);
	frame.add(AcademicInfo);
	

	JLabel Dept= new JLabel ("Department :");
	Dept.setBounds(50,420,100,20);
	frame.add(Dept);
	JTextField Depttf = new JTextField();
	Depttf.setBounds(150,420,200,20);
	frame.add(Depttf);
	
	JLabel Year= new JLabel ("Year :");
	Year.setBounds(50,450,100,20);
	frame.add( Year);
	JTextField  Yeartf = new JTextField();
	Yeartf.setBounds(150,450,200,20);
	frame.add( Yeartf);

	JLabel CGPA= new JLabel ("Prev.Year CGPA:");
	CGPA.setBounds(50,480,100,20);
	frame.add(CGPA);
	JTextField CGPAtf = new JTextField();
	CGPAtf.setBounds(150,480,200,20);
	frame.add(CGPAtf);
	
	
	JLabel image = new JLabel("          Student Image");
	image.setBounds(180,560,150,150);
	image.setOpaque(true); 
	image.setBackground(Color.WHITE); 
    image.setBorder(BorderFactory.createLineBorder(Color.BLACK));
	frame.add(image);
	
	 
	 //Buttons
    JButton insert = new JButton("Insert");
	insert.setForeground(new Color(0, 51, 102));
	insert.setBackground(new Color(135, 206, 235));
	insert.setBounds(50,745,100,20);
	frame.add(insert);
	
	JButton update = new JButton("Update");
	update.setForeground(new Color(50, 50, 50));
	update.setBackground(new Color(200, 162, 200));
	update.setBounds(170,745,100,20);
	frame.add(update);
	
	JButton delete = new JButton("Delete");
	delete.setForeground(new Color(102, 51, 0));
	delete.setBackground(new Color(255, 218, 185));
	delete.setBounds(290,745,100,20);
	frame.add(delete);
	
	JButton upload = new JButton("Browse →");
	upload.setBounds(50,560,100,20);
	frame.add(upload);
	
	JButton clearAll = new JButton("Clear All");
	clearAll.setBounds(50,600,100,20); 
	frame.add(clearAll);

	
	
	 //Image insert
	 upload.addActionListener(new ActionListener() {
	    public void actionPerformed(ActionEvent e) {
	        JFileChooser fc = new JFileChooser();
	        fc.setFileFilter(new FileNameExtensionFilter("Image files", "jpg", "jpeg", "png"));
	        int result = fc.showOpenDialog(null); 
	        if (result == JFileChooser.APPROVE_OPTION) {
	            File select = fc.getSelectedFile();
	            imagepath = select.getAbsolutePath();
	            ImageIcon imageicon = new ImageIcon(new ImageIcon(imagepath).getImage().getScaledInstance(150, 150, Image.SCALE_SMOOTH));
	            image.setIcon(imageicon);
	        } else {
	            JOptionPane.showMessageDialog(frame, "No Image Found", "Warning", JOptionPane.WARNING_MESSAGE);
	        }
	    }
	});
	 
	 clearAll.addActionListener(new ActionListener() {
		    public void actionPerformed(ActionEvent e) {
		        // Clear all input fields
		        nametf.setText("");
		        Idtf.setText("");
		        BDChooser.setDate(null);
		        c1.setSelectedIndex(0); // Gender ComboBox
		        c2.setSelectedIndex(0); // Blood Group ComboBox
		        Nationalitytf.setText("");
		        Addresstf.setText("");
		        Contacttf.setText("");
		        Emailtf.setText("");
		        Depttf.setText("");
		        Yeartf.setText("");
		        CGPAtf.setText("");
		        
		        // Clear image label
		        image.setIcon(null);
		        imagepath = "";
		        image.setBackground(Color.WHITE); // Optional: maintain background
		    }
		});

	
	//2nd part
	//TAble
	
	DefaultTableModel model = new DefaultTableModel();
	String column[]= {"Name","Student ID","Date of Birth","Gender","Blood Group","Nationality","Address","Contact","Email","Dept","Year","CGPA","Image"};
	model.setColumnIdentifiers(column);
	JTable Table = new JTable(model);
	loadDataFromDatabase(model); //load from database immediately after runnning

	// Fetch selected row info into the textfields
	Table.addMouseListener(new MouseAdapter() {  
	    public void mouseClicked(MouseEvent e) {
	        int row = Table.getSelectedRow();
	        if (row >= 0) {
	            // Adjust for sorting
	            row = Table.convertRowIndexToModel(row);
	            
	            DefaultTableModel model = (DefaultTableModel) Table.getModel();

	            Object val;

	            val = model.getValueAt(row, 0);
	            nametf.setText(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 1);
	            Idtf.setText(val != null ? val.toString() : "");

	            try {
	                val = model.getValueAt(row, 2);
	                if (val != null) {
	                    Date dob = new SimpleDateFormat("d MMMM yyyy").parse(val.toString());
	                    BDChooser.setDate(dob);
	                } else {
	                    BDChooser.setDate(null);
	                }
	            } catch (Exception ex) {
	                BDChooser.setDate(null);
	            }

	            val = model.getValueAt(row, 3);
	            c1.setSelectedItem(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 4);
	            c2.setSelectedItem(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 5);
	            Nationalitytf.setText(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 6);
	            Addresstf.setText(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 7);
	            Contacttf.setText(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 8);
	            Emailtf.setText(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 9);
	            Depttf.setText(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 10);
	            Yeartf.setText(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 11);
	            CGPAtf.setText(val != null ? val.toString() : "");

	            val = model.getValueAt(row, 12);
	            imagepath = val != null ? val.toString() : "";
	            if (!imagepath.isEmpty()) {
	                ImageIcon icon = new ImageIcon(new ImageIcon(imagepath)
	                    .getImage().getScaledInstance(image.getWidth(), image.getHeight(), Image.SCALE_SMOOTH));
	                image.setIcon(icon);
	            } else {
	                image.setIcon(null);
	            }
	        }
	    }
	});


	
	//Scroll
    JScrollPane scroll = new JScrollPane(Table);
	scroll.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
	scroll.setBounds(430,50,1090,700);
	frame.add(scroll);
	
	// Work of SearchBar 
	JLabel search = new JLabel("Search");
	search.setBounds(1000,20,50,20);
	frame.add(search);
	
	JTextField searchtf = new JTextField();
	searchtf.setBounds(1050,20,400,20);
	frame.add(searchtf);
	
	searchtf.addKeyListener(new KeyAdapter() {
	    public void keyReleased(KeyEvent e) {
	        String searchText = searchtf.getText().trim();
	        DefaultTableModel model = (DefaultTableModel) Table.getModel();
	        searchAndLoadFromDatabase(model, searchText);
	    }
	});

	
	
	//Customizing Table Index
	TableColumn namecolumn = new  TableColumn();
	namecolumn = Table.getColumnModel().getColumn(0);
	namecolumn.setPreferredWidth(180);
	
	TableColumn IdColumn = new  TableColumn();
	IdColumn = Table.getColumnModel().getColumn(1);
	IdColumn.setPreferredWidth(100);
	
	TableColumn BDcolumn= new TableColumn();
	BDcolumn = Table.getColumnModel().getColumn(2);
	BDcolumn.setPreferredWidth(140);
	

	TableColumn BloodgroupColumn= new TableColumn();
	BloodgroupColumn= Table.getColumnModel().getColumn(4);
	BloodgroupColumn.setPreferredWidth(90);
	
	TableColumn NationalityColumn= new TableColumn();
	NationalityColumn= Table.getColumnModel().getColumn(5);
	NationalityColumn.setPreferredWidth(90);
	
	TableColumn ContactColumn = new TableColumn();
	ContactColumn = Table.getColumnModel().getColumn(7);
	ContactColumn.setPreferredWidth(95);
	
	TableColumn EmailColumn = new TableColumn();
	EmailColumn = Table.getColumnModel().getColumn(8);
	EmailColumn.setPreferredWidth(183);
	
	TableColumn deptColumn = new TableColumn();
	deptColumn = Table.getColumnModel().getColumn(9);
	deptColumn.setPreferredWidth(45);
	
	TableColumn yearColumn = new TableColumn();
	yearColumn = Table.getColumnModel().getColumn(10);
	yearColumn.setPreferredWidth(45);
	
	TableColumn CGPAColumn = new TableColumn();
	CGPAColumn = Table.getColumnModel().getColumn(11);
	CGPAColumn.setPreferredWidth(50);
	
	TableColumn imagecolumn = new TableColumn ();
	imagecolumn = Table.getColumnModel().getColumn(12);
	imagecolumn.setPreferredWidth(200);
	
	
	//INSERT
	insert.addActionListener(new ActionListener() {
	    public void actionPerformed(ActionEvent e) {
	        Date SelectedDate = BDChooser.getDate();
	        java.sql.Date sqlDate = null;
	        if (SelectedDate != null) {
	            sqlDate = new java.sql.Date(SelectedDate.getTime());
	        }

	        String name = nametf.getText().trim();
	        String studentID = Idtf.getText().trim();
	        String gender = (String) c1.getSelectedItem();
	        String bloodGroup = (String) c2.getSelectedItem();
	        String nationality = Nationalitytf.getText().trim();
	        String address = Addresstf.getText().trim();
	        String contact = Contacttf.getText().trim();
	        String email = Emailtf.getText().trim();
	        String department = Depttf.getText().trim();
	        String year = Yeartf.getText().trim();
	        String cgpa = CGPAtf.getText().trim();

	        
	      //Field validation
	        if (studentID.isEmpty()) {
	            JOptionPane.showMessageDialog(frame, "Student ID is Required!!", "Validation Error", JOptionPane.ERROR_MESSAGE);
	            return;
	        }
	        if (name.isEmpty()) {
	            JOptionPane.showMessageDialog(frame, "Name is Required!!", "Validation Error", JOptionPane.ERROR_MESSAGE);
	            return;
	        }
	        

	        try {
	            Connection con = getConnection();
	            if (con != null) {
	                String sql = "INSERT INTO students (name, student_id, dob, gender, blood_group, nationality, address, contact, email, department, year, cgpa, image_path) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	                PreparedStatement pst = con.prepareStatement(sql);

	                // For all fields, insert NULL if empty
	                pst.setString(1, name); //Required
	                pst.setString(2, studentID); // Required
	                if (sqlDate != null) {
	                    pst.setDate(3, sqlDate);
	                } else {
	                    pst.setNull(3, java.sql.Types.DATE);
	                }

	                pst.setString(4, (gender == null || gender.trim().isEmpty()) ? null : gender);
	                pst.setString(5, (bloodGroup == null || bloodGroup.trim().isEmpty()) ? null : bloodGroup);
	                pst.setString(6, nationality.isEmpty() ? null : nationality);
	                pst.setString(7, address.isEmpty() ? null : address);
	                pst.setString(8, contact.isEmpty() ? null : contact);
	                pst.setString(9, email.isEmpty() ? null : email);
	                pst.setString(10, department.isEmpty() ? null : department);
	                pst.setString(11, year.isEmpty() ? null : year);
	                pst.setString(12, cgpa.isEmpty() ? null : cgpa);
	                pst.setString(13, (imagepath == null || imagepath.trim().isEmpty()) ? null : imagepath);

	                int inserted = pst.executeUpdate();//run the query
	                if (inserted > 0) {
	                    JOptionPane.showMessageDialog(frame, "Inserted into database successfully!");
	                    
	                    //Reload the JTable after inserting new tuple
	                    DefaultTableModel model = (DefaultTableModel) Table.getModel();
	                    loadDataFromDatabase(model);

	                    // Clear all fields
	                    nametf.setText("");
	                    Idtf.setText("");
	                    BDChooser.setDate(null);
	                    c1.setSelectedIndex(0);
	                    c2.setSelectedIndex(0);
	                    Nationalitytf.setText("");
	                    Addresstf.setText("");
	                    Contacttf.setText("");
	                    Emailtf.setText("");
	                    Depttf.setText("");
	                    Yeartf.setText("");
	                    CGPAtf.setText("");
	                    image.setIcon(null);
	                    imagepath = "";
	                    image.setBackground(Color.WHITE);
	                }

	                pst.close();
	                con.close();
	            }
	        } catch (SQLException ex) {
	            JOptionPane.showMessageDialog(frame, "SQL Error: " + ex.getMessage());
	        }
	    }
	});

	
	
	
	//UPDATE
    update.addActionListener(new ActionListener() {
        public void actionPerformed(ActionEvent e) {
            String name = nametf.getText().trim();
            String studentID = Idtf.getText().trim();
            Date SelectedDate = BDChooser.getDate();
            java.sql.Date sqlDate = (SelectedDate != null) ? new java.sql.Date(SelectedDate.getTime()) : null;
            String gender = (String) c1.getSelectedItem();
            String bloodGroup = (String) c2.getSelectedItem();
            String nationality = Nationalitytf.getText().trim();
            String address = Addresstf.getText().trim();
            String contact = Contacttf.getText().trim();
            String email = Emailtf.getText().trim();
            String department = Depttf.getText().trim();
            String year = Yeartf.getText().trim();
            String cgpa = CGPAtf.getText().trim();
            

          //Field validation
	        if (studentID.isEmpty()) {
	            JOptionPane.showMessageDialog(frame, "Student ID is Required!!", "Validation Error", JOptionPane.ERROR_MESSAGE);
	            return;
	        }
	        if (name.isEmpty()) {
	            JOptionPane.showMessageDialog(frame, "Name is Required!!", "Validation Error", JOptionPane.ERROR_MESSAGE);
	            return;
	        }
	        
	        
            try {
                Connection con = getConnection();
                String sql = "UPDATE students SET name=?, dob=?, gender=?, blood_group=?, nationality=?, address=?, contact=?, email=?, department=?, year=?, cgpa=?, image_path=? WHERE student_id=?";
                PreparedStatement pst = con.prepareStatement(sql);

                pst.setString(1, name);
                

             // For DOB
             if (sqlDate != null) {
                 pst.setDate(2, sqlDate);
             } else {
                 pst.setNull(2, java.sql.Types.DATE);
             }

             // For rest of the fields
             pst.setString(3, (gender == null || gender.trim().isEmpty()) ? null : gender);
             pst.setString(4, (bloodGroup == null || bloodGroup.trim().isEmpty()) ? null : bloodGroup);
             pst.setString(5, nationality.isEmpty() ? null : nationality);
             pst.setString(6, address.isEmpty() ? null : address);
             pst.setString(7, contact.isEmpty() ? null : contact);
             pst.setString(8, email.isEmpty() ? null : email);
             pst.setString(9, department.isEmpty() ? null : department);
             pst.setString(10, year.isEmpty() ? null : year);
             pst.setString(11, cgpa.isEmpty() ? null : cgpa);
             pst.setString(12, (imagepath == null || imagepath.trim().isEmpty()) ? null : imagepath);
             pst.setString(13, studentID);  // WHERE clause


                int updated = pst.executeUpdate();
                if (updated > 0) {
                    JOptionPane.showMessageDialog(frame, "Record updated successfully!");

                    // Refresh JTable
                    DefaultTableModel model = (DefaultTableModel) Table.getModel();
                    loadDataFromDatabase(model);

                    // Clear fields
                    nametf.setText("");
                    Idtf.setText("");
                    BDChooser.setDate(null);
                    c1.setSelectedIndex(0);
                    c2.setSelectedIndex(0);
                    Nationalitytf.setText("");
                    Addresstf.setText("");
                    Contacttf.setText("");
                    Emailtf.setText("");
                    Depttf.setText("");
                    Yeartf.setText("");
                    CGPAtf.setText("");
                    image.setIcon(null);
                    imagepath = "";
                }

                pst.close();
                con.close();
            } catch (Exception ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(frame, "Error updating record: " + ex.getMessage());
            }
        }
    });

	
 
    
  //Delete
    delete.addActionListener(new ActionListener() {
        public void actionPerformed(ActionEvent e) {
            int SR = Table.getSelectedRow();
            if (SR >= 0) {
                String studentIdToDelete = model.getValueAt(SR, 1).toString();  // Student ID column

                // Confirmation popup
                int confirm = JOptionPane.showConfirmDialog(
                    frame,
                    "Are you sure you want to delete this student's information?",
                    "Confirm Deletion",
                    JOptionPane.YES_NO_OPTION,
                    JOptionPane.WARNING_MESSAGE
                );

                if (confirm == JOptionPane.YES_OPTION) {
                    try {
                        Connection con = getConnection();
                        if (con != null) {
                            String sql = "DELETE FROM students WHERE student_id = ?";
                            PreparedStatement pst = con.prepareStatement(sql);
                            pst.setString(1, studentIdToDelete);
                            int deleted = pst.executeUpdate();
                            pst.close();
                            con.close();

                            if (deleted > 0) {
                                JOptionPane.showMessageDialog(frame, "Record deleted successfully!");

                                // Reload table from database
                                DefaultTableModel model = (DefaultTableModel) Table.getModel();
                                loadDataFromDatabase(model);
                            } else {
                                JOptionPane.showMessageDialog(frame, "Delete failed! Student ID not found.");
                            }
                        }
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                        JOptionPane.showMessageDialog(frame, "Error deleting record: " + ex.getMessage());
                    }
                }
            } else {
                JOptionPane.showMessageDialog(frame, "Please select a record to delete.");
            }
        }
    });


     
     
     
frame.setVisible(true);
}
	
	


	// Refresh all rows from the MySQL student table to the JTable
	public static void loadDataFromDatabase(DefaultTableModel model) {
	    try {
	        Connection con = getConnection();
	        Statement stmt = con.createStatement();
	        ResultSet rs = stmt.executeQuery("SELECT * FROM students");

	        model.setRowCount(0); // Clear the table first

	        while (rs.next()) {
	            String name = rs.getString("name");
	            String studentId = rs.getString("student_id");
	            Date dob = rs.getDate("dob");
	            SimpleDateFormat sdf = new SimpleDateFormat("d MMMM yyyy");
	            String dobFormatted = (dob != null) ? sdf.format(dob) : "";

	            String gender = rs.getString("gender");
	            String bloodgroup = rs.getString("blood_group");
	            String nationality = rs.getString("nationality");
	            String address = rs.getString("address");
	            String contact = rs.getString("contact");
	            String email = rs.getString("email");
	            String dept = rs.getString("department");
	            String year = rs.getString("year");
	            String cgpa = rs.getString("cgpa");
	            String imagepath = rs.getString("image_path");

	            String row[] = {name, studentId, dobFormatted, gender, bloodgroup,nationality, address, contact, email, dept, year, cgpa, imagepath};
	            model.addRow(row);
	        }

	        con.close();
	    } catch (Exception ex) {
	        ex.printStackTrace();
	        JOptionPane.showMessageDialog(null, "Error loading data: " + ex.getMessage());
	    }
	}


	
	
	
	//Retrieve from database when searching
	public static void searchAndLoadFromDatabase(DefaultTableModel model, String keyword) {
	    try {
	        Connection con = getConnection();
	        Statement stmt = con.createStatement();

	        String query = "SELECT * FROM students WHERE " +
	                "name LIKE '%" + keyword + "%' OR " +
	                "student_id LIKE '%" + keyword + "%' OR " +
	                "gender LIKE '" + keyword + "%' OR " +
	                "blood_group LIKE '" + keyword + "%' OR " +
	                "nationality LIKE '" + keyword + "%' OR " +
	                "address LIKE '%" + keyword + "%' OR " +
	                "contact LIKE '" + keyword + "%' OR " +
	                "email LIKE '" + keyword + "%' OR " +
	                "department LIKE '" + keyword + "%' OR " +
	                "year LIKE '" + keyword + "%' OR " +
	                "cgpa LIKE '" + keyword + "%'";

	        ResultSet rs = stmt.executeQuery(query);

	        model.setRowCount(0); // Clear old rows

	        while (rs.next()) {
	            String name = rs.getString("name");
	            String studentId = rs.getString("student_id");
	            Date dob = rs.getDate("dob");
	            SimpleDateFormat sdf = new SimpleDateFormat("d MMMM yyyy");
	            String dobFormatted = (dob != null) ? sdf.format(dob) : "";

	            String gender = rs.getString("gender");
	            String bloodgroup = rs.getString("blood_group");
	            String nationality = rs.getString("nationality");
	            String address = rs.getString("address");
	            String contact = rs.getString("contact");
	            String email = rs.getString("email");
	            String dept = rs.getString("department");
	            String year = rs.getString("year");
	            String cgpa = rs.getString("cgpa");
	            String imagepath = rs.getString("image_path");

	            String row[] = {
	                name, studentId, dobFormatted, gender, bloodgroup,
	                nationality, address, contact, email, dept, year, cgpa, imagepath
	            };
	            model.addRow(row);
	        }

	        con.close();
	    } catch (Exception ex) {
	        ex.printStackTrace();
	        JOptionPane.showMessageDialog(null, "Error while searching: " + ex.getMessage());
	    }
	}


}