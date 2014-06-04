package ru.olekstra.services;

import ru.olekstra.domains.Letter;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class LetterDumyService implements LetterService {
    List<Letter> letters = new ArrayList<Letter>();

    @Override
    public List<Letter> getLetters() {
        if (letters.size() == 0) {
            letters.add(new Letter(1l, "1", new Date(), "Dumyy 1"));
            letters.add(new Letter(2l, "2", new Date(), "dummy 2"));
            letters.add(new Letter(3l, "3", new Date(), "Dumyy 3"));
            letters.add(new Letter(4l, "4", new Date(), "dummy 4"));
        }
        return letters;
    }

    @Override
    public void addLetter(Letter letter) {
        letters.add(letter);
    }
}
