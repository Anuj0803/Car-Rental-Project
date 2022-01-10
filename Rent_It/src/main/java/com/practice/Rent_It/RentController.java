package com.practice.Rent_It;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RentController {
	@Autowired
	StatusRepo repo3;
	
	@Autowired
	Service1 repo;
	@Autowired
	UserRepo repo2;
	@RequestMapping("/home")
	public String home() {
		return "home.jsp";
	}
	
	public static String uploadDirectory = System.getProperty("user.dir") + "/src/main/webapp/imagedata";
	@PostMapping("/add")
	public String add(Owner ow , @RequestParam("img") MultipartFile file) {
		String filename= ow.getCar_Number()+file.getOriginalFilename().substring(file.getOriginalFilename().length()-4);
		System.out.println(filename);
		Path fileNameAndPath =Paths.get(uploadDirectory,filename);
		System.out.println(fileNameAndPath);
		try {
			Files.write(fileNameAndPath, file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		ow.setPhoto(filename);
		repo.save(ow);
		return "home.jsp";
	}
	@RequestMapping("/admin")
	public String admin(Admin ad) {
		return "login.jsp";
	}
	
	@PostMapping("/showAll" )
	public String show(Admin ad,Model model) {
		if(ad.getPin().equals("123")) {
			List<Owner> listStu = repo.findAll();
			model.addAttribute("owners",listStu);
			return "admin.jsp";
		}
		else
			return "login.jsp";
		
	}
	
	@RequestMapping("/get" )
	public String get(Model model, User u) {
		List<Owner> listStu = repo.findAll();
		model.addAttribute("owners",listStu);
			repo2.save(u);
			return "user.jsp";
	}
	
	@RequestMapping("/status")
	public String status(Status st,Model model) {
		List<Owner> listStu = repo.findAll();
		model.addAttribute("owners",listStu);
		repo3.save(st);
		return "admin.jsp";
	}
	
	@RequestMapping("/car")
	public ModelAndView car(@RequestParam String Numc,Owner ow) {
		ModelAndView mv = new ModelAndView("status.jsp");
		Status st1 =repo3.findById(Numc).orElse(null);
		mv.addObject("CarNumber", st1.getNumc());
		mv.addObject("Status", st1.getStatus());
		mv.addObject("Reason", st1.getReason());
		mv.addObject("pic", ow.getPhoto());
		return mv;
	}
 
}
