package com.in28minutes.springboot.myfirstwebapp.todo;


import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
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
	public String showNewTodo(ModelMap model) {
		String username = (String)model.get("name");
		Todo todo = new Todo(0, username,"", LocalDate.now().plusYears(1), false);
		model.put("todo", todo);
		return "todo";
	}
	@RequestMapping(value = "add-todo" , method = RequestMethod.POST)
	public String addNewTodo(ModelMap model, Todo todo) {
		String username = (String)model.get("name");
		todoService.addTodo(username, todo.getDescription(), LocalDate.now().plusYears(1), false);
		return "redirect:todo-list";
	}

}
