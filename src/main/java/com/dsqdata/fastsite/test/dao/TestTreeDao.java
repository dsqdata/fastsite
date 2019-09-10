package com.dsqdata.fastsite.test.dao;

import com.dsqdata.fastsite.common.persistence.TreeDao;
import com.dsqdata.fastsite.common.persistence.annotation.MyBatisDao;
import com.dsqdata.fastsite.test.entity.TestTree;

/**
 * 树结构生成DAO接口
 * @author Fastsite
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}