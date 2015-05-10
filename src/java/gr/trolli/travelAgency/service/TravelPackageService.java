package gr.trolli.travelAgency.service;

import gr.trolli.travelAgency.model.TravelPackage;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author cvenetsianou
 */
@Service
public class TravelPackageService {
    
    //Get some dummy data
    public List<TravelPackage> getTravelPackages(){
        List<TravelPackage> travelPackages = new ArrayList<>();
        
        TravelPackage travelPackage = new TravelPackage("TP0001", "Athens", "Paris", "Flight", "350.80", "30/08/2015");
        travelPackages.add(travelPackage);
        travelPackage = new TravelPackage("TP0002", "Athens", "Chania", "Cruise", "420.00", "30/11/2015");
        travelPackages.add(travelPackage);
        travelPackage = new TravelPackage("TP0003", "New York", "California", "Flight", "1000.80", "30/08/2015");
        travelPackages.add(travelPackage);
        travelPackage = new TravelPackage("TP0004", "Earth", "Aries", "Space Rocket Tour", "52000", "12/12/2099");
        travelPackages.add(travelPackage);
        travelPackage = new TravelPackage("TP0005", "Athens", "Thessaloniki", "Bus Tour", "120.50", "05/07/2015");
        travelPackages.add(travelPackage);
        travelPackage = new TravelPackage("TP0006", "Athens", "Tokyo", "Flight", "1500.50", "10/08/2015");
        travelPackages.add(travelPackage);
        travelPackage = new TravelPackage("TP0007", "Athens", "Egypt", "Flight", "600", "12/12/2015");
        travelPackages.add(travelPackage);
        travelPackage = new TravelPackage("TP0008", "Earth", "Aries", "Space Rocket Tour", "52000", "12/12/2099");
        travelPackages.add(travelPackage);
        
        return travelPackages;
    }
}
