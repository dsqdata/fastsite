/**
 *
 */
package com.dsqdata.fastsite.modules.cms.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsqdata.fastsite.common.service.CrudService;
import com.dsqdata.fastsite.modules.cms.dao.ArticleDataDao;
import com.dsqdata.fastsite.modules.cms.entity.ArticleData;

/**
 * 站点Service
 * @author Fastsite
 * @version 2013-01-15
 */
@Service
@Transactional(readOnly = true)
public class ArticleDataService extends CrudService<ArticleDataDao, ArticleData> {

}
