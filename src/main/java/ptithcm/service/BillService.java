package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.BillEntity;

@Transactional
@Service
public interface BillService {
	public void createBill(BillEntity bill);
}
