package com.elcar.share;



import java.util.List;

import com.elcar.dto.Share;

public interface ShareService {
	public void insertShare(Share share) throws Exception;

	public List<Share> selectShareList(double lat, double lng) throws Exception;
}
