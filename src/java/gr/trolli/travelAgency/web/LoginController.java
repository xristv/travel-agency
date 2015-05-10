package gr.trolli.travelAgency.web;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author cvenetsianou
 */
@Controller
public class LoginController {

    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    /**
     * Checks if the login credentials are the correct ones.
     * @param username
     * @param password
     * @param session
     * @return 
     */
    @ResponseBody
    @RequestMapping(value = "/login/check")
    public String loginCheck(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
        String status = "";
        
        if(!"SCIFY-AGENT".equals(username) || !"1234".equals(password))
            status="forbidden";
        else{
            status="ok";     
            session.setAttribute("username", username);
        }
        return status;
    }

}
