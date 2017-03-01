import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;
/**
 * 
 * @author DuocNguyen
 *
 */
public class seatBooking2 {
	public static void main(String[] args) throws FileNotFoundException {
		
		//flightNumber starting 1000 - 1050
		//print passengerID,flightNumber,"seat"
		//5 attendants per flight and 2 pilots per flight	select from staff--
		//50 flights per week 
		//10 passengers per flight at random seat ----select from nonstaff
		
		
		//gets the nonstaff passengerID
		ArrayList<String> nonstaff = getNonStaffID();
		//System.out.println(nonstaff.size());
		
		//gets pilotID
		ArrayList<String> pilots = getPilotsPassID(0,20);
		//System.out.println(pilots.size());
		
		//gets attendantsID
		ArrayList<String> attendants = getPilotsPassID(20,70);
		//System.out.println(attendants.size());
		
		//gets staffID
		//ArrayList<String> staff = getStaffID();
		
		//gets seatBooking
		ArrayList<String> seats = getSeatBooking();
		//System.out.println(seats.size());
		
		
		
		int N = 0;
		int P = 0;
		int A = 0;
		
		
		for(int i = 1000; i < 1044; i++){
			int S = 0;
			for(int k = 0; k < 2; k++) {
				//add 2 pilots
				if(P == 20){
					P = 0;
				}
				System.out.println( i + ",\"" +pilots.get(P)+ "\"");
				P++;
				S++;
			}
			for(int k = 0; k < 5; k++){
				//adds 5 attendants
				if(A == 50){
					A= 0;
				}
				System.out.println(i + ",\"" + attendants.get(A) + "\"");
				A++;
				S++;
			}
			int min = 8;
			int max = 74;
			Random r = new Random();
			int pass = 0;
			if((i % 2) == 0) {
				pass = 8;
			} else {
				pass = 10;
			}
			for(int k = 0; k < 10;k++){
				if(N == 50){
					N = 0;
				}
				//adds 10 passengers
				S = r.nextInt(max-min+1) + min;
				//System.out.println(nonstaff.get(N) + "," + i + ",\"" + seats.get(S) + "\"");
				N++;
			}
			
			
		}
		
	}
	
	public static ArrayList<String> getNonStaffID() throws FileNotFoundException {
		ArrayList<String> result = new ArrayList<String>();
		File nonstaff = new File("nonstaff.txt");
		Scanner sc = new Scanner(nonstaff);
		while(sc.hasNext()) {
			result.add(sc.nextLine().replaceAll("\"", ""));
		}
		return result;
		
	}
	
	public static ArrayList<String> getStaffID() throws FileNotFoundException{
		File staff1 = new File("staff1.txt");
		Scanner sc = new Scanner(staff1);
		ArrayList<String> result = new ArrayList<>();
		while(sc.hasNext()){
			String[] tokens = sc.nextLine().replaceAll("\"", "").split(",");
			result.add(tokens[0]);
		}
		
		return result;
	}
	
	
	
	public static ArrayList<String> getPilotsPassID(int start, int end) throws FileNotFoundException{
		ArrayList<String> result = new ArrayList<String>();
		File staff1 = new File("staff1.txt");
		File staff2 = new File("staff2.txt");
		ArrayList<String> staffsID = new ArrayList<String>();
		Scanner sc1 = new Scanner(staff1);
		Scanner sc2 = new Scanner(staff2);
		
		int k = 0;
		while(k < start){
			sc1.nextLine();
			k++;
		}
		
		int i = start; 
		while(i < end && sc1.hasNextLine()) {
			String[] tokens = sc1.nextLine().replaceAll("\"", "").split(",");
			staffsID.add(tokens[0]);
			i++;
		}
		
		while(sc2.hasNextLine()) {
			String[] tokens = sc2.nextLine().replaceAll("\"", "").split(",");
			String staffID = tokens[1];
			if(staffsID.contains(staffID)){
				result.add(tokens[0]);
			}
		}
		
		return staffsID;
	}
	
	public static ArrayList<String> getSeatBooking() throws FileNotFoundException{
		ArrayList<String> result = new ArrayList<String>();
		File seatBooking = new File("seatbooking1.txt");
		Scanner sc = new Scanner(seatBooking);
		
		while(sc.hasNextLine()) {
			String[] tokens = sc.nextLine().replaceAll("\"", "").split(",");
			result.add(tokens[0]);
		}
		
		return result;
	}
	
}
