package CGVMAP;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.MovieVO;
import common.JDBCUtil;

public class CgvMapDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private final String insert = "insert into MovieCenter(CGVCenter,CGVCity,CGVURL) values(?,?,?)";
	private final String group = "select cgvcity from Moviecenter GROUP BY cgvcity";
	private final String selectOne = "select * from moviecenter where cgvcity like '?'";
	private final String selectCenter = "select cgvcenter from moviecenter where cgvcity like ?";
	//private final String selectAll = "select rank,title,mvscore,dir,act,mvinfo,opendate,genre,pos from movies";
	
	public void insert(CgvMapVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(insert);
			pstmt.setString(1, vo.getCGVCenter());
			pstmt.setString(2, vo.getCGVCity());
			pstmt.setString(3, vo.getCGVURL());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn);
	}
	public ArrayList<CgvMapVO> group (CgvMapVO vo) {
		ArrayList<CgvMapVO> datas = new ArrayList<CgvMapVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(group);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CgvMapVO data = new CgvMapVO();
				data.setCGVCity(rs.getString("CGVCity"));
				datas.add(data);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return datas;
	}
	
	public ArrayList<CgvMapVO> selectOne (CgvMapVO vo) {
		ArrayList<CgvMapVO> datas = new ArrayList<CgvMapVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(selectOne);
			pstmt.setString(1, vo.getCGVCity());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CgvMapVO data = new CgvMapVO();
				data.setCGVCity(rs.getString("CGVCity"));
				data.setCGVCenter(rs.getString("CGVCenter"));
				data.setCGVURL(rs.getString("CGVURL"));
				datas.add(data);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return datas;
	}
	
	public ArrayList<CgvMapVO> selectCenter (CgvMapVO vo) {
		ArrayList<CgvMapVO> datas = new ArrayList<CgvMapVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(selectCenter);
			pstmt.setString(1, vo.getCGVCity());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CgvMapVO data = new CgvMapVO();
				data.setCGVCenter(rs.getString("CGVCenter"));
				System.out.print(data);
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
