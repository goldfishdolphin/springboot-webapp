package com.in28minutes.springboot.myfirstwebapp.todo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TodoController {
	
	public TodoController(TodoService todoService) {
		super();
		this.todoService = todoService;
	}


	private TodoService todoService;
	
	
	@RequestMapping("todo-list")
	public String listAllTodos(ModelMap model) {
		List<Todo> todos = todoService.findByUsername("admin");
		model.addAttribute("todos", todos);
		return "listTodos";
	}

}
