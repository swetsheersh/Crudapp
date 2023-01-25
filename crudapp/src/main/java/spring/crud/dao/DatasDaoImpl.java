package spring.crud.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.crud.model.Datas;
@Repository
public class DatasDaoImpl implements DatasDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	@Override
	public int insert(Datas datas) {
		//insert
		Integer i=(Integer)this.hibernateTemplate.save(datas);
		return i;
	}

	@Override
	public Datas fetchfromtable(int id) {
		Datas datas= this.hibernateTemplate.get(Datas.class, id);
		return datas;
	}

	@Override
	public List<Datas> getallfromtable() {
		List<Datas> datas = this.hibernateTemplate.loadAll(Datas.class);
		return datas;
	}
	@Transactional
	@Override
	public void delfromtable(int id) {
		Datas datas=this.hibernateTemplate.get(Datas.class, id);
		this.hibernateTemplate.delete(datas);
		
	}
	@Transactional
	@Override
	public void updatetable(Datas datas) {
		this.hibernateTemplate.update(datas);
		
	}

}
