package gr.trolli.travelAgency.model;

/**
 * A Booking is responsible for keeping all info like dates of departure and
 * arrival, and also the TravelPackage, the Customer and the TravelAgent that
 * made the booking.
 *
 * @author cvenetsianou
 */
public class Booking {

    private String id;
    private String fromDate;
    private String toDate;
    private TravelPackage travelPackage;
    private Customer customer;
    private TravelAgent travelAgent;

    public Booking() {
    }

    public Booking(String id, String fromDate, String toDate, TravelPackage travelPackage, Customer customer, TravelAgent travelAgent) {
        this.id = id;
        this.fromDate = fromDate;
        this.toDate = toDate;
        this.travelPackage = travelPackage;
        this.customer = customer;
        this.travelAgent = travelAgent;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFromDate() {
        return fromDate;
    }

    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }

    public TravelPackage getTravelPackage() {
        return travelPackage;
    }

    public void setTravelPackage(TravelPackage travelPackage) {
        this.travelPackage = travelPackage;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public TravelAgent getTravelAgent() {
        return travelAgent;
    }

    public void setTravelAgent(TravelAgent travelAgent) {
        this.travelAgent = travelAgent;
    }

}
