/**
 *
 */
package com.dsqdata.fastsite.test.dao;

import com.dsqdata.fastsite.common.persistence.CrudDao;
import com.dsqdata.fastsite.common.persistence.annotation.MyBatisDao;
import com.dsqdata.fastsite.test.entity.TestData;

/**
 * 单表生成DAO接口
 * @author Fastsite
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestDataDao extends CrudDao<TestData> {
	
}