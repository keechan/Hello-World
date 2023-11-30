package DBPKG;

import java.util.List;

public class ProjectServiceImpl implements ProjectService {
	ProjectDao dao = null;
	
	ProjectServiceImpl() {
		dao = new ProjectDaoImpl();	
	}
	
	@Override
	public List<TeacherVO> teacherSelect() {
		return dao.teacherSelect();
	}

	@Override
	public List<MemberVO> memberSelect() {
		System.out.println("ServiceImpl memberSelect ===========>");
		return dao.memberSelect();
	}

	@Override
	public List<MoneyVO> moneySelect() {
		return dao.moneySelect();
	}

	@Override
	public void insert(ClassVO vo) {
		dao.insert(vo);
	}
}
