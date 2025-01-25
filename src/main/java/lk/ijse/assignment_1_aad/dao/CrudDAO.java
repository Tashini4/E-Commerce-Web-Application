package lk.ijse.assignment_1_aad.dao;

import java.sql.SQLException;
import java.util.List;

public interface CrudDAO<T> extends SuperDAO {
    public boolean save(T entity) throws Exception;
    public boolean update(T entity) throws Exception;
    public boolean delete(int id) throws Exception;
    public List<T> getAll() throws SQLException,ClassNotFoundException;
}
