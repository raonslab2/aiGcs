package egovframework.or.kr.GA04MAIN.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.EgovMessageSource;
import egovframework.or.kr.GA04MAIN.service.GA04MAINService;
import egovframework.or.kr.GA04MAIN.service.GA04MAINVO;
import egovframework.or.kr.com.utill.CommUtil;
import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * GCS 관제 시스템
 * 
 * @author 실행환경 개발팀 SSD SCJ
 * @since 2021.11.01
 * @version 1.0
 * @see
 *
 *      <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2021.11.01  SCJ            최초 생성
 *
 *      </pre>
 */

@Controller
@SessionAttributes(types = ComDefaultVO.class)
public class GA04MAINController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(GA04MAINController.class);
	
	/**
	 * EgovBBSManageService
	 */
	@Resource(name = "GA04MAINService")
    private GA04MAINService gA04MAINService;
	
	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	/**
	 * GCS > MAIN
	 * @return 메인페이지 정보 Map [key : 항목명]
	 *
	 * @param request
	 * @param model
	 * @exception Exception Exception
	 */
	@RequestMapping(value = "/gcs/dashboard/gA04Main.do")
	public String gA04Main(HttpServletRequest request, ModelMap model)
	  throws Exception{
		

		return "main/GCSMAIN4/gA04Main";
	} 
	
	/*테스트
	 * */
	@RequestMapping(value = "/gcs/dashboard/gA04Main01.do", method = RequestMethod.POST)
	public @ResponseBody ModelAndView gA04Main01(@RequestParam Map<String, Object> param) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");		
		EgovMap map = CommUtil.makeEgovMap(param); 
		
		 
		Map<String, Object> mapData = new HashMap<>();
		String noPk = (String) map.get("noPk");
		 
		
		if(noPk !=null && noPk != "") {
			mapData.put("noPk", noPk);
		}
		  
 
		List<GA04MAINVO> list = null;
		
		try {
			list = gA04MAINService.selectTest(mapData);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		LOGGER.debug("selectTaskProcess: {}",list);
		mav.addObject("list", list);
		 
		return mav;
	}
	
	
	
}