package com.itbank.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.AlbumDTO;
import com.itbank.repository.AlbumDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AlbumAddController extends Controller {

	private AlbumDAO albumDAO = AlbumDAO.getInstance();
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	private String saveDirectory = "E:\\album_img";
	private int maxPostSize = 20 * 1024 * 1024;
	private String encoding = "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "album/add";
	}
	
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AlbumDTO dto = getDTO(request);
		int row = albumDAO.insert(dto);
		System.out.println(row + "행이 추가되었습니다");
		return "redirect:/artist/view?id=" + dto.getArtist_id();
	}
	
	private AlbumDTO getDTO(HttpServletRequest req) throws IOException {
		AlbumDTO dto = new AlbumDTO();
		long ln = 0;
		MultipartRequest request = new MultipartRequest(req, saveDirectory, maxPostSize, encoding, policy);
		String artist_id = request.getParameter("artist_id"); 
		String name = request.getParameter("name"); 
		String type = request.getParameter("type"); 
		String rDate = request.getParameter("rDate"); 
		String playTime = request.getParameter("playTime"); 
		File coverImg = request.getFile("coverImg");
		
		try {
			ln = sdf.parse(rDate).getTime();
		} catch (ParseException e) {}
		
		String[] a1 = playTime.split(":");				// 1:40:32 => { "1", "40", "32" }
		int time = 0;
		for(int i = 0; i < a1.length; i++) {		
			int num = Integer.parseInt(a1[i]);			// 1 * 60 * 60, 40 * 60, 32
			for(int j = a1.length - i; j != 1; j--) {
				num *= 60;
			}
			time += num;
		}
		
		dto.setArtist_id(Integer.parseInt(artist_id));
		dto.setName(name);
		dto.setType(type);
		dto.setrDate(new Date(ln));
		dto.setPlayTime(time);
		dto.setCoverImg(coverImg.getName());
				
		return dto;
	}
}
















