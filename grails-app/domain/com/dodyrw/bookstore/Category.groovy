package com.dodyrw.bookstore

class Category {

    String name

    static hasMany = [books: Book]

    static constraints = {
    }
}
