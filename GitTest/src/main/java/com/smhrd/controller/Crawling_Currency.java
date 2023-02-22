package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


@WebServlet("/Crawling_Currency")
public class Crawling_Currency extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "https://finance.naver.com/marketindex/?tabSel=exchange#tab_section";

        
            Connection conn = Jsoup.connect(url)
                    .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36")
                    .referrer("http://www.google.com")
                    .timeout(30000)
                    .header("Content-Language", "en-US")
                    .ignoreHttpErrors(true)
                    .followRedirects(true)
                    .maxBodySize(0)
                    .method(Connection.Method.GET);
            Document doc = conn.get();

            Element selectTo = doc.select("select#select_to").first();
            Elements options = selectTo.select("option");

            // 환율 정보를 저장할 Map 객체
            HashMap<String, Double> currency = new HashMap<>();

            for (Element option : options) {
                String currencyName = option.text().substring(option.text().length() - 3);
                Double exchangeRate = Double.parseDouble(option.attr("value"));
                currency.put(currencyName, exchangeRate);
            }

            
            double usd =  currency.get("USD");
            double jpy =  currency.get("JPY");
            double eur =  currency.get("EUR");
            double gbp =  currency.get("GBP");
            

//				PrintWriter out = response.getWriter();
//				// 이거도 방법임
//				out.println(usd);
//				out.println(jpy);
//				out.println(eur);
//				out.println(gbp);
	        
			HttpSession session = request.getSession();
				
	        session.setAttribute("usd", usd);
	        session.setAttribute("jpy", jpy);
	        session.setAttribute("eur", eur);
	        session.setAttribute("gbp", gbp);
	        
	}

}
