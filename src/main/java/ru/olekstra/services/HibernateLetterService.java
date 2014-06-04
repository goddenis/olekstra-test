package ru.olekstra.services;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.olekstra.domains.Letter;

import java.util.List;

@Repository
@Transactional
public class HibernateLetterService implements LetterService {

    @Autowired
    @Qualifier("sessionFactory")
    private SessionFactory sessionFactory;

    public HibernateLetterService() {
    }

    /*@Inject

    public HibernateLetterService(SessionFactory sf){
        this.sessionFactory = sf;
    }
*/
    private Session currentSesion() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<Letter> getLetters() {
        return currentSesion().createCriteria(Letter.class).list();
    }

    @Override
    public void addLetter(Letter letter) {
        currentSesion().save(letter);
    }
}
