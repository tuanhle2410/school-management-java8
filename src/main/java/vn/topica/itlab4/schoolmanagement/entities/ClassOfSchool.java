package vn.topica.itlab4.schoolmanagement.entities;

/**
 * This class represents an object ClassOfSchool.
 *
 * @author AnhLT14 (anhlt14@topica.edu.vn)
 */
public class ClassOfSchool {
	private Integer classId;
	private String classCode;
	private String classDesc;
	private Integer schoolId;

	public ClassOfSchool(Integer classId, String classCode, String classDesc, Integer schoolId){
		this.classId = classId;
		this.classCode = classCode;
		this.classDesc = classDesc;
		this.schoolId = schoolId;
	}

	public Integer getClassId() {
		return classId;
	}

	public void setClassId(Integer classId) {
		this.classId = classId;
	}

	public String getClassCode() {
		return classCode;
	}

	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

	public String getClassDesc() {
		return classDesc;
	}

	public void setClassDesc(String classDesc) {
		this.classDesc = classDesc;
	}

	public Integer getSchoolId() {
		return schoolId;
	}

	public void setSchoolId(Integer schoolId) {
		this.schoolId = schoolId;
	}

}