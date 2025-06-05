package com.yeo.timepod.dao.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import com.yeo.timepod.dto.admin.AdminMemberDto;


@Mapper
public interface AdminMemberDao {
	
	@Select("""
			SELECT * FROM
			adminMember
			ORDER BY id DESC
			""")
	public List<AdminMemberDto> getAdminMembers();
	
	@Select("""
			SELECT * FROM adminMember
			WHERE loginId = #{loginId} AND loginPw = #{loginPw};
			""")
	public AdminMemberDto loginMember(
		    @Param("loginId") String loginId,
		    @Param("loginPw") String loginPw
			);


}
