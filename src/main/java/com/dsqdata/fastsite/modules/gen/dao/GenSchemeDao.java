/**
 *
 */
package com.dsqdata.fastsite.modules.gen.dao;

import com.dsqdata.fastsite.common.persistence.CrudDao;
import com.dsqdata.fastsite.common.persistence.annotation.MyBatisDao;
import com.dsqdata.fastsite.modules.gen.entity.GenScheme;

/**
 * 生成方案DAO接口
 * @author Fastsite
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenSchemeDao extends CrudDao<GenScheme> {
	
}