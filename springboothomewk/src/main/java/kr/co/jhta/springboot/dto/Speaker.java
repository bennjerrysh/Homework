package kr.co.jhta.springboot.dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity(name = "speaker_list")
public class Speaker {
    @Id
    private int id;
    
    private String name;
    private String party;
//entity 실제 테이블과 매핑하기 때문에 dto와 따로 관리해야한다고함.. 테이블이라고 봐도 됨..
    @ManyToOne
    @JoinColumn(name ="press_id")
    private PressInfo pressInfo;
}
