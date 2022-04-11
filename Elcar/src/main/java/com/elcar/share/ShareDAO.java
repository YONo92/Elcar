package com.elcar.share;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Share;
import com.elcar.dto.Sinchenglist;

@Mapper
@Repository
public interface ShareDAO {
	
	public void insertShare(Share share) throws Exception;

	public List<Share> selectShareList(Map<String, Object> mapParam)throws Exception;

	public int shareListCount(@Param(value = "lat") Double lat, @Param(value = "lng") Double lng)throws Exception;

	public HashMap<String, Object> sinchengInfo(int num) throws Exception;

	public Share selectShare(int num)throws Exception;

	public void insertSincheng(Share share)throws Exception;

	public Sinchenglist sinchengOverlap (Share share) throws Exception;
}
