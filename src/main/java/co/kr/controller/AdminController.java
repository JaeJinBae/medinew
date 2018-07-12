package co.kr.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.kr.domain.EstateBoardVO;
import co.kr.domain.PageMaker;
import co.kr.domain.SearchCriteria;
import co.kr.service.EstateBoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);	
	
	@Autowired
	private EstateBoardService eService;
	
	@RequestMapping(value="/adminLoginCheck/{id}/{pw}")
	public ResponseEntity<String> loginCheck(@PathVariable("id") String id,@PathVariable("pw") String pw, HttpServletRequest req) throws Exception{
		logger.info("admin Login Check");
		ResponseEntity<String> entity=null;
		
		HttpSession session=req.getSession();
		
		if(id.equals("admin")&&pw.equals("medinew00974")){
			entity=new ResponseEntity<String>("ok",HttpStatus.OK);
			session.setAttribute("id", id);
			System.out.println("session 아이디= "+session.getAttribute("id"));
		}else{
			entity=new ResponseEntity<String>("no",HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest req){
		HttpSession session=req.getSession(false);
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/estateMain", method = RequestMethod.GET)
	public String estateMain(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception{
		logger.info("estateMain Get");
		
		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			JOptionPane.showMessageDialog(null, "로그인을 해주세요.");
			return "main/index";
		}
		
		List<EstateBoardVO> list= eService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		
		return "admin/estateMain";
	}
	
	@RequestMapping(value="/adminEstateWrite", method = RequestMethod.GET)
	public String adminEstateWrite(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception{
		logger.info("estateWrite Get");
		
		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			JOptionPane.showMessageDialog(null, "로그인을 해주세요.");
			return "main/index";
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
		
		
		return "admin/estateWrite";
	}
	
	@RequestMapping(value = "/adminEstateWrite", method = RequestMethod.POST)
	public String adminBroadcastingRegisterPost(EstateBoardVO vo, HttpServletRequest req) {
		logger.info("adminBroadcastingRegister post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "main/index";
		}

		eService.insert(vo);

		return "redirect:/estateMain";
	}
	
	@ResponseBody
	@RequestMapping("/ckImgUpload")
	public Map<String, Object> imgaeUpload(HttpServletRequest req, @RequestParam MultipartFile upload, Model model)
			throws Exception {
		logger.info("image upload!!!!!");

		// http body
		OutputStream out = null;

		Map<String, Object> map = new HashMap<String, Object>();

		// 오리지날 파일명
		String originalName = upload.getOriginalFilename();

		// 랜덤이름 생성(중복 방지용)
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;

		// 업로드한 파일 이름
		String fileName = savedName;

		// 바이트 배열로 변환
		byte[] bytes = upload.getBytes();

		// 이미지를 업로드할 디렉토리(배포경로로 설정)
		String innerUploadPath = "resources/upload/";
		String uploadPath = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		logger.info(uploadPath);

		out = new FileOutputStream(new File(uploadPath + fileName));// 서버에 파일 저장
		// 서버에 저장됨
		out.write(bytes);

		String fileUrl = "/" + innerUploadPath + fileName;

		System.out.println(fileUrl);

		map.put("uploaded", 1);
		map.put("fileName", fileName);
		map.put("url", fileUrl);

		return map;
	}
	
}
