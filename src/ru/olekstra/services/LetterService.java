package ru.olekstra.services;

import ru.olekstra.domains.Letter;

import java.util.List;

public interface LetterService {
    List<Letter> getLetters();

    void addLetter(Letter letter);
}
