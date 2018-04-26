package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.PasswordEncryption;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends Command {

    PasswordEncryption PE = new PasswordEncryption();

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String phonenumber = request.getParameter("phonenumber");

        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        if (password1.equals(password2)) {

            byte[] salt = null;
            salt = PE.genereteSalt();
            byte[] password = null;
            password = PE.getEncryptedPassword(password1, salt);
            User user = null;
            try {
                user = LogicFacade.createUser(0, username, email, password, email);
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("role", user.getRole());
            return user.getRole() + "page";
        } else {
            throw new LoginSampleException("the two passwords did not match");
        }
    }

}
