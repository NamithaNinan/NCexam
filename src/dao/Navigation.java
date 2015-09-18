package dao;

public class Navigation {
	
	
	public int navigate(String choice)
	{
		int sno=1;;
		try {
			if (choice.equals("one")) {
				sno=1;
			     
			} else if (choice.equals("two")) {
				sno=2;
			} else if (choice.equals("three")) {
				sno=3;
			} else if (choice.equals("four")) {
				sno=4;
			} else if (choice.equals("five")) {
				sno=5;
			} else if (choice.equals("six")) {
				sno=6;
			} else if (choice.equals("seven")) {
				sno=7;
			} else if (choice.equals("eight")) {
				sno=8;
			} else if (choice.equals("nine")) {
				sno=9;
			} else if (choice.equals("ten")) {
				sno=10;
			} else if (choice.equals("eleven")) {
				sno=11;
			} else if (choice.equals("twelve")) {
				sno=12;
			}else if (choice.equals("thirteen")) {
				sno=13;
			}else if (choice.equals("fourteen")) {
				sno=14;
			}else if (choice.equals("fifteen")) {
				sno=15;
			}else if (choice.equals("sixteen")) {
				sno=16;
			}else if (choice.equals("seventeen")) {
				sno=17;
			}else if (choice.equals("eighteen")) {
				sno=18;
			}else if (choice.equals("nineteen")) {
				sno=19;
			}else if (choice.equals("twenty")) {
				sno=20;
			}else if (choice.equals("twentyone")) {
				sno=21;
			}else if (choice.equals("twentytwo")) {
				sno=22;
			}else if (choice.equals("twentythree")) {
				sno=23;
			}else if (choice.equals("twentyfour")) {
				sno=24;
			}else if (choice.equals("twentyfive")) {
				sno=25;
			}
			
		} catch (Exception e) {
			System.out.println("error in navigation");// TODO: handle exception
		}
		return sno;
	}

}
