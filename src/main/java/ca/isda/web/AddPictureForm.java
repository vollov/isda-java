package ca.isda.web;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.imageio.ImageIO;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ca.isda.domain.Picture;
import ca.isda.service.EventService;
import ca.isda.service.PictureService;

@Controller
// @RequestMapping("picture/{eventId}/new")
// @SessionAttributes(types = Picture.class)
public class AddPictureForm {
	private static final Logger logger = Logger.getLogger(AddPictureForm.class);

	@Autowired
	private PictureService pictureService;

	@Autowired
	private EventService eventService;
	
	private static final int IMG_WIDTH = 195;
	private static final int IMG_HEIGHT = 130;
	// @InitBinder
	// public void setAllowedFields(WebDataBinder dataBinder) {
	// dataBinder.setDisallowedFields("id");
	// }

	@RequestMapping(value = "picture/{eventId}/new", method = RequestMethod.GET)
	public String setupForm(@PathVariable("eventId") long eventId, Model model) {
		// Picture picture = new Picture();
		// model.addAttribute(picture);
		model.addAttribute("eid", eventId);
		return "picture/form";
	}


	/**
	 * Event file size: Full: 360x240 (600x400) Thumbnail: 195x130
	 * 
	 * @return
	 */
	private boolean validateImageSize() {
		return true;
	}

	@ExceptionHandler(IOException.class)
	public String ioError() {
		// Nothing to do
		return "500";
	}

	private void saveFile(MultipartFile file, String filePath)
			throws IOException {

		byte[] bytes = file.getBytes();
		BufferedOutputStream buffStream = new BufferedOutputStream(
				new FileOutputStream(new File(filePath)));
		buffStream.write(bytes);
		buffStream.close();
	}

	private void saveThumbnail(String filePath, String thumbPath) throws IOException {
		BufferedImage originalImage = ImageIO.read(new File(filePath));
		int type = originalImage.getType() == 0? BufferedImage.TYPE_INT_ARGB : originalImage.getType();
 
		BufferedImage resizeImageJpg = resizeImage(originalImage, type);
		ImageIO.write(resizeImageJpg, "jpg", new File(thumbPath)); 
	}
	
	private static BufferedImage resizeImage(BufferedImage originalImage,
			int type) {
		BufferedImage resizedImage = new BufferedImage(IMG_WIDTH, IMG_HEIGHT,
				type);
		Graphics2D g = resizedImage.createGraphics();
		g.drawImage(originalImage, 0, 0, IMG_WIDTH, IMG_HEIGHT, null);
		g.dispose();

		return resizedImage;
	}

	/*
	 * TODO: 0) create event folder if folder not exists 1) validate if the file
	 * name is unique 2) validate file size 3) save main file 4) save thumbnail
	 * file 5) save other fields
	 */
	@RequestMapping(value = "picture/{eventId}/save", method = RequestMethod.POST)
	public String savePicture(@PathVariable("eventId") long eventId,
			@RequestParam("file") MultipartFile file,
			@RequestParam("description") String description,
			@RequestParam("displayId") String displayId,
			@RequestParam("active") boolean active
			) throws IOException {
		logger.info("File Description:"+ description);
		logger.info("File display id:"+ displayId);
		logger.info("Uploade a picture, eventId = "+ eventId);
		logger.info("Uploade a picture, active = "+ active);
		String fileName = null;
		if (!file.isEmpty()) {
			fileName = file.getOriginalFilename();
			logger.info("Uploade a picture, file name = " + fileName);

			// 0) create event folder if folder not exists
			// Path eventPhotoPath =
			// Paths.get(System.getProperty("upload.home"),"" + eventId);
			Path eventPhotoPath = Paths.get("C:/cp/" + eventId);
			if (!Files.exists(eventPhotoPath)) {
				Files.createDirectory(eventPhotoPath);
			}

			Path thumbPath = Paths.get("C:/cp/" + eventId + "/thumbnails");
			if (!Files.exists(thumbPath)) {
				Files.createDirectory(thumbPath);
			}

			// 1) validate if the file name is unique
			Path filePath = Paths.get("C:/cp/" + eventId + "/" + fileName);
			if (!Files.exists(filePath)) {
				// TODO: 2) validate file size
				// 3) save image file
				saveFile(file, filePath.toString());
				saveThumbnail(filePath.toString(), thumbPath.toString()+ "/" + fileName);
			}
		}
		//5) save other fields
		Picture picture = new Picture();
		picture.setActive(active);
		picture.setDescription(description);
		picture.setDisplayId(Integer.parseInt(displayId));
		picture.setEvent(eventService.findById(eventId));
		pictureService.save(picture);
		
		// String eventId = "1";
		return "redirect:list";
	}

	// @RequestMapping(method = RequestMethod.POST)
	// public String processSubmit(@ModelAttribute Picture picture,
	// BindingResult result, SessionStatus status) {
	// // new StaffValidator().validate(staff, result);
	// // if (result.hasErrors()) {
	// // logger.info("staff validation failed");
	// // return "staff/form";
	// // }
	// // else {
	// pictureService.save(picture);
	// status.setComplete();
	// return "redirect:/picture/" + picture.getId();
	// // }
	// }
}
