package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.BillEntity;
import ptithcm.entity.BookingEntity;

@Service
@Transactional
public interface BillService {
	public List<BillEntity> getListBill();
	public void createBill(BillEntity bill);
	public void updateBill(BillEntity bill);
	public BillEntity getBillById(int billId);
}


