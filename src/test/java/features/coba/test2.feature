#Feature: JSON Schema Validation with External File
#
#  Scenario: Validate JSON response schema from file
#
#    Given url 'https://jsonplaceholder.typicode.com/users/1'
#    When method get
#    Then status 200
#
#    # Load the schema from an external file
#    * def userSchema = read('payload/user-schema.json')
#
#    # Validate the response
#    Then match response == userSchema
##    Then match response == user-schema.json
#
#

Feature: JSON Schema Validation with External File

  Scenario: Validate JSON response schema from file

    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get

    Then status 200

    # Load the schema from an external file
    * def userSchema = read('payload/user-schema.json')

    # Validate the response against the JSON Schema
    Then match response == userSchema
