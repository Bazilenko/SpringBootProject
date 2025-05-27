package vasyl.example.demo.security;

public interface AuthenticationInfoFacade {
    boolean isAuthenticated();
    boolean isAdmin();
    String getUsername();
}
