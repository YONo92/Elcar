package com.elcar.driver;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Driver;

@Mapper
@Repository
public interface DriverDAO {

	// 드라이버 신청 등록하기
	public void insertDriver(Driver driver) throws Exception;
}
