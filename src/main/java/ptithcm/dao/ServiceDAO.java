package ptithcm.dao;

import java.util.List;

import ptithcm.entity.ServiceEntity;

public interface ServiceDAO {
	public List<ServiceEntity> getListService();
	public void addService(ServiceEntity service);
	public void updateService(ServiceEntity service);

}
