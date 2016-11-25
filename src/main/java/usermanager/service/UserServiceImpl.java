package usermanager.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import usermanager.dao.UserDAO;
import usermanager.model.User;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService{
    private UserDAO userDAO;

    public void setUserDao(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Override
    public void addUser(User user) {
        userDAO.addUser(user);
    }

    @Override
    public void updateUser(User user) {
        userDAO.updateUser(user);
    }

    @Override
    public void deleteUser(Integer id) {
        userDAO.deleteUser(id);
    }

    @Override
    public User getUser(Integer id) {
        return userDAO.getUser(id);
    }

    @Override
    public List<User> getAllUsers() {
        return userDAO.getAllUsers();
    }
}
