package poly.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.model.SanPham;

@Transactional
@Controller
@RequestMapping("/page/")
public class SanPhamController {
		
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")  
	public String index(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM SanPham";   
		Query query = session.createQuery(hql);   
		List<SanPham> list = query.list();   
		model.addAttribute("sanphams", list);   
		return "page/index";  
		}
	
}
