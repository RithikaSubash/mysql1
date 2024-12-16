package jdbcgit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class Jdbcgits {
public static void main(String[] args) {
        
        String url = "jdbc:mysql://localhost:3306/jdbc_example"; 
        String username = "root"; 
        String password = "Rithu2620!"; 

      
        int[] empCodes = {101, 102, 103, 104, 105};
        String[] empNames = {"Jenny", "Jacky", "Joe", "John", "Shameer"};
        int[] empAges = {25, 30, 20, 40, 25};
        double[] empSalaries = {10000, 20000, 40000, 80000, 90000};

     
        String insertQuery = "INSERT INTO employees (empcod, empnam, empage, esalar) VALUES (?, ?, ?, ?)";

        try (
            
            Connection connection = DriverManager.getConnection(url, username, password);
            
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)
        ) {
           
            for (int i = 0; i < empCodes.length; i++) {
                preparedStatement.setInt(1, empCodes[i]);
                preparedStatement.setString(2, empNames[i]);
                preparedStatement.setInt(3, empAges[i]);
                preparedStatement.setDouble(4, empSalaries[i]);

               
                preparedStatement.executeUpdate();
            }

            System.out.println("Employee data inserted successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
