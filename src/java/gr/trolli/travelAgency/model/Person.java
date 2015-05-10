package gr.trolli.travelAgency.model;

import java.util.Date;

/**
 * A Person.
 *
 * @author cvenetsianou
 */
public class Person {

    private String id;
    private String fullName;
    private Date dateOfBirth;
    private String address;
    private String phoneNumber;

    public Person() {
    }

    public Person(String fullName) {
        this.fullName = fullName;
    }

    public Person(String id, String fullName, Date dateOfBirth, String address, String phoneNumber) {
        this.id = id;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.phoneNumber = phoneNumber;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

}
