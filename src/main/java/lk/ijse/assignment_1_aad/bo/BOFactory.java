package lk.ijse.assignment_1_aad.bo;

import lk.ijse.assignment_1_aad.bo.custom.impl.*;

public class BOFactory {
    private static BOFactory boFactory;
    private BOFactory(){
    }
    public static BOFactory getBoFactory(){
        return (boFactory == null) ? boFactory = new BOFactory() : boFactory;
    }
    public enum BoType{
        USER,LOGIN,CATEGORY,ORDER,ORDER_DETAIL,CART,PRODUCT
    }
    public SuperBO getBo(BoType boType){
        switch (boType){
            case LOGIN:
                return new LoginBOImpl();
            case CATEGORY:
                return new CategoryBOImpl();
            /*case CART:
                return new CartBOImpl();*/
            case USER:
                return new UserBOImpl();
            case PRODUCT:
                return new ProductBOImpl();
            /*case ORDER_DETAIL:
                return new Order_detailsBOImpl();
            case ORDER:
                return new OrderBOImpl();*/
            default:
                return null;
        }
    }
}
