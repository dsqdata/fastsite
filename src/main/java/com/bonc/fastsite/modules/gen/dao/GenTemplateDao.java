/**
 *
 */
package com.bonc.fastsite.modules.gen.dao;

import com.bonc.fastsite.common.persistence.CrudDao;
import com.bonc.fastsite.common.persistence.annotation.MyBatisDao;
import com.bonc.fastsite.modules.gen.entity.GenTemplate;

/**
 * 代码模板DAO接口
 * @author Fastsite
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenTemplateDao extends CrudDao<GenTemplate> {
	
}
