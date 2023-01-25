package spring.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.crud.dao.DatasDao;
import spring.crud.model.Datas;



@Service
public class DatasService {
	@Autowired
	private DatasDao datasDao;
	public int insert(Datas datas) {
		return this.datasDao.insert(datas);
	}
	public Datas fetchtable(int id) {
		return this.datasDao.fetchfromtable(id);
	}
	public List<Datas> fetchall(){
		return this.datasDao.getallfromtable();
	}
	public void deltable(int id) {
		this.datasDao.delfromtable(id);
	}
	public void updatetable(Datas datas) {
		this.datasDao.updatetable(datas);
	}
	

}
