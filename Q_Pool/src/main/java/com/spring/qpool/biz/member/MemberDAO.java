package com.spring.qpool.biz.member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("memberDAO")
public class MemberDAO {
	@Autowired // DI의존주입 /* @Autowired는 만능이 아니다.. 메모리에 로드가 되어있어야 가능하다. -> new JdbcTemplate();
	private JdbcTemplate jdbcTemplate; // 의존관계 -> DI(의존주입) -> @Autowired

	private static final String SELECTALL="";
	private static final String SELECTONE_LOGIN=
			"SELECT ID,ROLE  FROM MEMBER  WHERE ID=? AND PW=? ";

	private static final String INSERT="";
	private static final String UPDATE="";
	private static final String DELETE="";

	public List<MemberDTO> selectAll(MemberDTO memberDTO) {
		return null;
	}

	public MemberDTO selectOne(MemberDTO memberDTO) {
		Object[] args = {memberDTO.getMemberID(),memberDTO.getMemberPW()};
		return jdbcTemplate.queryForObject(SELECTONE_LOGIN, args, new MemberRowMapper()); // 인자를 배열로 전달 // 인자로 뭐가 들어갈지 몰라서
	} // 결과에 대한것은 매번 new되야한다. 싱글톤이 되면 안된다.

	public boolean insert(MemberDTO memberDTO) {
		return false;
	}

	public boolean update(MemberDTO memberDTO) {
		return false;
	}

	public boolean delete(MemberDTO memberDTO) {
		return false;
	}
}


//개발자의 편의를 위해 RowMapper인터페이스 사용
class MemberRowMapper implements RowMapper<MemberDTO> {

	@Override
	public MemberDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		System.out.println("[로그:박현민] MemberRowMapper 들어옴");
		MemberDTO data = new MemberDTO();
		System.out.println("[로그:박현민] memberID = "+rs.getString("ID"));
		data.setMemberID(rs.getString("ID"));
		data.setMemberRole(rs.getString("ROLE"));
		return data;
	}

}
