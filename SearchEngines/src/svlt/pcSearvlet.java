package svlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;

import searches.*;

public class pcSearvlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String service = request.getParameter("service");

		if (service.equals("sim")) {
			System.out.println("\n进入简单搜索");
			try {
				String keys = request.getParameter("keys");
				System.out.println(keys);

				simpleSearch simpleS = new simpleSearch();
				List pcList = simpleS.simpleQP(keys);
				pub.bianli(pcList);

				if (pcList == null || pcList.isEmpty()) {
					request.setAttribute("message", "抱歉，查无此物！");
					request.setAttribute("oldkey", keys);
					request.getRequestDispatcher("/simple.jsp").forward(
							request, response);
				} else {
					HttpSession session = request.getSession();
		            session.setAttribute("pcList", pcList);
		            request.setAttribute("currentPage", "1");
					request.getRequestDispatcher("/score.jsp").forward(request,
							response);
				}
			} catch (ParseException | InvalidTokenOffsetsException e) {
				e.printStackTrace();
			}
		} else if (service.equals("com")) {
			System.out.println("\n进入复杂搜索");
			try {
				String[] brand = request.getParameterValues("brand");
				String[] size = request.getParameterValues("size");
				String[] CPU = request.getParameterValues("CPU");
				String[] type = request.getParameterValues("type");
				String[] xiancun = request.getParameterValues("xiancun");
				String minprice = request.getParameter("minprice");
				String maxprice = request.getParameter("maxprice");

				complexSearch complexS = new complexSearch();
				List pcList = complexS.complexQP(brand, size, CPU, type,
						xiancun, minprice, maxprice);
				pub.bianli(pcList);

				if (pcList == null || pcList.isEmpty()) {
					request.setAttribute("message", "抱歉，查无此物！");
					request.getRequestDispatcher("/complex.jsp").forward(
							request, response);
				} else {
					HttpSession session = request.getSession();
		            session.setAttribute("pcList", pcList);
		            request.setAttribute("currentPage", "1");
					request.getRequestDispatcher("/score.jsp").forward(request,
							response);
				}
			} catch (ParseException | InvalidTokenOffsetsException e) {
				e.printStackTrace();
			}
		}else if(service.equals("fenye")){
			int currentPage = Integer.parseInt(request.getParameter("page"));
			request.setAttribute("currentPage", currentPage);
			request.getRequestDispatcher("/score.jsp").forward(request,
					response);
			
		}

	}

}
