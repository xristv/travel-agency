package gr.trolli.travelAgency.web;

import gr.trolli.travelAgency.model.Booking;
import gr.trolli.travelAgency.model.TravelPackage;
import gr.trolli.travelAgency.service.FileManagerService;
import gr.trolli.travelAgency.service.TravelPackageService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author cvenetsianou
 */
@Controller
@RequestMapping(value = "/bookings")
public class BookingController {

    @Autowired
    FileManagerService fileManagerService;
    @Autowired
    TravelPackageService travelPackageService;

    @RequestMapping(value = "/")
    public String viewAll(HttpSession session, Model model) {
        model.addAttribute("username", session.getAttribute("username"));
        return "bookings/all";
    }

    @RequestMapping(value = "/new")
    public String newBooking(Model model) {
        List<TravelPackage> travelPackages = travelPackageService.getTravelPackages();
        model.addAttribute("travelPackages", travelPackages);
        return "bookings/new";
    }

    @ResponseBody
    @RequestMapping(value = "/new/upload", method = RequestMethod.POST)
    public List<Booking> getBookingsFromCSV(@RequestParam(value = "file") MultipartFile file) {
        return fileManagerService.csvToBookings(file);
    }
}
