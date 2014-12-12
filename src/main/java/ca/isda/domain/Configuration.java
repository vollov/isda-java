package ca.isda.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "config")
public class Configuration {
	@Id
	@Column(name = "key")
	private String key;

	@Column(name = "value")
	private String value;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	@Transient
	public boolean isNew() {
		return (this.key == null);
	}
	
	public String toString() {
		return "Configuration - key: " + key + ", value: " + value;
	}
}
