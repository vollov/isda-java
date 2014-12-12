package ca.isda.service;

import java.util.List;

import ca.isda.domain.Configuration;

public interface ConfigService {
	public List<Configuration> findAll();

	public Configuration save(Configuration configuration);

	public Configuration findByKey(String key);
}
