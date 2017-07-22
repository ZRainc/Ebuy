package org.fkit.ebuy.service;

import java.util.List;


import org.fkit.ebuy.domain.Collect;


/**
 * Collect服务层接口
 * */
public interface CollectService {
	
	List<Collect> getAll();
	Collect findCollect(int product_id);
	Collect saveCollect(int product_id);
	Collect removeCollect(int product_id);
	void clearCollect();

}
