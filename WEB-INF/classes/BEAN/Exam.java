package BEAN;

public class Exam {

	private int idTest;
	private int timeLimit;
	private int numberQuestion;
	private int idClass;

	
	public Exam() {}
	
	public int getID() {
		return idTest;
	}

	public int setID(int username) {
		return this.idTest = username;
	}

	public int getTime() {
		return timeLimit;
	}

	public int setTime(int password) {
		return this.timeLimit = password;
	}


	public int getSocauhoi() {
		return numberQuestion;
	}

	public int setSocauhoi(int fullname) {
		return this.numberQuestion = fullname;
	}
	public int getIDClass() {
		return idClass;
	}

	public int setIDClass(int password) {
		return this.idClass = password;
	}


}