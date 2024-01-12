package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.ArtistDTO;
import com.itbank.repository.ArtistDAO;

public class ArtistListController extends Controller {

	private ArtistDAO artistDAO = ArtistDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ArtistDTO> list = artistDAO.selectList();
		request.setAttribute("list", list);
		return "list";
	}
}
