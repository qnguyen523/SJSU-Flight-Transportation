import java.io.File;
import java.util.Random;
import java.util.Scanner;
/**
 * 
 * @author DuocNguyen
 *
 */
public class StaffGenerator {
	public static void main(String[] args){

		String[] positions = { "pilots" , "flight attendants"};


		File staffnames = new File("staff1.txt");

		Random generator = new Random();

		int employeeIDMax = 9999;			//4 digits number
		int employeeIDMin = 1000;



		int numberOfStaff = 20;


		try {
			Scanner sc = new Scanner(staffnames);
			for(int i = 0; i < numberOfStaff; i++){
				String[] tokens = sc.nextLine().split(",");
				int employeeID = generator.nextInt(employeeIDMax - employeeIDMin + 1) + employeeIDMin;
				String position = positions[1];
				System.out.println(tokens[0] + ",\"" + position + "\"");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}




	}
}
