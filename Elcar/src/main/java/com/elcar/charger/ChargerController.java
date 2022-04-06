package com.elcar.charger;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.XML;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ChargerController {

	public static int INDENT_FACTOR = 4;
	

	@ResponseBody
	@GetMapping("/allcharger")
	public String AllCharger(HttpServletRequest request , HttpServletResponse response) throws IOException {
		try {
			StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552584/EvCharger/getChargerInfo"); /*URL*/
		        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=j8lHmFnVimJX6m3ZfHziybKMYh7PpfKXxOhy460OU0cJT1YQhawD24zzDZERajQRHO0C15y85oNN0LbPs8eZWg=="); /*Service Key*/
		        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
		        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /*한 페이지 결과 수 (최소 10, 최대 9999)*/
		        urlBuilder.append("&" + URLEncoder.encode("period","UTF-8") + "=" + URLEncoder.encode("5", "UTF-8")); /*상태갱신 조회 범위(분) (기본값 5, 최소 1, 최대 10)*/
		        urlBuilder.append("&" + URLEncoder.encode("zcode","UTF-8") + "=" + URLEncoder.encode("11", "UTF-8")); /*시도 코드 (행정구역코드 앞 2자리)*/
		        URL url = new URL(urlBuilder.toString());
		        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		        conn.setRequestMethod("GET");
		        conn.setRequestProperty("Content-type", "application/xml");
		        System.out.println("Response code: " + conn.getResponseCode());
		        BufferedReader rd;
		        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
		            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		        } else {
		            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		        }
		        StringBuilder sb = new StringBuilder();
		        String line;
		        while ((line = rd.readLine()) != null) {
		            sb.append(line);
		        }
		        rd.close();
		        conn.disconnect();
		        JSONObject xmlJSONObj = XML.toJSONObject(sb.toString());
		        String jsonPrettyPrintString = xmlJSONObj.toString(INDENT_FACTOR);
		        System.out.println(sb);
//				System.out.println(jsonPrettyPrintString.trim());
		        // JSONObject json = new JSONObject();
				/*
				 * System.out.println("sb = "+ sb); System.out.println("xmlJSONObj = "+
				 * xmlJSONObj);
				 * System.out.println("jsonPrettyPrintString = "+jsonPrettyPrintString);
				 */
		        // json.put("data",xmlJSONObj);
		        //  json.put("data", jsonPrettyPrintString);
		        // map.put(jsonPrettyPrintString, json);
				return jsonPrettyPrintString;
		} catch (Exception e) {
			e.printStackTrace();
		}
	        return null;
	}
	
	
	@ResponseBody
	@GetMapping("/jebal")
	public String jebar() throws IOException{
        StringBuilder urlBuilder = new StringBuilder("http://openapi.kepco.co.kr/service/EvInfoServiceV2/getEvSearchList"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=j8lHmFnVimJX6m3ZfHziybKMYh7PpfKXxOhy460OU0cJT1YQhawD24zzDZERajQRHO0C15y85oNN0LbPs8eZWg=="); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("addr","UTF-8") + "=" + URLEncoder.encode("전라남도 나주시 전력로 55", "UTF-8")); /*검색대상 충전소주소*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
		return null;
    
	}
}


