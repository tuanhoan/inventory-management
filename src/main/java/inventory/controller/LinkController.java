package inventory.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import inventory.model.Link;
import inventory.model.Paging; 
import inventory.service.LinkService;
import inventory.util.Constant;
import inventory.validate.LinkValidator;

@Controller
public class LinkController {
	@Autowired
	private LinkService linkService;
	@Autowired
	private LinkValidator linkValidator;
	static final Logger log = Logger.getLogger(LinkController.class);
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		if(binder.getTarget()==null) {
			return;
		}
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
		if(binder.getTarget().getClass()== Link.class) {
			binder.setValidator(linkValidator);
		}
	}
	@RequestMapping(value= {"/link/list","/link/list/"})
	
	public String redirect() {
		return "redirect:/link/list/1";
	}
	
	@RequestMapping(value="/link/list/{page}")
	public String showLinkList(Model model,HttpSession session , @ModelAttribute("searchForm") Link link,@PathVariable("page") int page) {
		Paging paging = new Paging(5);
		paging.setIndexPage(page);
		List<Link> links = linkService.getLinkList(link,paging);
		if(session.getAttribute(Constant.MSG_SUCCESS)!=null ) {
			model.addAttribute(Constant.MSG_SUCCESS, session.getAttribute(Constant.MSG_SUCCESS));
			session.removeAttribute(Constant.MSG_SUCCESS);
		}
		if(session.getAttribute(Constant.MSG_ERROR)!=null ) {
			model.addAttribute(Constant.MSG_ERROR, session.getAttribute(Constant.MSG_ERROR));
			session.removeAttribute(Constant.MSG_ERROR);
		}
		model.addAttribute("pageInfo", paging);
		model.addAttribute("links", links);
		return "link-list";
		
	}
	@GetMapping("/link/add")
	public String add(Model model) {
		model.addAttribute("titlePage", "Add Link");
		model.addAttribute("modelForm", new Link());
		model.addAttribute("viewOnly", false);
		return "link-action";
	}
	@GetMapping("/link/edit/{id}")
	public String edit(Model model , @PathVariable("id") int id) {
		log.info("Edit link with id="+id);
		Link link = linkService.findByIdLink(id);
		if(link!=null) {
			model.addAttribute("titlePage", "Edit Link");
			model.addAttribute("modelForm", link);
			model.addAttribute("viewOnly", false);
			return "link-action";
		}
		return "redirect:/link/list";
	}
	@GetMapping("/link/view/{id}")
	public String view(Model model , @PathVariable("id") int id) {
		log.info("View link with id="+id);
		Link link = linkService.findByIdLink(id);
		if(link!=null) {
			model.addAttribute("titlePage", "View Link");
			model.addAttribute("modelForm", link);
			model.addAttribute("viewOnly", true);
			return "link-action";
		}
		return "redirect:/link/list";
	}
	@PostMapping("/link/save")
	public String save(Model model,@ModelAttribute("modelForm") @Validated Link link,BindingResult result,HttpSession session) {
		if(result.hasErrors()) {
			if(link.getId()!=null) {
				model.addAttribute("titlePage", "Edit Link");
			}else {
				model.addAttribute("titlePage", "Add Link");
			}
			
			model.addAttribute("modelForm", link);
			model.addAttribute("viewOnly", false);
			return "link-action";
			
		}
		if(link.getId()!=null && link.getId()!=0) {
			try {
				linkService.updateLink(link);
				session.setAttribute(Constant.MSG_SUCCESS, "Cập nhật thành công!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error(e.getMessage());
				session.setAttribute(Constant.MSG_ERROR, "Có lỗi xảy ra khi cập nhật!!!");
			}
			
		}else {
				try {
					linkService.saveLink(link);
					session.setAttribute(Constant.MSG_SUCCESS, "Thêm thành công!!!");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					session.setAttribute(Constant.MSG_ERROR, "Có lỗi xảy ra khi thêm!!!");
				}
		}
		return "redirect:/link/list";
		
	}
	@GetMapping("/link/delete/{id}")
	public String delete(Model model , @PathVariable("id") int id,HttpSession session) {
		log.info("Delete link with id="+id);
		Link link = linkService.findByIdLink(id);
		if(link!=null) {
			try {
				linkService.deleteLink(link);
				session.setAttribute(Constant.MSG_SUCCESS, "Xoá thành công!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute(Constant.MSG_ERROR, "Có lỗi xảy ra khi xoá!!!");
			}
		}
		return "redirect:/link/list";
	}
	
}
