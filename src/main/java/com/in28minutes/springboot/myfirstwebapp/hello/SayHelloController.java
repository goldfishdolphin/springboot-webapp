package com.in28minutes.springboot.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {
	@RequestMapping("say-hello")
	@ResponseBody
	public String sayHello(){
		return "Hello! What are you going to learn today?";
	}
	
	@RequestMapping("say-hello-html")
	@ResponseBody
	public String sayHelloHtml() {
		StringBuilder sb = new StringBuilder();
		sb.append("<htlm>");
		sb.append("<head>");
		sb.append("<title> Welcome </title>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<h1>Welcome to my first html in springboot</h1>");
		sb.append("</body>");
		sb.append("</htlm>");
		return sb.toString();
	}
	
	@RequestMapping("say-hello-jsp")
	public String sayHelloJsp(){
		return "sayHello";
	}

}
