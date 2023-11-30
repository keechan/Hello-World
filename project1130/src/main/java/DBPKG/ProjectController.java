package DBPKG;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProjectController
 */
@WebServlet("/ProjectController")
public class ProjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String path = request.getContextPath();
		String sw = request.getParameter("sw");
		
		ProjectService service = new ProjectServiceImpl();
		
		if (sw.equals("S1")) {
			List<TeacherVO> li = service.teacherSelect();
			request.setAttribute("li", li);
			
			RequestDispatcher dispatcher 
				= request.getRequestDispatcher("S1.jsp");
			dispatcher.forward(request, response);
		} else if (sw.equals("S2")) {
			
			RequestDispatcher dispatcher
				= request.getRequestDispatcher("S2.jsp");
			dispatcher.forward(request, response);
		} else if (sw.equals("S3")) {
			System.out.println("====> S3");
			List<MemberVO> li = service.memberSelect();
			request.setAttribute("li", li);
			
			RequestDispatcher dispatcher 
				= request.getRequestDispatcher("S3.jsp");
			dispatcher.forward(request, response);
		} else if (sw.equals("S4")) {
			System.out.println("====> S4");
			List<MoneyVO> li = service.moneySelect();
			request.setAttribute("li", li);
			
			RequestDispatcher dispatcher 
				= request.getRequestDispatcher("S4.jsp");
			dispatcher.forward(request, response);
		} else if (sw.equals("INDEX")) {
			
			response.sendRedirect(path+"index.jsp");			
		} else if (sw.equals("INSERT")) {
			String REGIST_MONTH = request.getParameter("REGIST_MONTH");
			String C_NO = request.getParameter("C_NO");
			String CLASS_AREA = request.getParameter("CLASS_NAME");
			String ADDRESS = request.getParameter("ADDRESS");
			String TUITION = request.getParameter("TUITION");

			ClassVO vo = new ClassVO();
		    vo.setREGIST_MONTH(REGIST_MONTH);
			vo.setC_NO(C_NO);
		    vo.setCLASS_AREA(ADDRESS);
		    vo.setTUITION(TUITION);
		    vo.setTEACHER_CODE(CLASS_AREA);
			
			service.insert(vo);
			response.sendRedirect(path+"/index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
