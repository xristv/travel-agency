package gr.trolli.travelAgency.model;


/**
 * A travel package consists of the from and to destinations, its price and
 * expiration date. Type could be flight/cruise/bus tour/hotel
 *
 * @author cvenetsianou
 */
public class TravelPackage {

    private String id;
    private String from;
    private String to;
    private String type;
    private String price;
    private String expiration;

    public TravelPackage() {
    }

    public TravelPackage(String from, String to, String type) {
        this.from = from;
        this.to = to;
        this.type = type;
    }

    public TravelPackage(String id, String from, String to, String type, String price, String expiration) {
        this.id = id;
        this.from = from;
        this.to = to;
        this.type = type;
        this.price = price;
        this.expiration = expiration;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getExpiration() {
        return expiration;
    }

    public void setExpiration(String expiration) {
        this.expiration = expiration;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
