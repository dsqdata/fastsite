package com.pangu.fastsite.modules.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pangu.fastsite.common.persistence.Page;
import com.pangu.fastsite.common.service.CrudService;
import com.pangu.fastsite.modules.demo.entity.DemoData;
import com.pangu.fastsite.modules.demo.dao.DemoDataDao;

/**
 * 实例Service
 * @author 实例
 * @version 2019-09-05
 */
@Service
@Transactional(readOnly = true)
public class DemoDataService extends CrudService<DemoDataDao, DemoData> {

	public DemoData get(String id) {
		return super.get(id);
	}
	
	public List<DemoData> findList(DemoData demoData) {
		return super.findList(demoData);
	}
	
	public Page<DemoData> findPage(Page<DemoData> page, DemoData demoData) {
		return super.findPage(page, demoData);
	}
	
	@Transactional(readOnly = false)
	public void save(DemoData demoData) {
		super.save(demoData);
	}
	
	@Transactional(readOnly = false)
	public void delete(DemoData demoData) {
		super.delete(demoData);
	}
	
}