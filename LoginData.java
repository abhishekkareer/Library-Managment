/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author ABHISHEK KAREER
 */
@Entity
public class LoginData {
    @Id
    private String Id;
    private String Password;
    private String Batch;

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getBatch() {
        return Batch;
    }

    public void setBatch(String Batch) {
        this.Batch = Batch;
    }
     public boolean equals(Object object)
    {
        LoginData ld = (LoginData) object;
        if(this.Batch.equalsIgnoreCase(ld.getBatch()))
        {
           if(this.Id.equalsIgnoreCase(ld.getId()) && this.Password.equalsIgnoreCase(ld.getPassword())) 
        {
            return true;
        }
        else
        {
            return false;
        } 
        }
        else
        {
            return false;
        }
     }
}
