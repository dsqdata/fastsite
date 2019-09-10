/**
 *
 */
package com.pangu.fastsite.modules.gen.dao;

import com.pangu.fastsite.common.persistence.CrudDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.modules.gen.entity.GenTable;

/**
 * 业务表DAO接口
 * @author Fastsite
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenTableDao extends CrudDao<GenTable> {
	
}
