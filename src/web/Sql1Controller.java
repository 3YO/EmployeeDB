package web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Sql1Controller {

	@Autowired
	private EmployeeDao dao;

	@RequestMapping(path = "sql.do", params = "query", method = RequestMethod.POST)
	public ModelAndView getQuery(@RequestParam("query") String sqltext) {
		ArrayList<ArrayList> arrayList3 = dao.getQuery(sqltext);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("indexsql.jsp");
		mv.addObject("queryArray", arrayList3);
		return mv;

	}
	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public ModelAndView updateQuery(@RequestParam("query") String sqltext) {
		dao.update(sqltext);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("indexsql.jsp");
		mv.addObject("rowsUpdated", EmployeeDBDao.uc);
		return mv;
	}

	@RequestMapping(path = "listAll.do", method = RequestMethod.GET)
	public ModelAndView listEmployees() {
		ArrayList<ArrayList> arrayList3 = dao.listEmployees();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ViewAll.jsp");
		mv.addObject("queryArray", arrayList3);
		return mv;
	}


	@RequestMapping(path = "GetEmployeeById.do", method = RequestMethod.POST)
	public ModelAndView getEmployeeById(@RequestParam("id") int id) {
		Employee emp = dao.getEmpById(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ViewEmployee.jsp");
		mv.addObject("employee", emp);
		List<Department> depts = dao.getDepartments();
		mv.addObject("departments", depts);
		return mv;

	}

	@RequestMapping(path = "UpdateEmployee.do", method = RequestMethod.POST)
	public ModelAndView updateEmployee(@RequestParam("id") int id, Employee emp) {
		dao.updateEmployee(emp);
		ArrayList<ArrayList> arrayList3 = dao.listEmployees();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ViewAll.jsp");
		mv.addObject("queryArray", arrayList3);
		return mv;
	}

	@RequestMapping(path = "deleteEmployee.do", method = RequestMethod.POST)
	public ModelAndView deleteEmployee(@RequestParam("id") int id, Employee emp) {
		dao.deleteEmployee(emp);

		ArrayList<ArrayList> arrayList3 = dao.listEmployees();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ViewAll.jsp");
		mv.addObject("queryArray", arrayList3);
		return mv;
	}

	@RequestMapping(path = "addEmployee.do", method = RequestMethod.POST)
	public ModelAndView addEmployee(@RequestParam("firstname") String firstname, Employee emp) {
		dao.addEmployee(emp);
		ArrayList<ArrayList> arrayList3 = dao.listEmployees();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ViewAll.jsp");
		mv.addObject("queryArray", arrayList3);
		return mv;
	}

}
