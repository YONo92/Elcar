package com.elcar.driver;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elcar.dto.Driver;

@Service
public class DriverServiceImpl implements DriverService {

	@Autowired
	DriverDAO driverdao;

	//드라이버 신청 등록하기
	@Override
	public void driverregist(Driver driver) throws Exception {
		driverdao.insertDriver(driver);
	}
}
	
