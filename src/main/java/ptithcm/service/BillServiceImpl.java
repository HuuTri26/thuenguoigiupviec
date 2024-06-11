package ptithcm.service;

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
	
}
