package com.elcar.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Board;

@Mapper
@Repository
public interface BoardDAO {

	void write(Board board)throws Exception;

	int selectBoardCount(String search_text)throws Exception;

	List<Board> selectBoardList(@Param(value="startrow")int startrow, @Param(value="search_text")String search_text)throws Exception;

	int selectBoardCount_type(int type)throws Exception;
	
	List<Board> selectBoardList_type(@Param(value="startrow")int startrow,@Param(value="type")int type)throws Exception;

	Board selectBoard(int num)throws Exception;

	void deleteBoard(int num)throws Exception;

	void modifyBoard(Board board)throws Exception;
}
