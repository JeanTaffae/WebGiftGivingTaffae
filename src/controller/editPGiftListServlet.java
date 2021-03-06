package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PersonRecipient;
import model.PersonalGift;

/**
 * Servlet implementation class editPGiftListServlet
 */
@WebServlet("/editPGiftListServlet")
public class editPGiftListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public editPGiftListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PersonalGiftHelper pgifthelp = new PersonalGiftHelper();
		PersonRecipientHelper precipienthelp = new PersonRecipientHelper();
		String act = request.getParameter("doThisToGift");

		if (act == null) {
			getServletContext().getRequestDispatcher("/viewAllPGiftsServlet").forward(request, response);
		} else if (act.equals("Delete Selected Gift and Recipient")) {
			
			Integer tempId = Integer.parseInt(request.getParameter("id"));
			PersonalGift giftToDelete = pgifthelp.getGiftById(tempId);
			Integer tempRId = giftToDelete.getRecipient().getId();
			pgifthelp.deleteGift(giftToDelete);
			
			PersonRecipient pToDelete = precipienthelp.getRecipientById(tempRId);
			precipienthelp.deleteRecipient(pToDelete);
					
			getServletContext().getRequestDispatcher("/viewAllPGiftsServlet").forward(request, response);
		} else if (act.equals("Edit Selected Gift")) {
			Integer tempId = Integer.parseInt(request.getParameter("id"));
			PersonalGift giftToEdit = pgifthelp.getGiftById(tempId);
			request.setAttribute("pGiftToEdit", giftToEdit);
			getServletContext().getRequestDispatcher("/edit-pgift.jsp").forward(request, response);
		} else if (act.equals("Add New Gift")) {
			getServletContext().getRequestDispatcher("/addPersonalGift.html").forward(request, response);
		}

	}

}
