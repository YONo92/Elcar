package com.elcar.board;

import java.util.List;

import com.elcar.dto.Board;
import com.elcar.dto.PageInfo;

public interface BoardService {

	void write(Board board)throws Exception;

	List<Board> boardList(int page, PageInfo pageInfo, String search_text)throws Exception;

}
