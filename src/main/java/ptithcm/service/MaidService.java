package ptithcm.service;

import java.util.Date;
import java.util.List;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.MaidEntity;

@Service
@Transactional
public interface MaidService {
	public List<MaidEntity> getListMaid();
	public void addMaid(MaidEntity maid);
	public void updateMaid(MaidEntity maid);
	public MaidEntity getMaidById(Integer id);
	public List<MaidEntity> getListFullTimeMaids();
	public Boolean isAvalaiblePartTimeMaid(MaidEntity maid, Date currentDate);
	public List<MaidEntity> updateMaidStatus(List<MaidEntity> maids);
	public List<MaidEntity> getListMaidSelectedListByBookingId(Integer bookingId);
	public List<MaidEntity> getListMaidPartTime();
}
