package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.BillEntity;

@Transactional
@Service
public interface BillService{
	public void createBill(BillEntity bill);
	public List<BillEntity> getListBill();
	public List<BillEntity> getListBillBy(Integer customerId);
}
