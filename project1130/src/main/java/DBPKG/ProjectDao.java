package DBPKG;

import java.util.List;

public interface ProjectDao {
	List<TeacherVO> teacherSelect();
	List<MemberVO> memberSelect();
	List<MoneyVO> moneySelect();
}
