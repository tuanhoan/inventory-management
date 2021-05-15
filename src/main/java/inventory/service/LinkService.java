package inventory.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import inventory.dao.LinkDAO;
import inventory.model.Link;
import inventory.model.Paging;

@Service
public class LinkService {
	@Autowired
	private LinkDAO<Link> linkDAO;
	final static Logger log = Logger.getLogger(LinkService.class);
	public List<Link> getLinkList(Link link , Paging paging){
		StringBuilder queryStr = new StringBuilder();
		Map<String, Object> mapParams = new HashMap<>();
		return linkDAO.findAll(queryStr.toString(), mapParams,paging);
	}
	public void saveLink(Link link)  throws Exception{
		log.info("Insert link "+link.toString());
		link.setActiveFlag(1);
		link.setCreateDate(new Date());
		link.setUpdateDate(new Date());
		linkDAO.save(link);
	}
	public void updateLink(Link link) throws Exception {
		log.info("Update link "+link.toString());
		link.setUpdateDate(new Date());
		linkDAO.update(link);
	}
	public void deleteLink(Link link) throws Exception{
		link.setActiveFlag(0);
		link.setUpdateDate(new Date());
		log.info("Delete link "+link.toString());
		linkDAO.update(link);
	}
	public List<Link> findLink(String property , Object value){
		log.info("=====Find by property link start====");
		log.info("property ="+property +" value"+ value.toString());
		return linkDAO.findByProperty(property, value);
	}
	public Link findByIdLink(int id) {
		log.info("find link by id ="+id);
		return linkDAO.findById(Link.class, id);
	}
}
