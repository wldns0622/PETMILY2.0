package com.petmily.member.controller;


import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.HospitalOperationDTO;
import com.petmily.member.domain.LoginMemberVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.member.persistence.MemberMapper;
import com.petmily.member.service.MemberService;

import lombok.Setter;

@RequestMapping("/member/*")
@Controller
public class MemberController {

	@Setter(onMethod_ = @Autowired)
	private MemberService memberService;

	@GetMapping("/login")
	public String login() {

		return "login/login";
	}

	@PostMapping("/login")
	public String login(LoginMemberVO loginMember, HttpServletRequest request) {

		HttpSession session = request.getSession();

		//String loginMember = request.getParameter("member");

		System.out.println("loginMember : " + loginMember);

		if(loginMember.getMember().equals("member")) {
			MemberVO member = memberService.memberLogin(loginMember);
			session.setAttribute("member", member);

			return "redirect:/";

		} else {
			HospitalMemberVO hospitalMember = memberService.hospitalMemberLogin(loginMember);
			//System.out.println("hospitalMember id : " + hospitalMember.getHsptId());
			//System.out.println("hospitalMember password : " + hospitalMember.getHsptPass());
			session.setAttribute("hospitalMember", hospitalMember);

			return "redirect:/";
		}

		/*if(resultMember != null) {
			session.setAttribute("member", resultMember);
			return "redirect:/";
		} else {
			return "redirect:/member/login";
		}*/
	}

	@GetMapping("/memberSignUp")
	public String memberSignUp() {

		return "/login/memberSignUp";
	}

	@PostMapping("/memberSignUp")
	public String memberSignUp(MemberVO member) {
		System.out.println("member : " + member);
		memberService.memberSignUp(member);

		return "redirect:/member/login";
	}

	@GetMapping("/hospitalSignUp")
	public String hospitalSignUp() {

		return "/login/hospitalSignUp";
	}

	@PostMapping("/hospitalSignUp")
	public String sign(HospitalMemberVO hospitalMemberVO, HospitalOperationDTO oper,MultipartFile uploadFile) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		//make folder
		File uploadPath = new File("C:\\Users\\Eun\\git\\PETMILY2.0\\petmily2.0\\src\\main\\webapp\\resources\\pdfUpload",str.replace("-", File.separator));
		if(uploadPath.exists() == false){
			uploadPath.mkdirs();
		}
		String uploadFileName = uploadFile.getOriginalFilename();
		File saveFile = new File(uploadPath,uploadFileName);

		try {
			uploadFile.transferTo(saveFile);

		} catch (Exception e) {
			System.out.println("파일첨부에러");
			e.printStackTrace();
		}
		System.out.println("uploadFile:::::"+uploadFile);
		System.out.println("uploadFileOrN:::::"+uploadFileName);
		//System.out.println("member :" + member);
		//System.out.println("oper :" + oper);
		HospitalOperationVO hospitalOperationVO = new HospitalOperationVO();

		hospitalOperationVO.setSunOper(oper.getSunOpenOper() + "~" + oper.getSunCloseOper());
		hospitalOperationVO.setMonOper(oper.getMonOpenOper() + "~" + oper.getMonCloseOper());
		hospitalOperationVO.setTueOper(oper.getTueOpenOper() + "~" + oper.getTueCloseOper());
		hospitalOperationVO.setWedOper(oper.getWedOpenOper() + "~" + oper.getWedCloseOper());
		hospitalOperationVO.setThuOper(oper.getThuOpenOper() + "~" + oper.getThuCloseOper());
		hospitalOperationVO.setFriOper(oper.getFriOpenOper() + "~" + oper.getFriCloseOper());
		hospitalOperationVO.setSatOper(oper.getSatOpenOper() + "~" + oper.getSatCloseOper());

		hospitalOperationVO.setHsptId(hospitalMemberVO.getHsptId());

		System.out.println("�씪�슂�씪 �슫�쁺�떆媛� : " + hospitalOperationVO.getSunOper());

		//String hsptAddr = hospitalMemberVO.getHsptAddr();
		hospitalMemberVO.setHsptAddr(hospitalMemberVO.getHsptAddr().substring(3));
		String realPath = uploadPath.getPath().substring(54);
		hospitalMemberVO.setHsptFilePath(realPath);
		hospitalMemberVO.setHsptFile(uploadFileName);
		memberService.hospitalMemberSignUp(hospitalMemberVO, hospitalOperationVO);


		return "redirect:/member/login";
	}



	/*
	@Override
    protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN").antMatchers("/student/**").hasAnyRole("ADMIN, TEACHER, STUDENT")
		.and().formLogin().loginPage("/member/login").loginProcessingUrl("/member/login").defaultSuccessUrl("/index").and()
		.logout().logoutUrl("/member/logout").logoutSuccessUrl("/index");
   }
   */


}
