package gr.trolli.travelAgency.web;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author cvenetsianou
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String home(HttpSession session) {
        if (session.getAttribute("username") == null) {
            return "redirect:/login";
        } else {
            return "home";
        }
    }
}
