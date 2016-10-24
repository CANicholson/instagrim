/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.stores;

/**
 *
 * @author Administrator
 */
public class LoggedIn {
    boolean loggedin=false;
    String Username=null;
    String Fname=null;
    String Lname=null;
    String Email=null;
    String Color=null;
    public void LoggedIn(){
        
    }
    
    public void setUsername(String name){
        this.Username=name;
    }
    
    public String getUsername(){
        return Username;
    }
    
    public void setFname(String fname){
        this.Fname=fname;
    }
    
    public String getFname(){
        return Fname;
    }
    
    public void setLname(String lname){
        this.Lname=lname;
    }
    
    public String getLname(){
        return Lname;
    }
    
    public void setEmail(String email){
        this.Email=email;
    }
    
    public String getEmail(){
        return Email;
    }
    
    public void setColor(String color){
        this.Color=color;
    }
    
    public String getColor(){
        return Color;
    }
    
    public void setLoggedin(){
        loggedin=true;
    }
    public void setLoggedout(){
        loggedin=false;
    }
    
    public void setLoginState(boolean loggedin){
        this.loggedin=loggedin;
    }
    public boolean getLoggedin(){
        return loggedin;
    }
}
