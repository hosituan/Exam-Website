package BEAN;

public class Question {
	private int idQuestions;
	private String questName;
	private String a;
	private String b;
	private String c;
	private String d;
	private String result;
	private String type;
	private int idClass;
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type=type;
	}
	public int getIDclass() {
		return idClass;
	}

	public void setIDclass(int idClass) {
		this.idClass=idClass;
	}
		
	public Question() {}
	
	public String getQuestName() {
		return questName;
	}

	public void setQuestname(String questName) {
		this.questName = questName;
	}

	public int getID() {
		return idQuestions;
	}

	public void setID(int idQuestions) {
		this.idQuestions = idQuestions;
	}
	
	public String getA() {
		return a;
	}

	public void setA(String password) {
		this.a = password;
	}


	public String getB() {
		return b;
	}

	public void setB(String password) {
		this.b = password;
	}
	public String getC() {
		return c;
	}

	public void setC(String password) {
		this.c = password;
	}
	public String getD() {
		return d;
	}

	public void setD(String password) {
		this.d = password;
	}
}
