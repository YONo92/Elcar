package com.elcar.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 * @Controller public class mypageController {
 * 
 * @Autowired mypageService mypageService;
 * 
 * @Autowired HttpSession session;
 * 
 * 
 * //마이페이지_회원정보 수정(Get)
 * 
 * @GetMapping(value = "membermodify") public ModelAndView
 * userInfo(@ModelAttribute Member member) { ModelAndView mav = new
 * ModelAndView("membermodify"); String member_id = (String)
 * session.getAttribute("member_id"); try { member =
 * mypageService.mypageInfo(member_id); member.setMember_id(member_id); // 유저객체
 * 아이디 mav.addObject("member", member); } catch (Exception e) {
 * e.printStackTrace(); } return mav; }
 * 
 * // 마이페이지_회원정보 수정(Post)
 * 
 * @PostMapping(value = "membermodify") public String
 * memberModify(@ModelAttribute Member member, Model model) { String member_id =
 * (String) session.getAttribute("member_id"); try {
 * member.setMember_id(member_id); // 유저객체 아이디
 * mypageService.memberModify(member); member =
 * mypageService.mypageInfo(member_id); model.addAttribute("member", member);
 * return "redirect:/mypageinfo"; } catch (Exception e) { e.printStackTrace();
 * return "membermodify"; } }
 * 
 * // 마이페이지_비밀번호 수정
 * 
 * @PostMapping(value = "mypageinfo") public ModelAndView
 * userAddressModify(@ModelAttribute member member) { ModelAndView mav = new
 * ModelAndView("mypageinfo"); String member_id = (String)
 * session.getAttribute("member_id"); try { member.setMember_id(member_id); //
 * 유저객체 아이디 mypageService.memberPasswordModify(member); member =
 * mypageService.mypageInfo(member_id); mav.addObject("member", member);
 * mav.setViewName("redirect:/mypageinfo"); //redirect 하면 수정하고 값을 가지고 옴 } catch
 * (Exception e) { e.printStackTrace(); mav.setViewName("err"); } return mav; }
 * 
 * //회원 탈퇴
 * 
 * @PostMapping }
 */