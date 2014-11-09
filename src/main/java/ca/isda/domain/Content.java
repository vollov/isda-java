package ca.isda.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * Entity to store i18n contents.
 */
@Entity
@Table(name = "t_i18n_vertical")
@IdClass(ContentPK.class)
public class Content {
	@Id
	@Column(name = "code")
	private String code;

	@Id
	@Column(name = "locale")
	private String locale;

	@Lob
	@Column(name = "content", columnDefinition="TEXT")
	private String content;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getLocale() {
		return locale;
	}

	public void setLocale(String locale) {
		this.locale = locale;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Transient
	public boolean isNew() {
		return (this.code == null || this.locale == null);
	}
	
	public String toString() {
		return String.format("Content[code=%s, locale=%s, content=%s]",
				this.code, this.locale, this.content);
	}
}
