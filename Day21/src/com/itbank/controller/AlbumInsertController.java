package com.itbank.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.AlbumDTO;
import com.itbank.repository.AlbumDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AlbumInsertController extends Controller{
	
	private AlbumDAO albumdao = AlbumDAO.getInstance();
	
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	private String saveDirectory = "E:\\artist_img";
	private int maxPostSize = 20 * 1024 * 1024;
	private String encoding = "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "insert";
	}
	
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AlbumDTO dto = getDTO(request);
		int row = albumdao.insert(dto);
		return "redirect:/artist/list";
	}
	

	
	private AlbumDTO getDTO(HttpServletRequest req) throws IOException{
		Long ln = 0L;
		MultipartRequest request = new MultipartRequest(req, saveDirectory, maxPostSize, encoding, policy);
		
		AlbumDTO dto = new AlbumDTO();
		
		int artist_id = Integer.parseInt(request.getParameter("artist_id"));
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String rdate = request.getParameter("rDate");
		int playTime = Integer.parseInt(request.getParameter("playTime"));
		String coverImg = request.getParameter("coverImg");
		
		try {
			ln = sdf.parse(request.getParameter("rdate")).getTime();
		} catch (Exception e) {
			e.printStackTrace();
		}
		Date date = new Date(ln);

		dto.setArtist_id(artist_id);
		dto.setName(name);
		dto.setType(type);
		dto.setrDate(new Date(ln));
		dto.setPlayTime(playTime);
		dto.setCoverImg(coverImg);
		
		return dto;
	}
}