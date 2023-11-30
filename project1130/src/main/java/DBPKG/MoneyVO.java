package DBPKG;

public class MoneyVO {
	int TEACHER_CODE;
	String CLASS_NAME;
	String TEACHER_NAME;
	int TUITION;

	public int getTEACHER_CODE() {
		return TEACHER_CODE;
	}
	public void setTEACHER_CODE(int tEACHER_CODE) {
		TEACHER_CODE = tEACHER_CODE;
	}
	public String getCLASS_NAME() {
		return CLASS_NAME;
	}
	public void setCLASS_NAME(String cLASS_NAME) {
		CLASS_NAME = cLASS_NAME;
	}
	public String getTEACHER_NAME() {
		return TEACHER_NAME;
	}
	public void setTEACHER_NAME(String tEACHER_NAME) {
		TEACHER_NAME = tEACHER_NAME;
	}
	public int getTUITION() {
		return TUITION;
	}
	public void setTUITION(int tUITION) {
		TUITION = tUITION;
	}
}
