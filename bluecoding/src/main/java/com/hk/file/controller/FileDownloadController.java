package com.hk.file.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FileDownloadController {
	
	private static final String FILE_PATH ="C:\\bluecoding";
	
	@RequestMapping("/download")
	public void download(@RequestParam("uploadFile") String uploadFile, @RequestParam("inFolder") String inFolder, 
			 			 @RequestParam("pk") String pk, OutputStream out) throws Exception {
		// [파라메터 이름 설명]
		// uploadFile -> 업로드한 파일이름
		// inFolder -> 서비스(책 정보, 유저 정보 등등)으로 분류한 파일이름, 인위적으로 쓴걸 받음
		// pk -> 해당 번호의 사진
		
		// 폴더 지정: c:\\bluecoding\\분류한파일\\PK\\해당이미지.png
		String imgPath = FILE_PATH+"\\"+inFolder+"\\"+pk+"\\"+uploadFile;
		File image = new File(imgPath);
		int lastIndex = uploadFile.lastIndexOf("."); // 확장자를 제외시킴
		String fileName = uploadFile.substring(0, lastIndex);
		
		FileInputStream in = new FileInputStream(imgPath);
		byte[] buffer = new byte[1024 * 8]; 
		while(true) { // 한번에 8byte씩 전송함..
			int count = in.read(buffer);
			
			if(count == -1){
				break; // 다 전송하면 종료
			}
			out.write(buffer, 0, count);
		}
		
		// 다 썻으면 닫고..
		in.close();
		out.close();
	}
}
