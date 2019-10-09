package vn.topica.itlab4.schoolmanagement.entities;

/**
 * This class represents an object Student.
 *
 * @author AnhLT14 (anhlt14@topica.edu.vn)
 */
public class Student {
    private Integer studentId;
    private String studentName;
    private String studentMobile;
    private Integer classId;

    public Student(Integer studentId, String studentName, String studentMobile, Integer classId) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.studentMobile = studentMobile;
        this.classId = classId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentMobile() {
        return studentMobile;
    }

    public void setStudentMobile(String studentMobile) {
        this.studentMobile = studentMobile;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }
}
