
package ca.isda.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import ca.isda.domain.Contact;

public interface ContactRepository extends PagingAndSortingRepository<Contact, Long> {

}
