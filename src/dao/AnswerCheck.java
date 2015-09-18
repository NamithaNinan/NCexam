package dao;
public class AnswerCheck{
	
public Marks GetMarks(String[] ans, Question[] resultdup) {
	  // TODO Auto-generated method stub
	 Marks score=new Marks(); 
	 // for(int i=0;i<25;i++)
	  	   
	   try {
	    for(int i=0;i<5;i++)
	    {
	    	if(ans[i].equals(resultdup[i].getCop()))
	    	{
	    		score.logical++;
	    	score.total_marks++;}
	   }
	    for(int i=5;i<15;i++)
	    {
	    	if(ans[i].equals(resultdup[i].getCop()))
	    		{
	    		score.aptitude++;
	    			score.total_marks++;
	    		}
	   }
	    for(int i=15;i<20;i++)
	    {
	    	if(ans[i].equals(resultdup[i].getCop()))
	    	{
	    		score.technical++;
	    	score.total_marks++;
	    	}
	   }
	    for(int i=20;i<25;i++)
	    {
	    	if(ans[i].equals(resultdup[i].getCop()))
	    	{
	    		score.verbal++;
	    	   	score.total_marks++;
	    	}
	   }
	     } catch (Exception e) {
	    // TODO Auto-generated catch block
	    System.out.println("hello");
	   }
	   return (score);
	  }
}