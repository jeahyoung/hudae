package com.ljh.musica

class Album {
    String title
    static hasMany = [songs:Song]

    static constraints = {
    }
}
