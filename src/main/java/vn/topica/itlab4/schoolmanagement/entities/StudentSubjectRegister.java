package vn.topica.itlab4.schoolmanagement.entities;

/**
 * This class represents an object StudentSubjectRegister.
 *
 * @author AnhLT14 (anhlt14@topica.edu.vn)
 */
public class StudentSubjectRegister {
    private Integer studentId;
    private Integer subjectId;
    private Double score;

    public StudentSubjectRegister(Integer studentId, Integer subjectId, Double score) {
        this.studentId = studentId;
        this.subjectId = subjectId;
        this.score = score;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "StudentSubjectRegister[StudentID=" + studentId + ";SubjectID=" + subjectId + ";Score=" + score + "]";
    }
}