package project.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Question;
import DAL.AddCTDeThi;
import DAL.AddDeThi;

/**
 * Servlet implementation class TaoDe
 */
@WebServlet("/TaoDe")
public class TaoDe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TaoDe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		List<Question> lQ = (List<Question>) session.getAttribute("all_Question"); // danh sách câu hỏi đã được random
		int sum=(int) session.getAttribute("tong_Cauhoi");
		int time =(int) session.getAttribute("time_Limit");
		int idClass =(int) session.getAttribute("Mamon");
		System.out.println(lQ.get(3).getID());
		AddDeThi taode= new AddDeThi();
		if(taode.AddTest(sum, time, idClass))
		{
			// thêm chi tiết test
			for(Question q:lQ)
			{
				AddCTDeThi ctiet = new AddCTDeThi();
				ctiet.AddCTTest(q.getID());
			}
			System.out.println("Success !");
		}
		else
		{
			System.out.println("Lỗi khâu test");
		}
	}

}
