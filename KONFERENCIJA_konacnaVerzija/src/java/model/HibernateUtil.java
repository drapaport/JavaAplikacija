
package model;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;


public class HibernateUtil {
    private static SessionFactory sessionFactory;
    private static ServiceRegistry serviceRegisty;

    public static SessionFactory createSessionFactory() {

        Configuration configuration = new Configuration();
        configuration.configure("hibernate/hibernate.cfg.xml");
        serviceRegisty =  new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
        sessionFactory = configuration.buildSessionFactory(serviceRegisty);

        return sessionFactory;
    }
    
}
