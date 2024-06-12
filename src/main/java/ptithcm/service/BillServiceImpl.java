package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.BillDAO;
import ptithcm.entity.BillEntity;

@Transactional
@Service
public class BillServiceImpl implements BillService{
	
	@Autowired
	BillDAO BillDAO;

	@Override
	public void createBill(BillEntity bill) {
		BillDAO.createBill(bill);
		
	}

	@Override
	public List<BillEntity> getListBill() {
		return BillDAO.getListBill();
	}

	@Override
	public List<BillEntity> getListBillBy(Integer customerId) {
		return BillDAO.getBillListBy(customerId);
	}
	
}
