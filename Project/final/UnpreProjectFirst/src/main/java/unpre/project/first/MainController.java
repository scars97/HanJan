package unpre.project.first;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping(value="/main", method= RequestMethod.GET)
	public ModelAndView main() {
		return new ModelAndView("main/main");
	}
	
}
