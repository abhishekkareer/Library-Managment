/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ABHISHEK KAREER
 */
public class LoginDataDAO {
    public boolean check(LoginData original)
    {
        LoginData ld = null;
        Configuration cf = new Configuration();
        cf.configure("CFG/hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session session = sf.openSession();
        Transaction tf = session.beginTransaction();
        ld = (LoginData) session.get(LoginData.class,original.getId());
        tf.commit();
        session.close();
        sf.close();
        if(ld == null)
        {
            return false;
        }
        else
        {
        if(original.equals(ld))
        {
            return true;
        }
        else
        {
            return false; 
        }
    }
}
    public static void main(String [] args)
    {
        LoginData ld = new LoginData();
        ld.setId("1611981018");
        ld.setBatch("2016");
        ld.setPassword("qwert");
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        try
        {
        cf = new Configuration();
        cf.configure("CFG/hibernate.cfg.xml");
        sf = cf.buildSessionFactory();
        session = sf.openSession();
        Transaction tf = session.beginTransaction();
        session.save(ld);
        tf.commit();
        }
        catch(Exception ee)
        {
        System.out.println(ee);
        }
        finally
        {
        session.close();
        sf.close(); 
        }
    }
}
