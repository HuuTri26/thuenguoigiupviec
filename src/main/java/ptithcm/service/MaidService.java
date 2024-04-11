package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.MaidEntity;

@Service
@Transactional
public interface MaidService {
	public List<MaidEntity> getListMaid();
	public void addMaid(MaidEntity maid);
}
