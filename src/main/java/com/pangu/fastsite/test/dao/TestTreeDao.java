package com.pangu.fastsite.test.dao;

import com.pangu.fastsite.common.persistence.TreeDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.test.entity.TestTree;

/**
 * 树结构生成DAO接口
 * @author Fastsite
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}