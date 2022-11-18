import java.util.*;
import java.text.DecimalFormat;

public class CurrencyConverter {

        public static void main(String[] args) {

                double amount, dollar, pound, code, euro;

                DecimalFormat f = new DecimalFormat("##.##");
	 
		try {
                	amount = Integer.parseInt(args[0]);
                } catch (NumberFormatException nfe) {
                   System.out.println("Invalid input...");//NOSONAR
                   
                   System.exit(0);
                }
	

                amount = Integer.parseInt(args[0]);
                String currency = args[1];

		currency=currency.toLowerCase();

                // For amounts Conversion
                switch (currency){
                        case "dollars" :
                                // For Dollar Conversion
                                pound = amount * 0.74;
                                System.out.println(amount + " Dollars = " + f.format(pound) + " Pounds");//NOSONAR
                                euro = amount * 0.88;
                                System.out.println(amount + " Dollars = " + f.format(euro) + " Euros");//NOSONAR                                
				break;
                        case "pounds":
                                // For Pound Conversion
                                dollar = amount * 1.36;
                                System.out.println(amount + " Pounds = " + f.format(dollar) + " Dollars");//NOSONAR
                                euro = amount * 1.19;
                                System.out.println(amount + " Pound = " + f.format(euro) + " Euros");//NOSONAR
                                break;
                        case "euros":
                                // For Euro Conversion
                                dollar = amount * 1.13;
                                System.out.println(amount + " Euros = " + f.format(dollar) + " Dollars");//NOSONAR
                                pound = amount * 0.84;
                                System.out.println(amount + " Euros = " + f.format(pound) + " Pounds");//NOSONAR
                                break;
                }
                System.out.println("Thank you for using the converter.");//NOSONAR
        }

}
