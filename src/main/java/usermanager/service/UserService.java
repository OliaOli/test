package usermanager.service;

import usermanager.model.User;

import java.util.List;

public interface UserService {
    void addUser(User user);

    void updateUser(User user);

    void deleteUser(Integer id);

    User getUser(Integer id);

    List<User> getAllUsers();
}
