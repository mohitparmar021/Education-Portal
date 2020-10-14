package bean;

public class TopicContentInfo 
{
	
	private int topic_id;
	private String topic_name;
	private String topic_content;
	private int course_id;
	private int id;
	private String src;
	
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public int getTopic_id() {
		return topic_id;
	}
	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}
	public String getTopic_name() {
		return topic_name;
	}
	public void setTopic_name(String topic_name) {
		this.topic_name = topic_name;
	}
	public String getTopic_content() {
		return topic_content;
	}
	public void setTopic_content(String topic_content) {
		this.topic_content = topic_content;
	}
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
