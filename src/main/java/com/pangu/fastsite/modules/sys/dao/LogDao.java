package com.pangu.fastsite.modules.sys.dao;

import com.pangu.fastsite.common.persistence.CrudDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.modules.sys.entity.Log;

/**
 * 日志DAO接口
 */
@MyBatisDao
public interface LogDao extends CrudDao<Log> {

}
