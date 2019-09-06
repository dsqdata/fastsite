package com.bonc.fastsite.modules.demo.dao;

import com.bonc.fastsite.common.persistence.CrudDao;
import com.bonc.fastsite.common.persistence.annotation.MyBatisDao;
import com.bonc.fastsite.modules.demo.entity.DemoData;

/**
 * 实例DAO接口
 * @author 实例
 * @version 2019-09-05
 */
@MyBatisDao
public interface DemoDataDao extends CrudDao<DemoData> {
	
}