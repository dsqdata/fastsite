/**
 *
 */
package com.pangu.fastsite.modules.cms.dao;

import com.pangu.fastsite.common.persistence.CrudDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.modules.cms.entity.Comment;

/**
 * 评论DAO接口
 * @author Fastsite
 * @version 2013-8-23
 */
@MyBatisDao
public interface CommentDao extends CrudDao<Comment> {

}
