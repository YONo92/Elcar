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
	public List<Share> talgelist(String id) throws Exception {
		return sharedao.talgelist(id);
	}

	@Override
	public List<Share> talgestatus(String id) throws Exception {
		return sharedao.talgestatus(id);
	}

	@Override
	public void talge_delete(int num){
		sharedao.talge_delete(num);		
	}

	@Override
	public void insertHistory(String sincheng_id, String surak_id) {
		sharedao.insertHistory(sincheng_id,surak_id);
	}

	@Override
	public void insertHistory2(String sincheng_id, String surak_id) {
		sharedao.insertHistory2(sincheng_id,surak_id);
	}

	@Override
	public void modifyShare(String surak_id, int talge_num) {
		sharedao.modifyShare(surak_id,talge_num);
	}

	@Override
	public void accept_delete(int talge_num) {
		sharedao.accept_delete(talge_num);
	}

	@Override
	public List<Share> taewoolist(String id) throws Exception {
		return sharedao.taewoolist(id);
	}

	@Override
	public List<Share> taewoostatus(String id) throws Exception {
		return sharedao.taewoostatus(id);
	}
	
	@Override
	public Sinchenglist sinchengOverlap(Share share) throws Exception {	
		return sharedao.sinchengOverlap(share);
	}

	@Override
	public void modifyShareInfo(int num) throws Exception {
		sharedao.modifyShareInfo(num);
		
	}
}
