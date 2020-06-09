package com.petmily.mypet.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petmily.member.domain.MemberVO;
import com.petmily.mypet.domain.PetVO;
import com.petmily.mypet.service.MypetService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/health/")
@RestController
@Log4j
@AllArgsConstructor
public class HealthRestController {
	private MypetService service;
	
	
	private String getFolder(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		
		return str.replace("-", File.separator);
	}
	
	
	@PostMapping("/uploadAjaxAction")
	public String uploadFile(MultipartFile[] fileOriginalNm, int petNo, Model model, HttpServletRequest request, RedirectAttributes rttr) {
		//폼에서 Date 값 받을 때 변환 주의!!!
		HttpSession session = request.getSession();
		MemberVO member =  (MemberVO) session.getAttribute("member");
		
		PetVO petVO = new PetVO();
		petVO.setPetNo(petNo);
		petVO.setMemId(member.getId());
		
		System.out.println("파일 업로드");
		
		String uploadFolder = "C:\\Users\\user\\git\\PETMILY2.0\\petmily2.0\\src\\main\\webapp\\resources\\uploadfiles";
		//String uploadFolder = request.getServletContext().getRealPath("/resources/uploadfiles");
		
		String cutPath = "C:\\Users\\user\\git\\PETMILY2.0\\petmily2.0\\src\\main\\webapp";
		// make folder -----------
		File uploadPath = new File(uploadFolder, getFolder());
		
		if(uploadPath.exists() == false){
			uploadPath.mkdirs();
		}
		//make yyyy/MM/dd folder
		
		for(MultipartFile multipartFile : fileOriginalNm){
			
			System.out.println("-----------------------------");
			System.out.println("Upload File Name: " + multipartFile.getOriginalFilename());
			System.out.println("Upload File Size: " + multipartFile.getSize());
			
			String uploadFileName = multipartFile.getOriginalFilename();
			
			// IE has file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			System.out.println("only file name: " + uploadFileName);
			
			System.out.println("Real Path: " + uploadFolder);
			System.out.println("Upload Path " + uploadPath);
				
			
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "-" + uploadFileName;
			File saveFile = new File(uploadPath, uploadFileName);
			System.out.println("saveFile " + saveFile);
			
			String readyPath = saveFile.getPath().substring(cutPath.length());
			String storedPath = readyPath.replace("\\", "/");
			System.out.println(readyPath.replace("\\", "/"));
			
			petVO.setFileOriginalNm(saveFile.getPath());
			petVO.setFileStoredNm(storedPath);
			
			service.insertFile(petVO);
			
			try {
				multipartFile.transferTo(saveFile);
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
			} // try-catch End
		}// for End
		
		return petVO.getFileStoredNm();
	}
}
