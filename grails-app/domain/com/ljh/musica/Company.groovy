package com.ljh.musica

class Company {
    String name
    Integer numberOfEmployees
    BigDecimal salaryPaidYTD

    static transients = ['salaryPaidYTD']

    static constraints = {
    }
}
