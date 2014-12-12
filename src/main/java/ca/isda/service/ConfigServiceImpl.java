package ca.isda.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import ca.isda.domain.Address;
import ca.isda.domain.Configuration;
import ca.isda.domain.Configuration;

@Service("configService")
@Repository
@Transactional
public class ConfigServiceImpl implements ConfigService{
	private static final Logger logger = Logger.getLogger(ConfigServiceImpl.class);
	
	@PersistenceContext
    private EntityManager entityManager;
	
	@Override
	public List<Configuration> findAll() {
		TypedQuery<Configuration> query = entityManager.createQuery("SELECT c FROM Configuration c", Configuration.class);
		List<Configuration> configurations = query.getResultList();
		logger.info("Configuration listing " + configurations.size());
		return configurations;
	}

	@Override
	public Configuration save(Configuration configuration) {
		if (configuration.getKey() != null) {
			logger.info("Inserting new configuration");
            entityManager.merge(configuration);
        } else {
        	logger.info("Updating existing configuration");
            entityManager.persist(configuration);
        }
		
		logger.info("Configuration saved with key: " + configuration.getKey());
		return configuration;
	}

	@Override
	public Configuration findByKey(String key) {
		return entityManager.find(Configuration.class, key);
	}

}
