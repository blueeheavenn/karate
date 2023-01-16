Feature: Karate feature file for json placeholder.

  Background:
    * def  v =   read('classpath:testdata/data.json')
#    * def  f = read('classpath:JS/test.js')
    * def p = callonce read('classpath:JS/test2.js')
    * def x =   p.gettime()
    * def y = p.getdate("ami")

#    * def x = eval(p.toString())
    * print 'date now ', x
    * print 'repeat it' , y


  Scenario: get all users and then get the first user by id
    Given url v.url
    And path 'users'
    When method get
    Then status 200
    And  def first = response[0]
    Given path 'users/'+ first.id
    When method get
    Then status 200
    And assert first.username == 'Bret'
