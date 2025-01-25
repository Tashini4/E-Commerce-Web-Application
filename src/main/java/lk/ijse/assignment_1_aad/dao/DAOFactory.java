package lk.ijse.assignment_1_aad.dao;

import lk.ijse.assignment_1_aad.dao.custom.impl.*;

public class DAOFactory {
    private static DAOFactory daoFactory;
    private DAOFactory(){
    }
    public static DAOFactory getDaoFactory(){
        return (daoFactory == null) ? daoFactory = new DAOFactory() : daoFactory;
    }
    public enum DaoType{
        USER,LOGIN,PRODUCT,CART,CATEGORY,ORDER,ORDER_DETAIL
    }
    public SuperDAO getDAO (DaoType daoType){
        switch (daoType){
            case LOGIN:
                return new LoginDAOImpl();
            case CATEGORY:
                return new CategoryDAOImpl();
            case ORDER:
                return new OrderDAOImpl();
            case CART:
                return new UserDAOImpl();
            case USER:
                return new Order_detailsDAOImpl();
            case PRODUCT:
                return new ProductDAOImpl();
            case ORDER_DETAIL:
                return new Order_detailsDAOImpl();
            default:
                return null;
        }
    }
}
