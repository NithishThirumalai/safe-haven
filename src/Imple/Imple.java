package Imple;

import java.sql.*;


import dbcon.dbconn;
import Bean.medicalregbean;
import Bean.publiccomp;
import Bean.selterregbean;
import Bean.volunterregbean;
import Inter.Inter;
import Bean.volunterregbean;
import dbcon.dbconn;


import java.sql.ResultSet;
 import java.sql.PreparedStatement;

 import java.util.*;

 import java.io.FileInputStream;
 import java.io.IOException;
 import java.io.PrintWriter;
import java.text.SimpleDateFormat;
 import java.util.Date;
 import Bean.Block;
 import servlet.StringUtil;
 import Bean.AES2;
 import java.io.File;
 import java.io.FileWriter;
   import java.io.*;

 import java.io.IOException;
  
  import java.nio.file.Files;
   import java.nio.file.Paths;
  
 import java.nio.file.StandardOpenOption; 

public class Imple implements Inter {
        static Connection con;
        
    	public int disastercomplaint(publiccomp tb) {
    		// TODO Auto-generated method stub
    		
    		
    		 // Create the first block with some initial data and an arbitrary previous hash.
	        Block genesisBlock = new Block(tb.getDisastertype(), "0");

	        
	        // Create the second block with some data and link it to the previous block.
	        Block secondBlock = new Block(tb.getNoofpeople(), genesisBlock.hash);

	        
	        // Create the third block with some data and link it to the previous block.
	        Block thirdBlock = new Block(tb.getVictpeople(), secondBlock.hash);
	        
	        
	        Block fourthblock = new Block(tb.getAboutdis(), thirdBlock.hash);
	        
	        
	        Block fifthblock = new Block(tb.getCompaddress(), fourthblock.hash);
	        
	        
	        Block sixthblock = new Block(tb.getDisastime(), fifthblock.hash);

	        
	        // Print the blocks' information.
	        System.out.println("Genesis Block - Hash: " + genesisBlock.hash);
	        System.out.println("Second Block - Hash: " + secondBlock.hash);
	        System.out.println("Third Block - Hash: " + thirdBlock.hash);
	        System.out.println("Third Block - Hash: " + fourthblock);
			//block chain code

    		int reg=0;
    		 
    		String status="Complaint";
    		 con=dbconn.create();
    		 
    		 		try {
    		 			
    		 			PreparedStatement ps=con.prepareStatement("INSERT INTO disastermanagement.publiccomplaint VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    		 				
    		 		
    		 				ps.setString(1,tb.getName());
    		 				System.out.println(tb.getName());
    		 				
    		 				ps.setString(2,tb.getCompemail());
    		 				System.out.println(tb.getCompemail());
    		 				
    		 				ps.setString(3,tb.getNumber());
    		 				System.out.println(tb.getNumber());
    		 				
    		 				ps.setString(4,tb.getDisdate());
    		 				System.out.println(tb.getDisdate());
    		 				
    		 				ps.setString(5,tb.getDisday());
    		 				System.out.println(tb.getDisday());
    		 				
    		 				ps.setString(6,tb.getDisastertype());
    		 				System.out.println(tb.getDisastertype());
    		 				
    		 				ps.setString(7,tb.getNoofpeople());
    		 				System.out.println(tb.getNoofpeople());
    		 				
    		 				ps.setString(8,tb.getAboutdis());
    		 				System.out.println(tb.getAboutdis());
    		 				
    		 				ps.setString(9,tb.getCompaddress());
    		 				System.out.println(tb.getCompaddress());
    		 				
    		 				ps.setString(10,tb.getMaplink());
    		 				System.out.println(tb.getMaplink());
    		 				
    		 				ps.setString(11,tb.getDisastime());
    		 				System.out.println(tb.getDisastime());
    		 				
    		 				ps.setString(12,status);
    		 			   
    		 			    
    		 			   ps.setString(13,tb.getVictpeople());
   		 				System.out.println(tb.getVictpeople());
   		 				
   		 			ps.setString(14,tb.getZone());
	 				System.out.println(tb.getZone());
	 				
	 				ps.setString(15," ");
	 				
	 				ps.setString(16, " ");
	 				
                    ps.setString(17,  genesisBlock.hash);
	 				
	 				ps.setString(18, secondBlock.hash);
	 				
	 				ps.setString(19, thirdBlock.hash);
	 				
	 				ps.setString(20, fourthblock.hash);
    		
	 				 reg=ps.executeUpdate();
	 				 
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		 		
    		return reg;

    	}

    	public int voluntreg(volunterregbean vr) {
    		// TODO Auto-generated method stub
    		
    		int reg=0;
    		 
    		String status="Not_Approve";
    		 con=dbconn.create();
    		 
    		 		try {
    		 			
    		 			PreparedStatement ps1=con.prepareStatement("INSERT INTO disastermanagement.voluntreg VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    		 				
    		 		
    		 				ps1.setString(1,vr.getVolname());
    		 				System.out.println(vr.getVolname());
    		 				
    		 				ps1.setString(2,vr.getVolemail());
    		 				System.out.println(vr.getVolemail());
    		 				
    		 				ps1.setString(3,vr.getVolnumber());
    		 				System.out.println(vr.getVolnumber());
    		 				
    		 				ps1.setString(4,vr.getDateofbirth());
    		 				System.out.println(vr.getDateofbirth());
    		 				
    		 				ps1.setString(5,vr.getVolday());
    		 				System.out.println(vr.getVolday());
    		 				
    		 				ps1.setString(6,vr.getVolskill());
    		 				System.out.println(vr.getVolskill());
    		 				
    		 				ps1.setString(7,vr.getDateapply());
    		 				System.out.println(vr.getDateapply());
    		 				
    		 				ps1.setString(8,vr.getVoloccupation());
    		 				System.out.println(vr.getVoloccupation());
    		 				
    		 				ps1.setString(9,vr.getVolAddress());
    		 				System.out.println(vr.getVolAddress());
    		 				
    		 				ps1.setString(10,vr.getVolpass());
    		 				System.out.println(vr.getVolpass());
    		 				
    		 				ps1.setString(11,vr.getVolcpass());
    		 				System.out.println(vr.getVolcpass());
    		 				
    		 				ps1.setString(12,vr.getFilename());
    		 				System.out.println(vr.getFilename());
    		 				
    		 				
    		 				ps1.setString(13,status);
    		 				
    		 				
    		 				ps1.setString(14," ");
    		 				
    		 				
    		 			    reg=ps1.executeUpdate();
    		
    		 			    
    		} catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		 		
    		return reg;

    	}
		

public boolean volunterlog1(volunterregbean up) {
	// TODO Auto-generated method stub
	boolean log=false;
	 
	con=dbconn.create();
	
	 try {
			PreparedStatement ps=con.prepareStatement("SELECT * FROM disastermanagement.voluntreg v where vemail=? and pass=? and status='Approved'");
			
			ps.setString(1, up.getVolemail());
			ps.setString(2, up.getVolpass());
			
			ResultSet rs=ps.executeQuery();
			log=rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return log;

}


public int governseltreg(selterregbean sr) {
	// TODO Auto-generated method stub
	
	int reg=0;
	 
	String status="Register";
	 con=dbconn.create();
	 
	 		try {
	 			
	 			PreparedStatement ps2=con.prepareStatement("INSERT INTO disastermanagement.selterreg VALUES(id,?,?,?,?,?,?)");
	 				
	 		
	 				ps2.setString(1,sr.getId());
	 				System.out.println(sr.getId());
	 				
	 				ps2.setString(2,sr.getLocation());
	 				System.out.println(sr.getLocation());
	 				
	 				ps2.setString(3,sr.getSeats());
	 				System.out.println(sr.getSeats());
	 				
	 				ps2.setString(4,sr.getPassword());
	 				System.out.println(sr.getPassword());
	 				
	 			
	 				
	 				ps2.setString(5,status);
	 				ps2.setString(6, " ");
	 				
	 			    reg=ps2.executeUpdate();
	
	 			    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 		
	return reg;

}

public boolean governseltlog1(selterregbean up) {
	// TODO Auto-generated method stub
	boolean log=false;
	 
	con=dbconn.create();
	
	 try {
			PreparedStatement ps=con.prepareStatement("SELECT * FROM disastermanagement.selterreg s where	 shelterid=? and location=? and password=? and status='Approved'");
			
			ps.setString(1, up.getId());
			ps.setString(2, up.getLocation());
			ps.setString(3, up.getPassword());
			
			ResultSet rs=ps.executeQuery();
			log=rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return log;

}


public int medicalreg(medicalregbean mr) {
	// TODO Auto-generated method stub
	
	int reg=0;
	 
	String status="Register";
	 con=dbconn.create();
	 
	 		try {
	 			
	 			PreparedStatement ps2=con.prepareStatement("INSERT INTO disastermanagement.medicalreg VALUES(id,?,?,?,?,?,?)");
	 				
	 		
	 				ps2.setString(1,mr.getId());
	 				System.out.println(mr.getId());
	 				
	 				ps2.setString(2,mr.getLocation());
	 				System.out.println(mr.getLocation());
	 				
	 				ps2.setString(3,mr.getNoofpatient());
	 				System.out.println(mr.getNoofpatient());
	 				
	 				ps2.setString(4,mr.getPassword());
	 				System.out.println(mr.getPassword());
	 				
	 			
	 				
	 				ps2.setString(5,status);
	 				ps2.setString(6, " ");
	 				
	 			    reg=ps2.executeUpdate();
	
	 			    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 		
	return reg;

}

public boolean medicallog1(medicalregbean up) {
	// TODO Auto-generated method stub
	boolean log=false;
	 
	con=dbconn.create();
	
	 try {
			PreparedStatement ps=con.prepareStatement("SELECT * FROM disastermanagement.medicalreg m where	medicalid=? and location=? and password=? and status='Approved'");
			
			ps.setString(1, up.getId());
			ps.setString(2, up.getLocation());
			ps.setString(3, up.getPassword());
			
			ResultSet rs=ps.executeQuery();
			log=rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return log;

}

}
