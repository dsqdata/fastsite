/**
 *
 */
package com.bonc.fastsite.modules.sys.dao;

import com.bonc.fastsite.common.persistence.TreeDao;
import com.bonc.fastsite.common.persistence.annotation.MyBatisDao;
import com.bonc.fastsite.modules.sys.entity.Office;

/**
 * 机构DAO接口
 * @author Fastsite
 * @version 2014-05-16
 */
@MyBatisDao
public interface OfficeDao extends TreeDao<Office> {
	
}
