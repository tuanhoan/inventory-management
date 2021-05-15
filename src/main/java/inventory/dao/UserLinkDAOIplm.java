package inventory.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import inventory.model.ProductInfo;
import inventory.model.UserLink;
@Repository
@Transactional(rollbackFor=Exception.class)
public class UserLinkDAOIplm extends BaseDAOImpl<UserLink> implements UserLinkDAO<UserLink>{

}
