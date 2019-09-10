/**
 *
 */
package com.pangu.fastsite.modules.cms.dao;

import com.pangu.fastsite.common.persistence.CrudDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.modules.cms.entity.Guestbook;

/**
 * 留言DAO接口
 * @author Fastsite
 * @version 2013-8-23
 */
@MyBatisDao
public interface GuestbookDao extends CrudDao<Guestbook> {

}
