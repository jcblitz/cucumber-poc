Feature: Testimonial

  Scenario: The site displays a testimonal section
    Given I navigate to "the homepage"
    When I view the page
    Then I should see a section called "TESTIMONIALS"

  Scenario Outline: The site displays a number of testimonials
    Given I navigate to "the homepage"
    When I view the page
    Then I should see a section called "<title>" within the "testimonials" section

    Examples:
      | title                   | 
      | Senior Golf Association |
      | Travel blog             |
      | Arts & Crafts Shop      |