package com.elcar.share;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.elcar.dto.PageInfo;
import com.elcar.dto.Share;
import com.elcar.dto.Sinchenglist;

public interface ShareService {
	Object inserSincheong = null;

	public void insertShare(Share share) throws Exception;

	public List<Share> selectShareList(Map <String, Object> mapParam) throws Exception;

	public HashMap<String, Object> sinchengInfo(int num) throws Exception;

	public void insertSincheng(Share share) throws Exception;

	public Share selectShare(int num)throws Exception;

	public Sinchenglist sinchengOverlap(Share share)throws Exception;
}
