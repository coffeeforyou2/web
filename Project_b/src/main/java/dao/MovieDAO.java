package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;
import vo.MovieVO;

public class MovieDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	private final String insert = "insert into cgv_movie(mvRank,mvTitle,mvScore,mvDirectorName,mvActors,mvInfo,mvReleaseDate,mvGenre,mvPos) values(?,?,?,?,?,?,?,?,?)";
	private final String selectAll = "select mvRank,mvTitle,mvScore,mvDirectorName,mvActors,mvInfo,mvReleaseDate,mvGenre,mvPos from cgv_movie";
	private final String selectSearch = "select mvRank,mvTitle,mvScore,mvDirectorName,mvActors,mvInfo,mvReleaseDate,mvGenre,mvPos from cgv_movie where mvTitle like ?";
	private final String truncate = "truncate table cgv_movie"; // cgv_movie 테이블 비우기
	private final String selectOne = "select mvRank,mvTitle,mvScore,mvDirectorName,mvActors,mvinfo,mvReleaseDate,mvGenre,mvPos from cgv_movie where mvRank=?";
	public void insert(MovieVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(insert);
			pstmt.setInt(1, vo.getMvRank());
			pstmt.setString(2, vo.getMvTitle());
			pstmt.setString(3, vo.getMvScore());
			pstmt.setString(4, vo.getMvDir());
			pstmt.setString(5, vo.getMvAct());
			pstmt.setString(6, vo.getMvInfo());
			pstmt.setString(7, vo.getMvDate());
			pstmt.setString(8, vo.getMvGenre());
			pstmt.setString(9, vo.getMvPos());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn);
	}

	public ArrayList<MovieVO> selectAll(MovieVO vo) {
		ArrayList<MovieVO> datas = new ArrayList<MovieVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(selectAll);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MovieVO data = new MovieVO();
				data.setMvRank(rs.getInt("mvRank"));
				data.setMvTitle(rs.getString("mvTitle"));
				data.setMvScore(rs.getString("mvScore"));
				data.setMvDir(rs.getString("mvDirectorName"));
				data.setMvAct(rs.getString("mvActors"));
				data.setMvInfo(rs.getString("mvInfo"));
				data.setMvDate(rs.getString("mvReleaseDate"));
				data.setMvGenre(rs.getString("mvGenre"));
				data.setMvPos(rs.getString("mvPos"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return datas;
	}

	public ArrayList<MovieVO> selectSearch(MovieVO vo) {
		ArrayList<MovieVO> datas = new ArrayList<MovieVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(selectSearch);
			pstmt.setString(1, "%"+vo.getMvTitle()+"%");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MovieVO data = new MovieVO();
				data = new MovieVO();
				data.setMvRank(rs.getInt("mvRank"));
				data.setMvTitle(rs.getString("mvTitle"));
				data.setMvScore(rs.getString("mvScore"));
				data.setMvDir(rs.getString("mvDirectorName"));
				data.setMvAct(rs.getString("mvActors"));
				data.setMvInfo(rs.getString("mvInfo"));
				data.setMvDate(rs.getString("mvReleaseDate"));
				data.setMvGenre(rs.getString("mvGenre"));
				data.setMvPos(rs.getString("mvPos"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return datas;
	}
	
	public void truncate() {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(truncate);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn);
	}
	public MovieVO selectOne(MovieVO vo) {
		MovieVO data = null;
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(selectOne);
			pstmt.setInt(1, vo.getMvRank());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				MovieVO data1 = new MovieVO();
				data1 = new MovieVO();
				data1.setMvRank(rs.getInt("mvRank"));
				data1.setMvTitle(rs.getString("mvTitle"));
				data1.setMvScore(rs.getString("mvScore"));
				data1.setMvDir(rs.getString("mvDirectorName"));
				data1.setMvAct(rs.getString("mvActors"));
				data1.setMvInfo(rs.getString("mvInfo"));
				data1.setMvDate(rs.getString("mvReleaseDate"));
				data1.setMvGenre(rs.getString("mvGenre"));
				data1.setMvPos(rs.getString("mvPos"));
		
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return data;
	}
}
