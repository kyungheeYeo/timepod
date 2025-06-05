package com.yeo.timepod.dto.admin;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminMemberDto {
	private int id;
	private String name;
	private String loginId;
	private String loginPw;
	private int authLevel;

}
