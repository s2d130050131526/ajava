package action;

public class LoginHandler {
    boolean authenticate(String name,String pwd){
        if(name.equals("admin")&& pwd.equals("admin")){
            return true;
        }
        return false;
    }
    
}
