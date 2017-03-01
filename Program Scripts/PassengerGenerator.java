import java.io.File;
import java.util.Random;
import java.util.Scanner;
/**
 * 
 * @author DuocNguyen
 *	
 */
public class PassengerGenerator {
	public static void main(String[] arg) {
		Random generator = new Random();
		File employeePassengers = new File("employeePassengers.txt");		//nonstaffnames
		File staff1 = new File("staff1.txt");
		//File passengers = new File("employeenames.txt");
		
		//make 20 pilots 
		//make 50 flight attendance
		
		
		int employeeIDMax = 9999;			//4 digits number
		int employeeIDMin = 1000;		
		
		int passMaxNum = 999999999;			//9 digits
		int passMinNum = 100000000;
		
		
		
		int IDMaxNum = 9999999;			//7 digits number
		int IDMinNum = 1000000;
		
		
		
		int numberOfPassengers = 50;
		
		try {
			Scanner sc1 = new Scanner(employeePassengers);
			Scanner sc2 = new Scanner(staff1);
			//Scanner sc = new Scanner(passengers);
			for(int i = 0; i < numberOfPassengers; i++){
				int passportNum = generator.nextInt(passMaxNum - passMinNum + 1) + passMinNum;
				int employeeID = generator.nextInt(employeeIDMax - employeeIDMin + 1) + employeeIDMin;
				int passengerID = generator.nextInt(IDMaxNum - IDMinNum + 1) + IDMinNum;
				//String name = sc.nextLine().trim();				//replaceAll("\\s+","");
				//System.out.println(passengerID + "," + passportNum + ",\"" + name + "\"");
				String[] tokens1 = sc1.nextLine().split(",");
				String[] tokens2 = sc2.nextLine().split(",");
				
				//System.out.println("\"" + tokens[0]+ "\"");
				System.out.println(tokens1[0] + ",\"" + tokens2[0] + "\"");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
