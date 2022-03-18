package dao;

import connect.Data;
import model.Vote;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class VoteDao {
    private final String name = Data.name;

    public void newVote(Vote vote){
        try {
            Connection connection = Data.getConnection();
            String sql ="insert into "+name+".voteProducts (productId, email, star, comment) values(?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, vote.getProductId());
            preparedStatement.setString(2, vote.getEmail());
            preparedStatement.setInt(3, vote.getStar());
            preparedStatement.setString(4, vote.getComment());

            preparedStatement.executeUpdate();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public List listComment(int productId){
        try {
            Connection connection = Data.getConnection();
            String sql ="select * from "+name+".voteProducts vp join Userr u on u.email = vp.email where vp.productId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Vote> list = new ArrayList<Vote>();
            while (resultSet.next()){
                Vote vote = new Vote();
                vote.setId(resultSet.getInt(1));
                vote.setProductId(resultSet.getInt(2));
                vote.setEmail(resultSet.getString(3));
                vote.setStar(resultSet.getInt(4));
                vote.setComment(resultSet.getString(5));
                vote.setNameCustomer(resultSet.getString(7));
                list.add(vote);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public float averageStar(int productId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select star from "+name+".voteProducts where productId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            int sum = 0, index = 0;
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                sum+=resultSet.getInt(1);
                index++;
            }
            float average = sum/index;
            return Math.round(average*10)/10;
        } catch (Exception e){
            return 0;
        }
    }
}
