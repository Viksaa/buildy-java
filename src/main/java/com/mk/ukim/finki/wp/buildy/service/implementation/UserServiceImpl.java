package com.mk.ukim.finki.wp.buildy.service.implementation;

import com.mk.ukim.finki.wp.buildy.mapper.UserMapper;
import com.mk.ukim.finki.wp.buildy.model.dto.UserDto;
import com.mk.ukim.finki.wp.buildy.model.entity.Role;
import com.mk.ukim.finki.wp.buildy.model.entity.User;
import com.mk.ukim.finki.wp.buildy.model.exception.BuildyNotFoundException;
import com.mk.ukim.finki.wp.buildy.model.exception.ErrorCodes;
import com.mk.ukim.finki.wp.buildy.model.request.user.LoginRequest;
import com.mk.ukim.finki.wp.buildy.model.request.user.RegisterRequest;
import com.mk.ukim.finki.wp.buildy.persistance.RoleRepository;
import com.mk.ukim.finki.wp.buildy.persistance.UserRepository;
import com.mk.ukim.finki.wp.buildy.service.UserService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    private final PasswordEncoder passwordEncoder;

    private final RoleRepository roleRepository;

    public UserServiceImpl(UserRepository userRepository,
                           PasswordEncoder passwordEncoder,
                           RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.roleRepository = roleRepository;
    }

    @Override
    public UserDto login(LoginRequest userRequest) {
        User user = userRepository
                .findUserByUsername(userRequest.username)
                .orElseThrow(() -> new BuildyNotFoundException(ErrorCodes.USER_NOT_FOUND));

        return UserMapper.toUserDto(user);
    }

    @Override
    public User loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository
                .findUserByUsername(username)
                .orElseThrow(() -> new BuildyNotFoundException(ErrorCodes.USER_NOT_FOUND));
    }

    @Override
    public UserDto register(RegisterRequest registerRequest) {
        User user = new User();

        user.setUid(UUID.randomUUID());
        user.setFirstName(registerRequest.firstName);
        user.setLastName(registerRequest.lastName);
        user.setEmailAddress(registerRequest.emailAddress);
        user.setUsername(registerRequest.username);
        user.setPasswordHash(passwordEncoder.encode(registerRequest.password));
        user.setDateOfBirth(registerRequest.dateOfBirth);
        user.setGender(registerRequest.gender);

        Role role = roleRepository.findUserRole();
        user.setRoles(Collections.singletonList(role));

        User savedUser = userRepository.save(user);

        return UserMapper.toUserDto(savedUser);
    }
}
