package com.itbank.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.ArtistDTO;
import com.itbank.repository.ArtistDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ArtistAddController extends Controller {
	
	private ArtistDAO artistDAO = ArtistDAO.getInstance();
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	private String saveDirectory = "E:\\artist_img";
	private int maxPostSize = 20 * 1024 * 1024;
	private String encoding = "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();

	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "artist/add";
	}
	
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArtistDTO dto = getDTO(request);	// <jsp:useBean> <jsp:setProperty>
		int row = artistDAO.insert(dto);
		System.out.println(row + "행이 추가되었습니다");
		return "redirect:/artist/list";
	}
	
	private ArtistDTO getDTO(HttpServletRequest req) throws IOException {
		ArtistDTO dto = new ArtistDTO();
		MultipartRequest request = new MultipartRequest(req, saveDirectory, maxPostSize, encoding, policy);
		long ln = 0;
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String country = request.getParameter("country");
		String member = request.getParameter("member");
		String debut = request.getParameter("debut");
		String type = request.getParameter("type");
		File profileImg = request.getFile("profileImg");
		
		try {
			ln = sdf.parse(debut).getTime();
		} catch (ParseException e) {}
		
		dto.setName(name);
		dto.setCompany(company);
		dto.setCountry(country);
		dto.setMember(member);
		dto.setDebut(new Date(ln));
		dto.setType(type);
		dto.setProfileImg(profileImg.getName());
		
		return dto;
	}
}













