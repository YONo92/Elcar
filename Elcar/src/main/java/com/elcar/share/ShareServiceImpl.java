package com.elcar.share;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elcar.dto.Share;
import com.elcar.dto.Sinchenglist;

@Service
public class ShareServiceImpl implements ShareService {
	
	@Autowired
	ShareDAO sharedao;
	
	@Override
	public void insertShare(Share share) throws Exception {
		sharedao.insertShare(share);
	}

	@Override
	public List<Share> selectShareList(Map <String, Object> mapParam) throws Exception {
		return sharedao.selectShareList(mapParam);
	}

	@Override
	public HashMap<String, Object> sinchengInfo(int num) throws Exception {
		
		return sharedao.sinchengInfo(num);
	}

	@Override
	public void insertSincheng(Share share) throws Exception {
		sharedao.insertSincheng(share);
		
	}

	@Override
	public Share selectShare(int num) throws Exception {
		return sharedao.selectShare(num);
	}

	@Override
	public Sinchenglist sinchengOverlap(Share share) throws Exception {
		
		return sharedao.sinchengOverlap(share);
	}
}
