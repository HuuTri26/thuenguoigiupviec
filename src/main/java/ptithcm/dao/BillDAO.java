package ptithcm.dao;

import java.util.List;

import ptithcm.entity.BillEntity;

public interface BillDAO {
	public void createBill(BillEntity bill);
	public List<BillEntity> getListBill();
	public List<BillEntity> getBillListBy(Integer customerId);
}
