/**
 *
 */
package com.dsqdata.fastsite.modules.sys.dao;

import com.dsqdata.fastsite.common.persistence.TreeDao;
import com.dsqdata.fastsite.common.persistence.annotation.MyBatisDao;
import com.dsqdata.fastsite.modules.sys.entity.Office;

/**
 * 机构DAO接口
 * @author Fastsite
 * @version 2014-05-16
 */
@MyBatisDao
public interface OfficeDao extends TreeDao<Office> {
	
}
