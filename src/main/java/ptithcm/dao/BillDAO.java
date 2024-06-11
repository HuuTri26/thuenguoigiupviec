package ptithcm.dao;


import java.util.List;

import ptithcm.entity.BillEntity;

public interface BillDAO {
	public List<BillEntity> getListBill();
	public void createBill(BillEntity bill);
	public void updateBill(BillEntity bill);
	public BillEntity getBillById(int bill);
}