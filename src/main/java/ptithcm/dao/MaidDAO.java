package ptithcm.dao;

import java.util.List;

import ptithcm.entity.MaidEntity;

public interface MaidDAO {
	public List<MaidEntity> getListMaid();
	public void addMaid(MaidEntity maid);
}
