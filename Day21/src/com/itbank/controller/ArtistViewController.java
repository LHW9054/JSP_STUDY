package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.ArtistDTO;
import com.itbank.repository.ArtistDAO;

public class ArtistViewController extends Controller{
	
	private ArtistDAO artistDAO = ArtistDAO.getInstance();

	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		ArtistDTO dto = artistDAO.selectone(id);
		System.out.println(dto.getProfileImg());
		request.setAttribute("artist", dto);
		return "view";
	}
	
	
	
}
