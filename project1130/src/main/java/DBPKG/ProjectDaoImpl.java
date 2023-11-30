package DBPKG;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProjectDaoImpl implements ProjectDao {
	//DBConnection DBConn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	@Override
	public List<TeacherVO> teacherSelect() {
		List<TeacherVO> m = new ArrayList<>();
		try {
			Connection conn = DBConnection.getConnection();
			String SQL = "SELECT  * FROM TBL_TEACHER_202201 ORDER BY TEACHER_CODE ";
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			TeacherVO vo = null;
			while(rs.next()) {
				vo = new TeacherVO();
				vo.setTEACHER_CODE(rs.getInt("TEACHER_CODE"));				
				vo.setTEACHER_NAME(rs.getString("TEACHER_NAME"));
				vo.setCLASS_NAME(rs.getString("CLASS_NAME"));
				vo.setCLASS_PRICE(rs.getInt("CLASS_PRICE"));
				vo.setTEACHER_REGIST_DATE(rs.getInt("TEACHER_REGIST_DATE"));				
				
				m.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	@Override
	public List<MemberVO> memberSelect() {
		System.out.println("DaoImpl memberSelect ==========> 1");
		List<MemberVO> m = new ArrayList<>();
		try {
			Connection conn = DBConnection.getConnection();
			String SQL = "SELECT C.REGIST_MONTH REGIST_MONTH "
					   + "      ,M.C_NO C_NO "
					   + "      ,M.C_NAME C_NAME "
					   + "      ,T.CLASS_NAME CLASS_NAME "
					   + "      ,C.CLASS_AREA CLASS_AREA "
					   + "      ,C.TUITION TUITION "
					   + "      ,M.GRADE GRADE "
					   + "  FROM TBL_CLASS_202201 C "
					   + "  JOIN TBL_MEMBER_202201 M "
					   + "    ON (C.C_NO = M.C_NO) "
					   + "  JOIN TBL_TEACHER_202201 T "
					   + "   ON (C.TEACHER_CODE = T.TEACHER_CODE) ";
			pstmt = conn.prepareStatement(SQL);
			System.out.println(SQL);
			rs = pstmt.executeQuery();
			MemberVO vo = null;
			System.out.println("DaoImpl memberSelect ==========> 2");
			while(rs.next()) {
				vo = new MemberVO();
				vo.setREGIST_MONTH(rs.getInt("REGIST_MONTH"));
				//System.out.println("====> " + rs.getInt("REGIST_MONTH"));
				vo.setC_NO(rs.getInt("C_NO"));
			    vo.setC_NAME(rs.getString("C_NAME"));
			    vo.setCLASS_NAME(rs.getString("CLASS_NAME"));
			    vo.setCLASS_AREA(rs.getString("CLASS_AREA"));
			    vo.setTUITION(rs.getInt("TUITION")); 
			    vo.setGRADE(rs.getString("GRADE"));
				m.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	@Override
	public List<MoneyVO> moneySelect() {
		List<MoneyVO> m = new ArrayList<>();
		try {
			Connection conn = DBConnection.getConnection();
			String SQL = "SELECT T.TEACHER_CODE TEACHER_CODE "
					 + "        ,T.CLASS_NAME CLASS_NAME "
					 + "        ,T.TEACHER_NAME TEACHER_NAME "
					 + "        ,SUM(C.TUITION) TUITION "
					 + "  FROM TBL_CLASS_202201 C "
					 + "  JOIN TBL_MEMBER_202201 M  "
					 + "    ON (C.C_NO = M.C_NO) "
					 + "  JOIN TBL_TEACHER_202201 T "
					 + "   ON (C.TEACHER_CODE = T.TEACHER_CODE) "
					 + "GROUP BY T.TEACHER_CODE, T.CLASS_NAME, T.TEACHER_NAME "
					 + "ORDER BY T.TEACHER_CODE ";
			pstmt = conn.prepareStatement(SQL);
			System.out.println(SQL);
			rs = pstmt.executeQuery();
			MoneyVO vo = null;
			System.out.println("DaoImpl moneySelect ==========> 2");
			while(rs.next()) {
				vo = new MoneyVO();
				vo.setTEACHER_CODE(rs.getInt("TEACHER_CODE"));
				vo.setCLASS_NAME(rs.getString("CLASS_NAME"));
			    vo.setTEACHER_NAME(rs.getString("TEACHER_NAME"));
			    vo.setCLASS_NAME(rs.getString("CLASS_NAME"));
			    vo.setTEACHER_NAME(rs.getString("TEACHER_NAME"));
			    vo.setTUITION(rs.getInt("TUITION")); 
				m.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

}
