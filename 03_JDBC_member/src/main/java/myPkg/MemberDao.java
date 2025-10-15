package myPkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDao {
	String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    String id = "sqlid";
    String pw = "sqlpw";
    Connection conn = null;
    PreparedStatement ps = null;
	ResultSet rs = null;
    
    public MemberDao() {
    	try {
			Class.forName(driver);
			System.out.println("드라이버 로드 성공");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
    
    public void getConnection() {
    	try {
    		
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("접속 성공");
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }
    
    public ArrayList<MemberBean> getAllMembers(){
    	ArrayList<MemberBean> lists = new ArrayList<MemberBean>();
    	getConnection();
		try {
			String sql = "select * from member order by num";
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				String register = String.valueOf(rs.getDate("register"));
				
				MemberBean mb = new MemberBean(num,id,passwd,name,register);
				
				/*
				mb.setNum(num);
				mb.setId(id);
				mb.setPasswd(passwd);
				mb.setName(name);
				mb.setRegister(register);
				*/
				
				lists.add(mb);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null)
					ps.close();
				if(rs != null)
					rs.close();
				if(conn != null)
					conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println(lists.size());
    	return lists;
    } // getAllMembers
    
    public int insertMember(String id, String passwd, String name) {
    	getConnection();
    	int cnt = -1;
		try {
			String sql = "insert into member values(m_seq.nextval,?,?,?,default)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, passwd);
			ps.setString(3, name);
			
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null)
					ps.close();
				if(conn != null)
					conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt;
    } // insertMember
    
    public MemberBean getMember(String num){
    	getConnection();
    	MemberBean mb = null;
    	try {
    		String sql = "select * from member where num=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,num);
			rs = ps.executeQuery();
			
			// 결과 한줄
			if(rs.next()) {
				int num2 = rs.getInt("num");
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				String register = String.valueOf(rs.getDate("register"));
				
				mb = new MemberBean(num2,id,passwd,name,register);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null)
					ps.close();
				if(rs != null)
					rs.close();
				if(conn != null)
					conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
    	return mb;
    } // getMember
    
    public int updateMember(String num, String id, String passwd, String name) {
    	getConnection();
    	int cnt = -1;
		try {
			String sql = "update member set id=?, passwd=?, name=? where num=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, passwd);
			ps.setString(3, name);
			ps.setInt(4, Integer.parseInt(num));
			
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null)
					ps.close();
				if(conn != null)
					conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
    	return cnt;
    } // updateMember
    
    public int deleteMember(String num) {
        getConnection();
        int cnt = -1;
         try {
        	String sql = "delete from member where num=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(num));
            
            cnt = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(ps != null)
                    ps.close();
                if(conn != null)
                    conn.close();
            } catch(SQLException e) {
                e.printStackTrace();
            }
        }
        return cnt;
    } // deleteMember 
    
}
