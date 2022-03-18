package controller.user;

import dao.OrderItemDao;
import dao.VoteDao;
import model.Vote;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/vote")
public class UserVoteProductController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();

        Vote vote = new Vote();
        vote.setEmail(session.getAttribute("email").toString());
        vote.setStar(Integer.parseInt(req.getParameter("rating").toString()));
        vote.setProductId(Integer.parseInt(req.getParameter("productId").toString()));
        vote.setComment(req.getParameter("comment").toString());

        VoteDao voteDao = new VoteDao();
        voteDao.newVote(vote);

        int orderItemId = Integer.parseInt(req.getParameter("orderItemId").toString());
        OrderItemDao orderItemDao = new OrderItemDao();
//        chuyển status orderItem sang 3: đã đánh giá
        orderItemDao.updateStatusOrder(orderItemId, 3);

        resp.sendRedirect("user-order-delivered");
    }
}
