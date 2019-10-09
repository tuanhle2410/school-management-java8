package vn.topica.itlab4.schoolmanagement.entities;

/**
 * This class represents an object School.
 *
 * @author AnhLT14 (anhlt14@topica.edu.vn)
 */
public class School {
	private String schoolName;
	private Integer schoolId;
	private String schoolDesc;
	public double max;
	public String classCode;

	public School(String schoolName, Integer schoolId, String schoolDesc){
		this.schoolName = schoolName;
		this.schoolId = schoolId;
		this.schoolDesc = schoolDesc;
	}

	public School(){
		max = 0;
		classCode = null;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public Integer getSchoolId() {
		return schoolId;
	}

	public void setSchoolId(Integer schoolId) {
		this.schoolId = schoolId;
	}

	public String getSchoolDesc() {
		return schoolDesc;
	}

	public void setSchoolDesc(String schoolDesc) {
		this.schoolDesc = schoolDesc;
	}

}