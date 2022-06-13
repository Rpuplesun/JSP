package com.koreait.json;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class JSONTest {

	public static void main(String[] args) {
		/*
		 *  {
		 *  	"in" : { "gender" : "남자", "name" : "김자바", "age" : "10" }
		 *  }
		 */
		
		JSONObject in = new JSONObject();
		in.put("gender", "남자");
		in.put("name", "김자바");
		in.put("age", "10" );
		
		JSONObject out = new JSONObject();
		out.put("in", in);
		System.out.println(out.toJSONString());
		System.out.println("----------------------------------------");
		
		String json = out.toJSONString();
		JSONParser parser = new JSONParser();
		JSONObject p_out = null;
		JSONObject p_in = null;
		
		String name = null;
		String gender = null;
		int age = 0;
		
		// json 형태로 parsing
		try {
			p_out = (JSONObject) parser.parse(json);
			p_in = (JSONObject) p_out.get("in");
			gender = (String) p_in.get("gender");
			name = (String) p_in.get("name");
			age = Integer.parseInt((String)p_in.get("age"));
			
			System.out.println("성별 : " + gender);
			System.out.println("이름 : " + name);
			System.out.println("나이 : " + age);
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("JSON 파싱 오류");
		}
		
	}

}








