package vasyl.example.demo.security;

import org.hibernate.annotations.Comment;
import org.springframework.stereotype.Component;

@Component
public class AppAuthenticationInfoFacade implements AuthenticationInfoFacade{
    @Override
    public boolean isAuthenticated() {
        return false;
    }

    @Override
    public boolean isAdmin() {
        return false;
    }

    @Override
    public String getUsername() {
        return "";
    }
}
