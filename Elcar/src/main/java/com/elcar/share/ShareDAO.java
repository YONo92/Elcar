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
	
	public List<Share> talgelist(String id)throws Exception;

	public List<Share> taewoolist(String id)throws Exception;

	public List<Share> talgestatus(String id)throws Exception;

	public List<Share> taewoostatus(String id)throws Exception;

	public void talge_delete(int num);

	public void insertHistory(@Param(value = "sincheng_id") String sincheng_id, @Param(value = "surak_id") String surak_id);

	public void insertHistory2(@Param(value = "sincheng_id") String sincheng_id, @Param(value = "surak_id") String surak_id);

	public void modifyShare(@Param(value = "surak_id") String surak_id,@Param(value = "talge_num") int talge_num);

	public void accept_delete(int talge_num);

	public Sinchenglist sinchengOverlap (Share share) throws Exception;

	public void modifyShareInfo(Share share) throws Exception;

	public void deleteShareInfo(int num)throws Exception;
}
