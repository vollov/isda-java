package ca.isda.web.util;

import java.beans.PropertyEditorSupport;

import org.apache.log4j.Logger;

import ca.isda.domain.Address;
import ca.isda.service.AddressService;
import ca.isda.service.AddressServiceImpl;

public class AddressEditor extends PropertyEditorSupport{

    private final AddressService addressService;
    private static final Logger logger = Logger.getLogger(AddressEditor.class);
    
    public AddressEditor(AddressService addressService){
        this.addressService= addressService;
    }

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
    	logger.info("calling AddressEditor.setAsText() ");
      Address address = addressService.findById(Long.parseLong(text));
      setValue(address);
    }
}
