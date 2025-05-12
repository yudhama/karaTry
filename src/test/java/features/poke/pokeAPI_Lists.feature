Feature: Resource Lists or Pagination

#  Background: Calling any API endpoint without a resource ID or name will return a paginated list of available resources
#  for that API. By default, a list "page" will contain up to 20 resources. If you would like to change this just add a
#  'limit' query parameter to the GET request, e.g. ?limit=60. You can use 'offset' to move to the next page, e.g.
#  ?limit=60&offset=60. characteristic, contest-effect, evolution-chain, machine, super-contest-effect endpoints are
#  unnamed, the rest are named.
      # Set a configuration for the payload
  Background: The Request Body Configuration
#    * url baseUrl
    * url baseUrl = 'https://pokeapi.co/api/v2'

  Scenario: Get All Products from Grocery
    Given header Content-Type = 'application/json'
    And path '/ability/'
#    And params 'limit=20&offset=20'
    And param limit = '20'
    And param offset = '20'
    When method get
    Then status 200

    # Load the schema from an external file
    * def userSchema = read('payload/pokeList-schema.json')

    # Validate the response against the JSON Schema
    Then match response == userSchema