/**
 *
 */
package com.bonc.fastsite.modules.cms.dao;

import com.bonc.fastsite.common.persistence.CrudDao;
import com.bonc.fastsite.common.persistence.annotation.MyBatisDao;
import com.bonc.fastsite.modules.cms.entity.Site;

/**
 * 站点DAO接口
 * @author Fastsite
 * @version 2013-8-23
 */
@MyBatisDao
public interface SiteDao extends CrudDao<Site> {

}
