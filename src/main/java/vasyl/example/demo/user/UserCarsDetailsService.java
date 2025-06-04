package vasyl.example.demo.user;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserCarsDetailsService implements UserDetailsService {
    private final UserCarsRepository userCarsRepository;

    public UserCarsDetailsService(UserCarsRepository userCarsRepository) {
        this.userCarsRepository = userCarsRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        var userCars = userCarsRepository.findByUserName(username);
        if (userCars.isPresent()) {
            var blogPlatformUserObj = userCars.get();
            return User.builder()
                    .username(blogPlatformUserObj.getUserName())
                    .password(blogPlatformUserObj.getPassword())
                    .roles(blogPlatformUserObj.getRole())
                    .build();
        } else {
            throw new UsernameNotFoundException("Username not found: " + username);
        }
    }
}
