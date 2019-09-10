/**
 *
 */
package com.pangu.fastsite.modules.gen.dao;

import com.pangu.fastsite.common.persistence.CrudDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.modules.gen.entity.GenScheme;

/**
 * 生成方案DAO接口
 * @author Fastsite
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenSchemeDao extends CrudDao<GenScheme> {
	
}
