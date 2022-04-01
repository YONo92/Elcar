package com.elcar.share;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Share;

@Mapper
@Repository
public interface ShareDAO {
	public void insertShare(Share share) throws Exception;
}
