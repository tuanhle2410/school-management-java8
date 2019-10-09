package vn.topica.itlab4.schoolmanagement.entities;

/**
 * This class represents an object Subject.
 *
 * @author AnhLT14 (anhlt14@topica.edu.vn)
 */
public class Subject {
    private String subjectName;
    private Integer subjectId;
    private String subjectDesc;
    private SubjectDomain domain;

    public Subject(Integer subjectId, String subjectName, String subjectDesc, SubjectDomain domain) {
        this.subjectName = subjectName;
        this.subjectId = subjectId;
        this.subjectDesc = subjectDesc;
        this.domain = domain;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public String getSubjectDesc() {
        return subjectDesc;
    }

    public void setSubjectDesc(String subjectDesc) {
        this.subjectDesc = subjectDesc;
    }

    public SubjectDomain getDomain() {
        return domain;
    }

    public void setDomain(SubjectDomain domain) {
        this.domain = domain;
    }
}