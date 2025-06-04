package vasyl.example.demo.user;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import vasyl.example.demo.data.UserCars;

@Service
public class UserCarsService {
    private final UserCarsRepository userCarsRepository;


    private final PasswordEncoder passwordEncoder;

    public UserCarsService(UserCarsRepository userCarsRepository, PasswordEncoder passwordEncoder) {
        this.userCarsRepository = userCarsRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public UserCars signUpClient(UserCarsRequest userCarsRequest) {
        var userCars = userCarsRepository
                .save(mapUserCarsRequestToEntity(userCarsRequest, Role.CLIENT));
        return userCars;
    }

    public UserCars signUpAdmin(UserCarsRequest userCarsRequest) {
        return userCarsRepository.save(mapUserCarsRequestToEntity(userCarsRequest, Role.ADMIN));
    }

    private UserCars mapUserCarsRequestToEntity(UserCarsRequest userCarsRequest,
                                                Role role) {
        var userCars = new UserCars();
        userCars.setFirstName(userCarsRequest.firstName());
        userCars.setLastName(userCarsRequest.lastName());
        userCars.setUserName(userCarsRequest.userName());
        userCars.setPassword(passwordEncoder.encode(userCarsRequest.password()));
        userCars.setRole(role.name());
        return userCars;
    }

}
