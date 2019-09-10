/**
 *
 */
package com.pangu.fastsite.test.dao;

import com.pangu.fastsite.common.persistence.CrudDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.test.entity.TestData;

/**
 * 单表生成DAO接口
 * @author Fastsite
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestDataDao extends CrudDao<TestData> {
	
}