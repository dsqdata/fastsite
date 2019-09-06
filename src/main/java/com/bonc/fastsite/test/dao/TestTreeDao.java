package com.bonc.fastsite.test.dao;

import com.bonc.fastsite.common.persistence.TreeDao;
import com.bonc.fastsite.common.persistence.annotation.MyBatisDao;
import com.bonc.fastsite.test.entity.TestTree;

/**
 * 树结构生成DAO接口
 * @author Fastsite
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}