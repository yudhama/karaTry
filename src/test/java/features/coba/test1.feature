Feature: Grocery API

  Background: The Request Body Configuration
      # Set a configuration for the payload
    * url baseUrl

  Scenario: Get All Products from Grocery
    Given header Content-Type = 'application/json'
    And path '/store/inventory'
    When method get
    Then status 200
#    And match response.data[*].id == '#present'
#    And match response.data[*].price == '#present'
#    And match response.data[*].name == '#present'
#    And match response.data[*].stock == '#present'

#  Scenario Outline: Get Grocery Details with a name
#    Given header Content-Type = 'application/json'
#    And path '/allGrocery/<name>'
#    When method get
#    Then status 200
#    And match response.data[0].name == "<name>"
#    And match response.data[0].id == '#present'
#    And match response.data[0].price == '#present'
#    And match response.data[0].stock == '#present'
#
#    Examples:
#      | name   |
#      | apple  |
#      | grapes |
#
#  Scenario: Add a new product to the Grocery Basket
#    * def jsonBody =
#    """
#{
#    "id": 4,
#    "name": "string",
#    "price": 12.3,
#    "stock": 3
#}
# """
#    Given header Content-Type = 'application/json'
#    And path '/add'
#    And request jsonBody
#    When method post
#    Then status 201
#    And response.message == "success"