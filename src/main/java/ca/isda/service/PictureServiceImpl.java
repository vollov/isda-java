package ca.isda.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import ca.isda.domain.Picture;

@Service("pictureService")
@Repository
@Transactional
public class PictureServiceImpl implements PictureService {
	private static final Logger logger = Logger.getLogger(PictureServiceImpl.class);
	
	@PersistenceContext
    private EntityManager entityManager;
	
	@Override
	public List<Picture> findByEventId(long id) {
		TypedQuery<Picture> query = entityManager.createQuery("SELECT p FROM Picture p WHERE p.event.id=:eid ORDER BY p.displayId", Picture.class).setParameter("eid", id);
		List<Picture> pictures = query.getResultList();
		logger.info("Picture listing " + pictures.size());
		return pictures;
	}

	@Override
	public List<Picture> findActivePictureByEventId(long id) {
		TypedQuery<Picture> query = entityManager.createQuery("SELECT p FROM Picture p WHERE p.active=true and p.event.id=:eid ORDER BY p.displayId", Picture.class).setParameter("eid", id);
		List<Picture> pictures = query.getResultList();
		logger.info("Picture listing " + pictures.size());
		return pictures;
	}
	
	@Override
	public Picture save(Picture picture) {
		if (picture.getId() != null) {
			logger.info("Inserting new picture");
            entityManager.merge(picture);
        } else {
        	logger.info("Updating existing picture");
            entityManager.persist(picture);
        }
		
		logger.info("Picture saved with id: " + picture.getId());
		return picture;
	}

	@Override
	public Picture findById(long id) {
		return entityManager.find(Picture.class, id);
	}

}
