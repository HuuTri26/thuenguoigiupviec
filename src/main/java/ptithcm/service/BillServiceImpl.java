package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.BillDAO;
import ptithcm.entity.BillEntity;
import ptithcm.entity.BookingEntity;

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
	public void updateBill(BillEntity bill) {
		BillDAO.updateBill(bill);
		
	}

	@Override
	public List<BillEntity> getListBill() {
		return BillDAO.getListBill();
	}

	@Override
	public BillEntity getBillById(int billId) {
		return BillDAO.getBillById(billId);
	}


}
