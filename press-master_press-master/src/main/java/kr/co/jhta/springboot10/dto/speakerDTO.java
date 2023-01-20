package kr.co.jhta.springboot10.dto;

import javax.persistence.Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class speakerDTO {
	private int id;
	private String date;
	private String name;
	private String party;
	private String title;
}
