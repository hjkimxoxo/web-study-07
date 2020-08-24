package web_study_07.Bean;

public class MemberBean {
	private String name;
	private String userid;

	public MemberBean() {

	}


	public MemberBean(String name, String userid) {
		this.name = name;
		this.userid = userid;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return String.format("MemberBean [name=%s, userid=%s]", name, userid);
	}

}
