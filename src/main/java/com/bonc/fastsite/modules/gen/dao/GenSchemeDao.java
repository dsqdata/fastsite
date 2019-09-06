/**
 *
 */
package com.bonc.fastsite.modules.gen.dao;

import com.bonc.fastsite.common.persistence.CrudDao;
import com.bonc.fastsite.common.persistence.annotation.MyBatisDao;
import com.bonc.fastsite.modules.gen.entity.GenScheme;

/**
 * 生成方案DAO接口
 * @author Fastsite
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenSchemeDao extends CrudDao<GenScheme> {
	
}
