package gr.trolli.travelAgency.model;

import java.util.List;

/**
 *
 * @author cvenetsianou
 */
public class Customer extends Person {

    private List<Booking> bookings;

    public Customer() {
    }

    public List<Booking> getBookings() {
        return bookings;
    }

    public void setBookings(List<Booking> bookings) {
        this.bookings = bookings;
    }

}
