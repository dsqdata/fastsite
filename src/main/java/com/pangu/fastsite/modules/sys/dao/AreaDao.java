/**
 *
 */
package com.pangu.fastsite.modules.sys.dao;

import com.pangu.fastsite.common.persistence.TreeDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.modules.sys.entity.Area;

/**
 * 区域DAO接口
 * @author Fastsite
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
