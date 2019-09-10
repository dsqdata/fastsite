/**
 *
 */
package com.dsqdata.fastsite.modules.cms.dao;

import com.dsqdata.fastsite.common.persistence.CrudDao;
import com.dsqdata.fastsite.common.persistence.annotation.MyBatisDao;
import com.dsqdata.fastsite.modules.cms.entity.Comment;

/**
 * 评论DAO接口
 * @author Fastsite
 * @version 2013-8-23
 */
@MyBatisDao
public interface CommentDao extends CrudDao<Comment> {

}
