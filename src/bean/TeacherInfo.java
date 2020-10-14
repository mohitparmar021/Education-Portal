package bean;

public class TeacherInfo 
{
	private int teacher_id;
	private String t_name;
	private String t_email;
	private long t_mobile;
	private String qualification;
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getT_email() {
		return t_email;
	}
	public void setT_email(String t_email) {
		this.t_email = t_email;
	}
	public long getT_mobile() {
		return t_mobile;
	}
	public void setT_mobile(long t_mobile) {
		this.t_mobile = t_mobile;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	} 
}
