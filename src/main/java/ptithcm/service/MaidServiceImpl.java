package ptithcm.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.BookingDAO;
import ptithcm.dao.ContractDAO;
import ptithcm.dao.MaidDAO;
import ptithcm.entity.BookingEntity;
import ptithcm.entity.ContractEntity;
import ptithcm.entity.MaidEntity;

@Service
@Transactional
public class MaidServiceImpl implements MaidService {

	@Autowired
	MaidDAO MaidDAO;

	@Autowired
	ContractDAO ContractDAO;

	@Autowired
	BookingDAO BookingDAO;

	@Autowired
	BookingService bookingService;

	@Override
	public List<MaidEntity> getListMaid() {
		List<MaidEntity> maids = MaidDAO.getListMaid();
		return updateListMaidStatus(maids);
	}

	@Override
	public void addMaid(MaidEntity maid) {
		MaidDAO.addMaid(maid);
	}

	@Override
	public MaidEntity getMaidById(Integer id) {
		MaidEntity maid = MaidDAO.getMaidById(id);
		return updateMaidStatus(maid);
	}

	@Override
	public void updateMaid(MaidEntity maid) {
		MaidDAO.updateMaid(maid);

	}

	@Override
	public List<MaidEntity> getListFullTimeMaids() {
		List<MaidEntity> maids = MaidDAO.getListFullTimeMaids();
		return updateListMaidStatus(maids);

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
	public List<MaidEntity> updateListMaidStatus(List<MaidEntity> maids) {
		/* List<MaidEntity> maids = MaidDAO.getListPartTimeMaids(); */

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		String formattedCurrentDate = dateFormat.format(new Date());
		Date currentDate = null;
		try {
			currentDate = dateFormat.parse(formattedCurrentDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		for (MaidEntity maid : maids) {
			if (maid.getEmploymentType().booleanValue()) { // Người giúp việc PartTime
				List<BookingEntity> bookings = bookingService.getActiveBookingListByMaidId(maid.getId());
				Boolean isFree = Boolean.TRUE;
				for (BookingEntity bk : bookings) {
					Date maidStartTime = bk.getStartTime();
					long duration = bk.getService().getTime();

					long startBuffer = maidStartTime.getTime();
					long endBuffer = maidStartTime.getTime() + duration;

					if (currentDate.getTime() >= startBuffer && currentDate.getTime() <= endBuffer) {
						isFree = false;
						break;
					}

				}

				if (isFree) {
					maid.setStatus("Rảnh");
				} else {
					maid.setStatus("Đang bận");
				}

			} else {
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

		}
		return maids;
	}

	@Override
	public List<MaidEntity> getListMaidSelectedListByBookingId(Integer bookingId) {
		// TODO Auto-generated method stub
		return MaidDAO.getMaidSelectedListBybookingId(bookingId);
	}

	@Override
	public List<MaidEntity> getListMaidPartTime() {
		List<MaidEntity> maids = MaidDAO.getListMaidPartTime();
		return updateListMaidStatus(maids);
	}

	@Override
	public MaidEntity getMaidByEmail(String email) {
		MaidEntity maid = MaidDAO.getMaidByEmail(email);
		return updateMaidStatus(maid);
	}

	@Override
	public MaidEntity updateMaidStatus(MaidEntity maid) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedCurrentDate = dateFormat.format(new Date());
		Date currentDate = null;
		try {
			currentDate = dateFormat.parse(formattedCurrentDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		if (maid.getEmploymentType() == Boolean.FALSE) { // Người giúp việc là FullTime
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
		} else {
			List<BookingEntity> bookings = bookingService.getActiveBookingListByMaidId(maid.getId());
			Boolean isFree = Boolean.TRUE;
			for (BookingEntity bk : bookings) {
				Date maidStartTime = bk.getStartTime();
				long duration = bk.getService().getTime();

				long startBuffer = maidStartTime.getTime();
				long endBuffer = maidStartTime.getTime() + duration;

				if (currentDate.getTime() >= startBuffer && currentDate.getTime() <= endBuffer) {
					isFree = Boolean.FALSE;
				}

			}

			if (isFree) {
				maid.setStatus("Rảnh");
			} else {
				maid.setStatus("Đang bận");
			}
		}

		return maid;
	}

}
