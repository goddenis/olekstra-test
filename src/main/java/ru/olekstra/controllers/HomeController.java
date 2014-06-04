package ru.olekstra.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.olekstra.domains.Letter;
import ru.olekstra.services.LetterService;

import javax.inject.Inject;
import javax.validation.Valid;
import java.util.Map;


@Controller
@RequestMapping(value = {"/", "home"})
public class HomeController {

    // @Qualifier("hibernateLetterService")
    @Autowired
    private LetterService letterService;

    @Inject
    public HomeController(LetterService letterService) {
        this.letterService = letterService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String showHome(Map<String, Object> model) {
        model.put("newLetter",new Letter());
        model.put("letters", letterService.getLetters());

        return "home";
    }


    @RequestMapping(method = RequestMethod.POST)
    public String addLetter(
            @ModelAttribute("newLetter")
                            @Valid Letter letter,
                            BindingResult bindingResult) {

        if (bindingResult.hasErrors()) System.out.println("hass errores");

        letterService.addLetter(letter);
        return "home";
    }



}

