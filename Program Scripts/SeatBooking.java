/**
 * 
 * @author DuocNguyen
 *
 */
public class SeatBooking {
	
	
	
	
	public static void main(String[] args){
		
		String[] econCol = {"A","B","C","D"};
		String[] econSeatPref = {"Window", "Aisle"};
		
		for(int i = 1; i<= 2; i++){
			for(int k = 0; k < 4; k++){
				String seatPref = "";
				if("AD".contains(econCol[k])) {
					seatPref = econSeatPref[0];
				} else {
					seatPref = econSeatPref[1];
				}
				System.out.println(i+econCol[k] + "," +seatPref + ",\"First\"");
			}
		}
		
		
		
		
		String[] seatCol = {"A","B","C","D","E","F"};
		String[] seatPref = {"Window", "Center", "Aisle"};
		
		
		for(int i = 10; i <= 20; i++){
			for(int k = 0; k < seatCol.length; k++){
				String pref = "";
				if("AF".contains(seatCol[k])){
					pref = seatPref[0];
				} else if ("BE".contains(seatCol[k])){
					pref = seatPref[1];
				} else {
					pref = seatPref[2];
				}
				
				System.out.println(i+seatCol[k] + "," + pref + ",\"Economy\"");
				
			}
		}
		
	}
}
