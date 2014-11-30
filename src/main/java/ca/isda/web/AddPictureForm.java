package ca.isda.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import ca.isda.domain.Picture;
import ca.isda.service.PictureService;

@Controller
//@RequestMapping("picture/{eventId}/new")
//@SessionAttributes(types = Picture.class)
public class AddPictureForm {
	private static final Logger logger = Logger.getLogger(AddPictureForm.class);
	
	@Autowired
	private PictureService pictureService;
		
//	@InitBinder
//	public void setAllowedFields(WebDataBinder dataBinder) {
//		dataBinder.setDisallowedFields("id");
//	}

	@RequestMapping(value = "picture/{eventId}/new", method = RequestMethod.GET)
	public String setupForm(@PathVariable("eventId") long eventId, Model model) {
//		Picture picture = new Picture();
//		model.addAttribute(picture);
		model.addAttribute("eid", eventId);
		return "picture/form";
	}
	
	@RequestMapping(value = "picture/{eventId}/save", method=RequestMethod.POST )
    public @ResponseBody String savePicture(@RequestParam("file") MultipartFile file, 
    		@RequestParam("description") String description,
    		@RequestParam("displayId") String displayId,
    		@RequestParam("active") String active){
    	System.out.println("File Description:"+ description);
    	String fileName = null;
    	if (!file.isEmpty()) {
    		fileName = file.getOriginalFilename();
    		logger.info("Uploade a picture, file name = "+ fileName);
    	}
    	String eventId = "1";
    	return "picture/" + eventId + "/list";
//    	if (!file.isEmpty()) {
//            try {
//                fileName = file.getOriginalFilename();
//                byte[] bytes = file.getBytes();
//                BufferedOutputStream buffStream = 
//                        new BufferedOutputStream(new FileOutputStream(new File("C:/cp/" + fileName)));
//                buffStream.write(bytes);
//                buffStream.close();
//                return "You have successfully uploaded " + fileName;
//            } catch (Exception e) {
//                return "You failed to upload " + fileName + ": " + e.getMessage();
//            }
//        } else {
//            return "Unable to upload. File is empty.";
//        }
    }
    
//	@RequestMapping(method = RequestMethod.POST)
//	public String processSubmit(@ModelAttribute Picture picture, BindingResult result, SessionStatus status) {
////		new StaffValidator().validate(staff, result);
////		if (result.hasErrors()) {
////			logger.info("staff validation failed");
////			return "staff/form";
////		}
////		else {
//			pictureService.save(picture);
//			status.setComplete();
//			return "redirect:/picture/" + picture.getId();
////		}
//	}
}
