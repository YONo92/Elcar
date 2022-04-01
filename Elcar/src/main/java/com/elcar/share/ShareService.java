package com.elcar.share;



import com.elcar.dto.Share;

public interface ShareService {
	public void insertShare(Share share) throws Exception;

	public Share selectShareList() throws Exception;
}
