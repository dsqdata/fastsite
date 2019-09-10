/**
 */
package com.pangu.fastsite.modules.oa.dao;

import com.pangu.fastsite.common.persistence.CrudDao;
import com.pangu.fastsite.common.persistence.annotation.MyBatisDao;
import com.pangu.fastsite.modules.oa.entity.TestAudit;

/**
 * 审批DAO接口
 * @author Fastsite
 * @version 2014-05-16
 */
@MyBatisDao
public interface TestAuditDao extends CrudDao<TestAudit> {

	public TestAudit getByProcInsId(String procInsId);
	
	public int updateInsId(TestAudit testAudit);
	
	public int updateHrText(TestAudit testAudit);
	
	public int updateLeadText(TestAudit testAudit);
	
	public int updateMainLeadText(TestAudit testAudit);
	
}
