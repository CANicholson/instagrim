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
    public void Registered(){
        
    }
    
    public void setRegistered(){
        registered=true;
    }
    public void setUnregistered(){
        registered=false;
    }
    
    public void setRegisterState(boolean registered){
        this.registered=registered;
    }
    public boolean getRegister(){
        return registered;
    }
}
