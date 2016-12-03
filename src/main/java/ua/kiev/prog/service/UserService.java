package ua.kiev.prog.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.kiev.prog.dao.RoleDAO;
import ua.kiev.prog.dao.UserDAO;
import ua.kiev.prog.model.Role;
import ua.kiev.prog.model.User;

import java.util.List;
@Service
public class UserService {
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private RoleDAO roleDAO;

    @Transactional
    public void addUser(User user) {
        userDAO.add(user);
    }

    @Transactional
    public void addRole(Role role) {
        roleDAO.add(role);
    }

    @Transactional(readOnly = true)
    public User findUser(String username) {
        return userDAO.findOne(username);
    }

    @Transactional(readOnly = true)
    public List<User> listUsers(String username) {
        return userDAO.list(username);
    }
}
