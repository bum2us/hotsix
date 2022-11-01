package com.bum2us.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest/member")
public class MemberRestController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="",method= RequestMethod.GET)
	public List<Member> selectList(MemberVo vo) throws Exception{
		vo.setPageTotal(service.selectCount(vo));
		return service.selectList(vo);
	}
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
//	@GetMapping("/{seq}")
	public Member selectOne(@PathVariable Integer seq, MemberVo vo) throws Exception {
		vo.setShSeq(seq);
		Member item = service.selectOne(vo);
		return item;
	}
	

	@RequestMapping(value = "", method = RequestMethod.POST)
//	@PostMapping("")
	public String insert(@RequestBody Member dto) throws Exception {
		service.insertList(dto);
		return "";
	}
	
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
//	@PatchMapping("/{seq}")
	public void update(@PathVariable Integer seq, @RequestBody Member dto) throws Exception {
		dto.setMmSeq(seq);
		service.updateOne(dto);
	}
}
