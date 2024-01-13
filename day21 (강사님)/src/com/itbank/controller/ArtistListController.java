package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.ArtistDAO;

public class ArtistListController extends Controller {
	
	private ArtistDAO artistDAO = ArtistDAO.getInstance();

	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("list", artistDAO.selectList());
		return "artist/list";
	}
}
