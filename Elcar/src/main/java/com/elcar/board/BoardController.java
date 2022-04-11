package com.elcar.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.elcar.dto.Board;
import com.elcar.dto.PageInfo;

@Controller
public class BoardController {

	@Autowired
	BoardService boardserv;
	
	@Autowired
	HttpSession session;
	
	@GetMapping(value="boardform")
	public String boardform(Model model) {
		String id = (String) session.getAttribute("id");
		if(session.getAttribute("id")!=null) {
			model.addAttribute(id);
			return "about/boardform";
		}else {
			return "main/loginform";
		}
	}
	
	@GetMapping(value = "/boardlist")
	public String boardlist(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			Model model, @RequestParam(value = "search_text", defaultValue = "") String search_text) {
		PageInfo pageInfo = new PageInfo();
		try {
			System.out.println("1");
			List<Board> boardlist = boardserv.boardList(page, pageInfo, search_text);
			System.out.println("boardlist:"+boardlist);
			model.addAttribute("search_text", search_text);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("boardlist", boardlist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "about/boardlist";
	}
	
	@PostMapping(value="write")
	public String write(@ModelAttribute Board board) {
		try {
			boardserv.write(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "about/boardlist";
		
	}
}
