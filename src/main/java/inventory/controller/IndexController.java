package inventory.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping(value = "/")
	public String indString() {
		return "index";
	}
//	public ModelAndView index() {
//
//		ModelAndView mView = new ModelAndView();
//		mView.setViewName("index");
//		return mView;
//	}
}
