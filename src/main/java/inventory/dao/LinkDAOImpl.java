package inventory.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import inventory.model.Category;
import inventory.model.Link;
@Repository
@Transactional(rollbackFor=Exception.class)
public class LinkDAOImpl extends BaseDAOImpl<Link> implements LinkDAO<Link>{

}
