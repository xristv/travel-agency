package gr.trolli.travelAgency.service;

import gr.trolli.travelAgency.model.Booking;
import gr.trolli.travelAgency.model.Customer;
import gr.trolli.travelAgency.model.TravelAgent;
import gr.trolli.travelAgency.model.TravelPackage;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author cvenetsianou
 */
@Service
public class FileManagerService {
    
    private static final String UPLOAD_DIR = "/travelAgency_uploads/";
    //private static final String UPLOAD_DIR = "/c:/travelAgency_uploads/";

    private static final String[] FILE_HEADER_MAPPING = {"Username", "BookingId", "CustomerName", "Type", "Origin", "Destination", "From", "To"};

    /**
     * Uploads a file to a specific folder 
     * @param file
     * @return 
     */
    public String uploadFile(MultipartFile file) {
        String filePath = "";
        try {
            File fileToUpload = new File(UPLOAD_DIR + file.getOriginalFilename());
            file.transferTo(fileToUpload);
            filePath = fileToUpload.getName();
        } catch (IOException | IllegalStateException ex) {
            System.out.println(ex.getMessage());
        }
        return UPLOAD_DIR + filePath;
    }

    /**
     * Gets a CSV file and parses it. 
     * To create a booking, we must first create a Customer, a TravelAgent and a TravelPackage
     * @param file
     * @return 
     */
    public List<Booking> csvToBookings(MultipartFile file) {
        List<Booking> bookings = new ArrayList<>();

        FileReader fileReader = null;
        CSVParser csvFileParser = null;
        //Create the CSVFormat object with the header mapping
        CSVFormat csvFileFormat = CSVFormat.DEFAULT.withHeader(FILE_HEADER_MAPPING);
        try {
            //initialize FileReader object
            fileReader = new FileReader(uploadFile(file));
            //initialize CSVParser object
            csvFileParser = new CSVParser(fileReader, csvFileFormat);
            //Get a list of CSV file records
            List csvRecords = csvFileParser.getRecords();

            //Read the CSV file records starting from the second record to skip the header
            for (int i = 1; i < csvRecords.size(); i++) {
                CSVRecord record = (CSVRecord) csvRecords.get(i);
                Customer customer = new Customer();
                customer.setFullName(record.get("CustomerName"));
                TravelAgent travelAgent = new TravelAgent(record.get("Username"));
                TravelPackage travelPackage = new TravelPackage(record.get("Origin"), record.get("Destination"), record.get("Type"));

                Booking booking = new Booking(record.get("BookingId"), record.get("From"), record.get("To"), travelPackage, customer, travelAgent);
                bookings.add(booking);
                fileReader.close();
                csvFileParser.close();
            }
        } catch (Exception e) {
            System.out.println("Error in CsvFileReader: "+e.getMessage());
        }
        return bookings;
    }
}
