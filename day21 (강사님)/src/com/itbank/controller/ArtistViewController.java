package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.AlbumDTO;
import com.itbank.model.ArtistDTO;
import com.itbank.repository.AlbumDAO;
import com.itbank.repository.ArtistDAO;

public class ArtistViewController extends Controller {

	private ArtistDAO artistDAO = ArtistDAO.getInstance();
	private AlbumDAO albumDAO = AlbumDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		ArtistDTO dto = artistDAO.selectOne(id);
		List<AlbumDTO> albumList = albumDAO.selectList(id);
		
		request.setAttribute("artist", dto);
		request.setAttribute("albumList", albumList);
		
		return "artist/view";
	}
}
