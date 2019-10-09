package vn.topica.itlab4.schoolmanagement;

import vn.topica.itlab4.schoolmanagement.entities.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

/**
 * This class contains lists of data loaded from Database
 *
 * @author AnhLT14 (anhlt14@topica.edu.vn)
 */
public class Database {
    List<School> listSchool = new ArrayList<School>();
    List<ClassOfSchool> listClass = new ArrayList<ClassOfSchool>();
    List<Student> listStudent = new ArrayList<Student>();
    List<Subject> listSubject = new ArrayList<Subject>();
    List<StudentSubjectRegister> listStudentSubjectRegister = new ArrayList<StudentSubjectRegister>();
    List<SubjectDomain> listSubjectDomain = new ArrayList<SubjectDomain>(EnumSet.allOf(SubjectDomain.class));

    /**
     * This method converts a string into a SubjectDomain
     *
     * @param s the string input
     * @return The SubjectDomain that match the string input
     */
    public SubjectDomain stringToSubjectDomain(String s) {
        SubjectDomain sd = null;
        switch (s) {
        case "MATHEMATICS":
            sd = SubjectDomain.MATHEMATICS;
            break;
        case "LITERATURE":
            sd = SubjectDomain.LITERATURE;
            break;
        case "PHYSICS":
            sd = SubjectDomain.PHYSICS;
            break;
        case "CHEMISTRY":
            sd = SubjectDomain.CHEMISTRY;
            break;
        case "BIOLOGY":
            sd = SubjectDomain.BIOLOGY;
            break;
        case "HISTORY":
            sd = SubjectDomain.HISTORY;
            break;
        case "GEOGRAPHY":
            sd = SubjectDomain.GEOGRAPHY;
            break;
        default:
            throw new IllegalStateException("Unexpected value: " + s);
        }
        return sd;
    }

    /**
     * This method loads all data from Database to the lists of Entities to solve the exercises
     */
    public void loadFullDb() {
        Connection con = null;
        try {
            //connect to Database via JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_management", "root", "");
            Statement stmt = con.createStatement();
            
            //load data to listSchool
            ResultSet rsListSchool = stmt.executeQuery("SELECT * FROM school");
            while(rsListSchool.next()){
                listSchool.add(new School(rsListSchool.getString("name"), rsListSchool.getInt("id"), rsListSchool.getString("desc")));
            }

            //load data to listClass
            ResultSet rsListClass = stmt.executeQuery("SELECT * FROM class_of_school");
            while(rsListClass.next()){
                listClass.add(new ClassOfSchool(rsListClass.getInt("id"),rsListClass.getString("code"),rsListClass.getString("desc"),rsListClass.getInt("school_id")));
            }

            //load data to listStudent
            ResultSet rsListStudent = stmt.executeQuery("SELECT * FROM student");
            while(rsListStudent.next()){
                listStudent.add(new Student(rsListStudent.getInt("id"),rsListStudent.getString("name"),rsListStudent.getString("mobile"),rsListStudent.getInt("class_id")));
            }

            //load data to listSubject
            ResultSet rsListSubject = stmt.executeQuery("SELECT * FROM subject");
            while(rsListSubject.next()){
                listSubject.add(new Subject(rsListSubject.getInt("id"),rsListSubject.getString("name"),rsListSubject.getString("desc"),stringToSubjectDomain(rsListSubject.getString("domain"))));
            }

            //load data to listStudentSubjectRegister
            ResultSet rsListStudentSubjectRegister = stmt.executeQuery("SELECT * FROM student_subject_register");
            while(rsListStudentSubjectRegister.next()){
                listStudentSubjectRegister.add(new StudentSubjectRegister(rsListStudentSubjectRegister.getInt("student_id"),rsListStudentSubjectRegister.getInt("subject_id"),rsListStudentSubjectRegister.getDouble("score")));
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally{
            if(con != null){
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}