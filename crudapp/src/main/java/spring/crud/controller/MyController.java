package spring.crud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import spring.crud.model.Datas;
import spring.crud.service.DatasService;

@Controller
public class MyController {
	@Autowired
	private DatasService ds;
	@RequestMapping(path="/home")
	public String home() {
		return "home";
	}
	@RequestMapping(path="/search", method=RequestMethod.POST)
	public String search(@ModelAttribute Datas data,Model m) {
		System.out.println(data);
		ds.insert(data);
		return "redirect:start";
	}
	@RequestMapping(path="/start")
	public String first(Model m) {
		List<Datas> list1=ds.fetchall();
		m.addAttribute("list", list1);
		return "main";
	}
	@RequestMapping("/showupdate")
	public String showupdate() {
		return "update";
	}
	@RequestMapping(path="/update",method=RequestMethod.POST)
	public String update(@ModelAttribute Datas data) {
		ds.updatetable(data);
		return "redirect:start";
	}
	@RequestMapping("/showdel")
	public String showdel() {
		return "delete";
	}
	@RequestMapping(path="/delete",method=RequestMethod.POST)
	public String delete(@RequestParam("id") int id) {
		ds.deltable(id);
		return "redirect:start";
	}
	@RequestMapping(path="/del/{id}")
	public RedirectView del(@PathVariable("id") int id ,HttpServletRequest request) {
		ds.deltable(id);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	@RequestMapping(path="/upd/{id}")
	public String upd(@PathVariable("id") int id ,Model m) {
		Datas datas = ds.fetchtable(id);
		m.addAttribute("datas",datas);
		return "upd";
	}
}
