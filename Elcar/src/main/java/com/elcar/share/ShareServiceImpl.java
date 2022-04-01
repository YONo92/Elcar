package com.elcar.share;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elcar.dto.Share;

@Service
public class ShareServiceImpl implements ShareService {
	
	@Autowired
	ShareDAO sharedao;
	
	@Override
	public void insertShare(Share share) throws Exception {
		sharedao.insertShare(share);
	}

	@Override
	public Share selectShareList() throws Exception {
		System.out.println("check2");
		sharedao.selectShareList();
		System.out.println("check3");
		return null;
	}

}
