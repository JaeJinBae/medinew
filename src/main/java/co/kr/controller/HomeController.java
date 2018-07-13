package co.kr.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.kr.domain.EstateBoardVO;
import co.kr.domain.PageMaker;
import co.kr.domain.SearchCriteria;
import co.kr.service.EstateBoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private EstateBoardService eService;
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("home");
		
		List<EstateBoardVO> newList=eService.selectByNew();
		List<EstateBoardVO> hotList=eService.selectByHot();
		
		model.addAttribute("newList", newList);
		model.addAttribute("hotList", hotList);
		
		return "main/index";
	}
	
	@RequestMapping(value = "/estateHome", method = RequestMethod.GET)
	public String estateHome(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("estateHome Get");
		
		List<EstateBoardVO> list= eService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "estate/estateHome";
	}
	
	@RequestMapping(value = "/estateRead", method = RequestMethod.GET)
	public String estateRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("estateRead Get");
		
		EstateBoardVO vo=eService.selectOne(bno);
		eService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "estate/estateRead";
	}
	
	@RequestMapping(value = "/mediLoan", method = RequestMethod.GET)
	public String loanHome(Model model) {
		logger.info("loanHome");
		
		return "loan/loanHome";
	}
	
	@RequestMapping(value = "/mediAd", method = RequestMethod.GET)
	public String adHome(Model model) {
		logger.info("adHome");
		
		return "ad/adHome";
	}
	
	@RequestMapping(value = "/mediInstrument", method = RequestMethod.GET)
	public String instrumentHome(Model model) {
		logger.info("instrumentHome");
		
		return "instrument/instrumentHome";
	}
	
	@RequestMapping(value = "/mediInterior", method = RequestMethod.GET)
	public String interiorHome(Model model) {
		logger.info("interiorHome");
		
		return "interior/interiorHome";
	}
	
	@RequestMapping(value = "/mediConsulting", method = RequestMethod.GET)
	public String consultingHome(Model model) {
		logger.info("consultingHome");
		
		return "consulting/consultingHome";
	}
}
