/**
 */
package com.pangu.fastsite.modules.oa.dao;

import java.util.List;

import com.pangu.fastsite.common.persistence.CrudDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.modules.oa.entity.OaNotifyRecord;

/**
 * 通知通告记录DAO接口
 * @author Fastsite
 * @version 2014-05-16
 */
@MyBatisDao
public interface OaNotifyRecordDao extends CrudDao<OaNotifyRecord> {

	/**
	 * 插入通知记录
	 * @param oaNotifyRecordList
	 * @return
	 */
	public int insertAll(List<OaNotifyRecord> oaNotifyRecordList);
	
	/**
	 * 根据通知ID删除通知记录
	 * @param oaNotifyId 通知ID
	 * @return
	 */
	public int deleteByOaNotifyId(String oaNotifyId);
	
}