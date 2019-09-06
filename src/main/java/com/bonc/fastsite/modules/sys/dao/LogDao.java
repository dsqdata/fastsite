/**
 *
 */
package com.bonc.fastsite.modules.sys.dao;

import com.bonc.fastsite.common.persistence.CrudDao;
import com.bonc.fastsite.common.persistence.annotation.MyBatisDao;
import com.bonc.fastsite.modules.sys.entity.Log;

/**
 * 日志DAO接口
 * @author Fastsite
 * @version 2014-05-16
 */
@MyBatisDao
public interface LogDao extends CrudDao<Log> {

}
