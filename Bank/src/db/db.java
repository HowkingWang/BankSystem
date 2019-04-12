package db;
import java.sql.*;
public class db {
	//private String dbDriver="com.microsoft.jdbc.sqlserver.SQLServerDriver";

	 //private String sConnStr = "jdbc:microsoft:sqlserver://localhost:1433;databasename=jsphljyqe"; 
private String dbDriver="com.microsoft.sqlserver.jdbc.SQLServerDriver";//sql2005     
  private String sConnStr = "jdbc:sqlserver://localhost:1433;databaseName=Bank"; //sql2005 
	  public Connection connect = null;
	  public ResultSet rs=null;
	  public db() {
	    try {
	     
	      Class.forName(dbDriver).newInstance(); 
	     
	      connect = DriverManager.getConnection(sConnStr,"sa","123"); 
	     
	    }
	    catch (Exception ex) {
	      System.out.println("数据库连接失败");
	    }
	  }
	
	  
	  public ResultSet executeQuery(String sql)//执行查询数据库的SQL，如select语句，返回一个结果集resultset对象
	  {
			try{
				connect=DriverManager.getConnection(sConnStr,"sa","123");
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
			}catch(SQLException ex){
				System.err.println(ex.getMessage());
			}
			return rs;
		}
	  public void executeUpdate(String sql)//用于执行inset、update、delete语句
	    {
	    	
	    	Statement stmt=null;
	    	rs=null;
	    	try
	    	{   connect=DriverManager.getConnection(sConnStr,"sa","123");
	    		stmt=connect.createStatement();
	    		stmt.executeUpdate(sql);
	    		stmt.close();
	    		connect.close();
	    		
	    	
	    	}
	    	catch(SQLException ex)
	    	{
	    		System.err.println(ex.getMessage());
	    		
	    		
	    	}
	    
	    	
	    }
}
