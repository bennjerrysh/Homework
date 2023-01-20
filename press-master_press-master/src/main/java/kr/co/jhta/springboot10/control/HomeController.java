package kr.co.jhta.springboot10.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.cj.xdevapi.JsonArray;

import kr.co.jhta.springboot10.dto.PressDTO;
import kr.co.jhta.springboot10.dto.speakerDTO;
import kr.co.jhta.springboot10.service.PressService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {

	@Autowired
	PressService service;

	@RequestMapping("/sort")
	public String sort() {
		return "sort";
	}
	
	@RequestMapping("/result")
	@ResponseBody
	public List<PressDTO> result(@RequestParam(value = "from_date",required = false)String from_date,
			@RequestParam(value = "to_date",required = false)String to_date,
			@RequestParam(value = "name",required = false)String name,
			@RequestParam(value = "party",required = false)String party, Model model) {

		/*
		 * model.addAttribute("from_date", from_date); model.addAttribute("to_date",
		 * to_date); model.addAttribute("name", name); model.addAttribute("party",
		 * party);
		 */
		
		/*
		 * List<PressDTO> list = service.selectAll(); model.addAttribute("list", list);
		 */
		
		
		List<PressDTO> list = service.selectOne(from_date, to_date, name, party);
//		model.addAttribute("list", list);
		
		return list;
	}
}
