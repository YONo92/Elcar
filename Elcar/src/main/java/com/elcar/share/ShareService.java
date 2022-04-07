package com.elcar.share;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.elcar.dto.PageInfo;
import com.elcar.dto.Share;

public interface ShareService {
	Object inserSincheong = null;

	public void insertShare(Share share) throws Exception;

	public List<Share> selectShareList(Map <String, Object> mapParam) throws Exception;

	public HashMap<String, Object> sincheongInfo(int num) throws Exception;

	public void insertSincheong(String id) throws Exception;

	public Share selectShare(int num)throws Exception;
}
