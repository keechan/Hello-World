package DBPKG;

import java.util.List;

public interface ProjectService {
	List<TeacherVO> teacherSelect();
	List<MemberVO> memberSelect();
	List<MoneyVO> moneySelect();
	
	void insert(ClassVO vo);
}
