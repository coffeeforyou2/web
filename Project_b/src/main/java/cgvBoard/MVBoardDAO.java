package cgvBoard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class MVBoardDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private final String insert = "insert into mvboard(mvno,mvautor,mvtitle,mvcontent,mvtype,mvfile,mvtime) values(no_seq.nextval,?,?,?,?,?,DEFAULT)";
	private final String seqOut = "SELECT no_seq.NEXTVAL FROM DUAL; ";
	private final String allOut = "select * from mvboard";
	private final String oneOut = "select * from mvboard where mvno=?";
	//private final String sitUse = "select sit from mv_ticket where center like ?";
	//private final String myticket = "select * from mv_ticket where Mirum like ? ";
	//private final String delete = "delete from mv_ticket where Mirum=? and center=? and sit=? ";
	
	public boolean insert(MVBoardVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(insert);
			pstmt.setString(1, vo.getAutor());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContent());
			pstmt.setString(4, vo.getType());
			pstmt.setString(5, vo.getFile());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}
	
	public long seqOut (MVBoardVO vo) {
		conn = JDBCUtil.connect();
		long seq = 0;
		try {
			pstmt = conn.prepareStatement(seqOut);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				seq = (rs.getLong("no_seq"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return seq;
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return seq;
	}
	
	public ArrayList<MVBoardVO> allOut (MVBoardVO vo) {
		ArrayList<MVBoardVO> datas = new ArrayList<MVBoardVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(allOut);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MVBoardVO data = new MVBoardVO();
				data.setNo(rs.getLong("mvno"));
				data.setAutor(rs.getString("mvautor"));
				data.setTitle(rs.getString("mvtitle"));
				data.setContent(rs.getString("mvcontent"));
				data.setDate(rs.getString("mvtime"));
				data.setType(rs.getString("mvtype"));
				data.setFile(rs.getString("mvfile"));
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
	public ArrayList<MVBoardVO> oneOut (MVBoardVO vo) {
		ArrayList<MVBoardVO> datas = new ArrayList<MVBoardVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(oneOut);
			pstmt.setLong(1, vo.getNo());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MVBoardVO data = new MVBoardVO();
				data.setAutor(rs.getString("mvautor"));
				data.setTitle(rs.getString("mvtitle"));
				data.setContent(rs.getString("mvcontent"));
				data.setDate(rs.getString("mvtime"));
				data.setType(rs.getString("mvtype"));
				data.setFile(rs.getString("mvfile"));
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
}
