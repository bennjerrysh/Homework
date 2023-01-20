package kr.co.jhta.springboot10.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.co.jhta.springboot10.dto.PressDTO;

@Repository
@Mapper
public interface PressDAO {

	List<PressDTO> getAll();
	
	List<PressDTO> selectOne(String from_date,String to_date,String name,String party);
}
