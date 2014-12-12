package ca.isda.service;

import java.util.List;

import ca.isda.domain.Picture;

public interface PictureService {
	public List<Picture> findByEventId(long id);

	public List<Picture> findActivePictureByEventId(long id);
	
	public Picture save(Picture picture);

	public Picture findById(long id);
}
