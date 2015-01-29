package com.soldierren;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetAllPriceWithTime
 */
@WebServlet("/GetAllPriceWithTime")
public class GetAllPriceWithTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String PATH = "/home/csv/";
	public ArrayList<String> asGson = new ArrayList<>();
    /**
     * @throws IOException 
     * @see HttpServlet#HttpServlet()
     */
    public GetAllPriceWithTime() throws IOException {
        super();
        ReadFromJsonFile();
    }
    public void ReadFromJsonFile() throws IOException{
		//运行时候，使用这一段落。
		//从文件中读取出来
		FileReader fr = new FileReader(PATH+"total.txt");
		BufferedReader br = new BufferedReader(fr); 
		
		while(br.ready()){
			asGson.add(br.readLine());
		}
		br.close();
		fr.close();
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取日期
		String strCallBack =request.getParameter("CallBack");
		String strQueryDate = request.getParameter("Date");

		int iQueryDate =Integer.parseInt(strQueryDate);
		String strGson = asGson.get(iQueryDate);
		StringBuilder strbuild = new StringBuilder();
		strbuild.append(strCallBack);
		strbuild.append("(");
		strbuild.append(strGson);
		strbuild.append(")");
		response.getWriter().write(strbuild.toString());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
