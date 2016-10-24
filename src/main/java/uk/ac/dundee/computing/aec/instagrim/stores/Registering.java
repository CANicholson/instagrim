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
public class Registering {
    boolean registered=false;
    boolean password=false;
    boolean email=false;
    public void Registered(){
        
    }
    
    public void setRegistered(){
        registered=true;
    }
    public void setUnregistered(){
        registered=false;
    }
    
    public void nonmatchingPassword(){
        password=true;
    }
    
    public void nonmatchingEmail(){
        email=true;
    }
    
    public void setRegisterState(boolean registered){
        this.registered=registered;
    }
    public boolean getRegister(){
        return registered;
    }
    
    public void setPasswordState(boolean password){
        this.password=password;
    }
    
    public void setEmailState(boolean email){
        this.email=email;
    }
    
    public boolean getPassword(){
        return password;
    }
    
    public boolean getEmail(){
        return email;
    }
}
