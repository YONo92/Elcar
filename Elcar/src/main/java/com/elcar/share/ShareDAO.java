package com.elcar.share;



import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Share;

@Mapper
@Repository
public interface ShareDAO {
	public void insertShare(Share share) throws Exception;

	public List<Share> selectShareList(@Param(value="lat") double lat,@Param(value="lng") double lng)throws Exception;

	public int shareListCount(@Param(value = "lat") Double lat, @Param(value = "lng") Double lng)throws Exception;

	public HashMap<String, Object> sincheongInfo(int num) throws Exception;
}
