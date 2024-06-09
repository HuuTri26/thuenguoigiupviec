package ptithcm.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.ContractDAO;
import ptithcm.dao.MaidDAO;
import ptithcm.entity.ContractEntity;
import ptithcm.entity.MaidEntity;

@Service
@Transactional
public class MaidServiceImpl implements MaidService {

	@Autowired
	MaidDAO MaidDAO;

	@Autowired
	ContractDAO ContractDAO;

	@Override
	public List<MaidEntity> getListMaid() {
		List<MaidEntity> maids = MaidDAO.getListMaid();
		return updateMaidStatus(maids);
	}

	@Override
	public void addMaid(MaidEntity maid) {
		MaidDAO.addMaid(maid);
	}

	@Override
	public MaidEntity getMaidById(Integer id) {
		return MaidDAO.getMaidById(id);
	}

	@Override
	public void updateMaid(MaidEntity maid) {
		MaidDAO.updateMaid(maid);

	}

	@Override
	public List<MaidEntity> getListFullTimeMaids() {
		return MaidDAO.getListFullTimeMaids();

	}

	@Override
	public Boolean isAvalaiblePartTimeMaid(MaidEntity maid, Date currentDate) {
		Boolean isAvail = Boolean.FALSE;
		List<ContractEntity> contracts = maid.getContracts();

		for (ContractEntity contract : contracts) {
			if (contract.getEndAt() != null && contract.getEndAt().after(currentDate)) {
				isAvail = Boolean.TRUE;
				break;
			}
		}
		return (contracts.isEmpty()) ? Boolean.FALSE : isAvail;
	}

	@Override
	public List<MaidEntity> updateMaidStatus(List<MaidEntity> maids) {
		/* List<MaidEntity> maids = MaidDAO.getListPartTimeMaids(); */

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedCurrentDate = dateFormat.format(new Date());
		Date currentDate = null;
		try {
			currentDate = dateFormat.parse(formattedCurrentDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		for (MaidEntity maid : maids) {
			if (maid.getEmploymentType().booleanValue()) {
				continue;
			}
			List<ContractEntity> contracts = maid.getContracts();
			Boolean hasActiveContract = Boolean.FALSE;
			Boolean hasPendingContract = Boolean.FALSE;

			for (ContractEntity contract : contracts) {
				if (contract.getStartAt().after(currentDate)) {
					hasPendingContract = Boolean.TRUE;
					break;
				} else if (contract.getEndAt().after(currentDate)) {
					hasActiveContract = Boolean.TRUE;
					break;
				}
			}

			if (hasActiveContract)
				maid.setStatus("Đang bận");
			else if (hasPendingContract)
				maid.setStatus("Không khả dụng");
			else
				maid.setStatus("Rảnh");

		}
		return maids;
	}
}
