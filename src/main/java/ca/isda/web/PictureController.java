package ca.isda.web;

import java.util.List;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ca.isda.domain.Picture;
import ca.isda.service.PictureService;

@Controller
public class PictureController {
	private static final Logger logger = Logger.getLogger(PictureController.class);
	
	@Autowired
	private PictureService pictureService;
	
//	@RequestMapping("/pictures")
//	public String adminPictureList(Locale locale, Model model) {
//		logger.info("picture list --> client locale is "+ locale);
//		
//		List<Picture> pictures = pictureService.findAll();
//		logger.info("[Controller] Picture listing " + pictures.size());
//		model.addAttribute("pictures", pictures);
//		return "picture/list";
//	}
	
	@RequestMapping(value = "picture/{id}/list", method = RequestMethod.GET)
	public String getPicture(@PathVariable("id") long id, Model model) {
		logger.info(String.format("PictureController.getPicture --> id=%d", id));
		List<Picture> pictures = pictureService.findActivePictureByEventId(id);
		
		model.addAttribute("eventId", id);
		model.addAttribute("pictures", pictures);
		return "picture/list";
	}
}
