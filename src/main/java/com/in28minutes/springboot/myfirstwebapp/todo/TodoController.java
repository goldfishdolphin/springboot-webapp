package com.in28minutes.springboot.myfirstwebapp.todo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class TodoController {
	
	public TodoController(TodoService todoService) {
		super();
		this.todoService = todoService;
	}


	private TodoService todoService;
	
	
	@RequestMapping(value = "todo-list", method= RequestMethod.GET)
	public String listAllTodos(ModelMap model) {
		List<Todo> todos = todoService.findByUsername("admin");
		model.addAttribute("todos", todos);
		return "listTodos";
	}

	@RequestMapping(value = "add-todo" , method = RequestMethod.GET)
	public String showNewTodo() {
		return "todo";
	}
	@RequestMapping(value = "add-todo" , method = RequestMethod.POST)
	public String addNewTodo() {
		return "redirect:todo-list";
	}

}
