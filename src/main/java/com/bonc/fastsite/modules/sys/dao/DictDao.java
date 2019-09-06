/**
 *
 */
package com.bonc.fastsite.modules.sys.dao;

import java.util.List;

import com.bonc.fastsite.common.persistence.CrudDao;
import com.bonc.fastsite.common.persistence.annotation.MyBatisDao;
import com.bonc.fastsite.modules.sys.entity.Dict;

/**
 * 字典DAO接口
 * @author Fastsite
 * @version 2014-05-16
 */
@MyBatisDao
public interface DictDao extends CrudDao<Dict> {

	public List<String> findTypeList(Dict dict);
	
}
