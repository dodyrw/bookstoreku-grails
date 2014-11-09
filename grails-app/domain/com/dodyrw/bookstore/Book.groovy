package com.dodyrw.bookstore

class Book {
    String title
    String author
    String publisher

    static belongsTo = [category:Category]

    static constraints = {
    }
}
