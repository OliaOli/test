package usermanager.dao;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import usermanager.model.User;

import java.util.List;

import org.hibernate.Session;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(user);
    }

    @Override
    public void updateUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
    }

    @Override
    public void deleteUser(Integer id) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        if (user != null) {
            session.delete(user);
        }
    }

    @Override
    public User getUser(Integer id) {
        Session session =sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        return user;
    }

    @Override
    public List<User> getAllUsers() {
        Session session = sessionFactory.getCurrentSession();
        List<User> userList = session.createQuery("FROM User").list();
        return userList;
    }
}
