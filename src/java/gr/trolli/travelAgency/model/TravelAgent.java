package gr.trolli.travelAgency.model;

/**
 * A TravelAgent is basically and employee of the travel agency office. They
 * have credentials used for the admin panel.
 *
 * @author cvenetsianou
 */
public class TravelAgent extends Person {

    private String username;
    private String password;
    private Long salary;

    public TravelAgent() {
    }   
    
    public TravelAgent(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Long getSalary() {
        return salary;
    }

    public void setSalary(Long salary) {
        this.salary = salary;
    }

}
