package com.spring.blueye.web;

import java.text.ParseException;
import java.util.Collection;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.Formatter;
import com.spring.blueye.model.Status;
import com.spring.blueye.service.CoreService;

/**
 * Instructs Spring MVC on how to parse and print elements of type 'RoleType'.
 * Starting from Spring 3.0, Formatters have come as an improvement in
 * comparison to legacy PropertyEditors. See the following links for more
 * details: - The Spring ref doc:
 * http://static.springsource.org/spring/docs/current
 * /spring-framework-reference/html/validation.html#format-Formatter-SPI - A
 * nice blog entry from Gordon Dickens:
 * http://gordondickens.com/wordpress/2010/09
 * /30/using-spring-3-0-custom-type-converter/
 * <p/>
 * Also see how the bean 'conversionService' has been declared inside
 * /WEB-INF/mvc-core-config.xml
 * 
 * @author Kamlesh Tayade
 */
public class StatusFormatter implements Formatter<Status> {

	private final CoreService coreService;

	@Autowired
	public StatusFormatter(CoreService coreService) {
		this.coreService = coreService;
	}

	@Override
	public String print(Status arg0, Locale arg1) {
		// TODO Auto-generated method stub
		return arg0.getName();
	}


	@Override
    public Status parse(String text, Locale locale) throws ParseException {
        Collection<Status> findStatusTypes = this.coreService.findStatusTypes();
        for (Status type : findStatusTypes) {
            if (type.getName().equals(text)) {
                return type;
            }
        }
        throw new ParseException("type not found: " + text, 0);
    }

}
