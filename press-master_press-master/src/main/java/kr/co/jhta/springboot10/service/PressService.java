package kr.co.jhta.springboot10.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jhta.springboot10.dao.PressDAO;
import kr.co.jhta.springboot10.dto.PressDTO;

@Service
public class PressService {
	
	@Autowired
	private PressDAO dao;
	
	
	public List<PressDTO> selectAll(){
		return dao.getAll();
	}
	
	public List<PressDTO> selectOne(String from_date,String to_date,String name,String party) {
		return dao.selectOne(from_date, to_date, name, party);
	}
}
