package CGVTicket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class CGVTicketDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private final String insert = "insert into Mv_ticket(sit,center,mv,day,time,Mirum,Buy_time) values(?,?,?,?,?,?,DEFAULT)";
	private final String sitUse = "select sit from mv_ticket where center like ?";
	private final String myticket = "select * from mv_ticket where Mirum like ? ";
	private final String delete = "delete from mv_ticket where Mirum=? and center=? and sit=? ";
	//private final String selectOne = "select * from moviecenter where cgvcity like '?'";
	//private final String selectCenter = "select cgvcenter from moviecenter where cgvcity like ?";
	//private final String selectAll = "select rank,title,mvscore,dir,act,mvinfo,opendate,genre,pos from movies";
	
	public boolean insert(CGVTicketVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(insert);
			pstmt.setString(1, vo.getSit());
			pstmt.setString(2, vo.getCenter());
			pstmt.setString(3, vo.getMv());
			pstmt.setString(4, vo.getDay());
			pstmt.setString(5, vo.getTime());
			pstmt.setString(6, vo.getMirum());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}
	
	public ArrayList<CGVTicketVO> sitUse (CGVTicketVO vo) {
		ArrayList<CGVTicketVO> datas = new ArrayList<CGVTicketVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(sitUse);
			pstmt.setString(1, vo.getCenter());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CGVTicketVO data = new CGVTicketVO();
				data.setSit(rs.getString("sit"));
				datas.add(data);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return datas;
	}
	public ArrayList<CGVTicketVO> myticket (CGVTicketVO vo) {
		ArrayList<CGVTicketVO> datas = new ArrayList<CGVTicketVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(myticket);
			pstmt.setString(1, vo.getMirum());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CGVTicketVO data = new CGVTicketVO();
				data.setSit(rs.getString("Sit"));
				data.setCenter(rs.getString("Center"));
				data.setMv(rs.getString("Mv"));
				data.setTime(rs.getString("Time"));
				data.setDay(rs.getString("Day"));
				data.setMirum(rs.getString("Mirum"));
				data.setBuyTime(rs.getString("Buy_Time"));
				System.out.println(data);
				datas.add(data);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return datas;
	}
	public boolean delete(CGVTicketVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(delete);
			pstmt.setString(1, vo.getMirum());
			pstmt.setString(2, vo.getCenter());
			pstmt.setString(3, vo.getSit());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}
}
