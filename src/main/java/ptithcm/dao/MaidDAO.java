package ptithcm.dao;

import java.util.List;

import ptithcm.entity.MaidEntity;

public interface MaidDAO {
	public List<MaidEntity> getListMaid();
	public void addMaid(MaidEntity maid);
	public void updateMaid(MaidEntity maid);
	public MaidEntity getMaidById(Integer id);
	public List<MaidEntity> getListFullTimeMaids();
	public List<MaidEntity> getMaidSelectedListBybookingId(Integer bookingId);
	public List<MaidEntity> getListMaidPartTime();
}
