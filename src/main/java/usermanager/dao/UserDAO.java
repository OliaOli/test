package usermanager.dao;

import usermanager.model.User;

import java.util.List;

public interface UserDAO {
    void addUser(User user);

    void updateUser(User user);

    void deleteUser(Integer id);

    User getUser(Integer id);

    List<User> getAllUsers();
}
