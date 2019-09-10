package com.dsqdata.fastsite.modules.demo.dao;

import com.dsqdata.fastsite.common.persistence.CrudDao;
import com.dsqdata.fastsite.common.persistence.annotation.MyBatisDao;
import com.dsqdata.fastsite.modules.demo.entity.DemoData;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

/**
 * 实例DAO接口
 * @author 实例
 * @version 2019-09-05
 */
@MyBatisDao
public interface DemoDataDao extends CrudDao<DemoData> {

}