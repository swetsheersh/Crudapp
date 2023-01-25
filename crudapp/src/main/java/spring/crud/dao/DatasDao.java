package spring.crud.dao;

import java.util.List;

import spring.crud.model.Datas;

public interface DatasDao {
	public int insert(Datas datas);
	//get the single data(object)
	public Datas fetchfromtable(int id);
	//get all data
	public List<Datas> getallfromtable();
	//delete from table
	public void delfromtable(int id);
	//update
	public void updatetable(Datas datas);
}
