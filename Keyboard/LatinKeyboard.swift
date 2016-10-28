//
//  latinKeyboard.swift
//  TransliteratingKeyboard
//
//  Created by Alexei Baboulevitch on 7/10/14.
//  Copyright (c) 2014 Alexei Baboulevitch ("Archagon"). All rights reserved.
//

func latinKeyboard() -> Keyboard {
    let latinKeyboard = Keyboard()
    
    for key in ["J", "C", "U", "K", "E", "N", "I", "Š", "Û", "Z", "H", "'"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 0, page: 0)
    }
    
    for key in ["Ё", "Ф", "Ы", "В", "А", "П", "Р", "О", "Л", "Д", "Ж", "Э"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 1, page: 0)
    }
    
    let keyModel = Key(.Shift)
    latinKeyboard.addKey(keyModel, row: 2, page: 0)
    
    for key in ["Я", "Ч", "С", "М", "І", "Т", "Ь", "Б", "Ю"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 2, page: 0)
    }
    
    let backspace = Key(.Backspace)
    latinKeyboard.addKey(backspace, row: 2, page: 0)
    
    let keyModeChangeNumbers = Key(.ModeChange)
    keyModeChangeNumbers.uppercaseKeyCap = "123"
    keyModeChangeNumbers.toMode = 1
    latinKeyboard.addKey(keyModeChangeNumbers, row: 3, page: 0)
    
    let keyboardChange = Key(.KeyboardChange)
    latinKeyboard.addKey(keyboardChange, row: 3, page: 0)
    
    let settings = Key(.Settings)
    latinKeyboard.addKey(settings, row: 3, page: 0)
    
    let space = Key(.Space)
    space.uppercaseKeyCap = "space"
    space.uppercaseOutput = " "
    space.lowercaseOutput = " "
    latinKeyboard.addKey(space, row: 3, page: 0)
    
    let returnKey = Key(.Return)
    returnKey.uppercaseKeyCap = "return"
    returnKey.uppercaseOutput = "\n"
    returnKey.lowercaseOutput = "\n"
    latinKeyboard.addKey(returnKey, row: 3, page: 0)
    
    for key in ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 0, page: 1)
    }
    
    for key in ["-", "/", ":", ";", "(", ")", "$", "&", "@", "\""] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 1, page: 1)
    }
    
    let keyModeChangeSpecialCharacters = Key(.ModeChange)
    keyModeChangeSpecialCharacters.uppercaseKeyCap = "#+="
    keyModeChangeSpecialCharacters.toMode = 2
    latinKeyboard.addKey(keyModeChangeSpecialCharacters, row: 2, page: 1)
    
    for key in [".", ",", "?", "!", "'"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 2, page: 1)
    }
    
    latinKeyboard.addKey(Key(backspace), row: 2, page: 1)
    
    let keyModeChangeLetters = Key(.ModeChange)
    keyModeChangeLetters.uppercaseKeyCap = "ABC"
    keyModeChangeLetters.toMode = 0
    latinKeyboard.addKey(keyModeChangeLetters, row: 3, page: 1)
    
    latinKeyboard.addKey(Key(keyboardChange), row: 3, page: 1)
    
    latinKeyboard.addKey(Key(settings), row: 3, page: 1)
    
    latinKeyboard.addKey(Key(space), row: 3, page: 1)
    
    latinKeyboard.addKey(Key(returnKey), row: 3, page: 1)
    
    for key in ["[", "]", "{", "}", "#", "%", "^", "*", "+", "="] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 0, page: 2)
    }
    
    for key in ["_", "\\", "|", "~", "<", ">", "€", "£", "¥", "•"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 1, page: 2)
    }
    
    latinKeyboard.addKey(Key(keyModeChangeNumbers), row: 2, page: 2)
    
    for key in [".", ",", "?", "!", "'"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        latinKeyboard.addKey(keyModel, row: 2, page: 2)
    }
    
    latinKeyboard.addKey(Key(backspace), row: 2, page: 2)
    
    latinKeyboard.addKey(Key(keyModeChangeLetters), row: 3, page: 2)
    
    latinKeyboard.addKey(Key(keyboardChange), row: 3, page: 2)
    
    latinKeyboard.addKey(Key(settings), row: 3, page: 2)
    
    latinKeyboard.addKey(Key(space), row: 3, page: 2)
    
    latinKeyboard.addKey(Key(returnKey), row: 3, page: 2)
    
    return latinKeyboard
}
