## Purpose

Demonstrate using Cucumber to test any website

## Results

### Command

`bundle exec cucumber`

### Output

```
Feature: Testimonial

  Scenario: The site displays a testimonal section    # features/testimonials.feature:3
    Given I navigate to "the homepage"                # features/step_definitions/testimonial_steps.rb:1
    When I view the page                              # features/step_definitions/testimonial_steps.rb:5
    Then I should see a section called "TESTIMONIALS" # features/step_definitions/testimonial_steps.rb:9

  Scenario Outline: The site displays a number of testimonials                     # features/testimonials.feature:8
    Given I navigate to "the homepage"                                             # features/testimonials.feature:9
    When I view the page                                                           # features/testimonials.feature:10
    Then I should see a section called "<title>" within the "testimonials" section # features/testimonials.feature:11

    Examples:
      | title                   |
      | Senior Golf Association |
      | Travel blog             |
      | Arts & Crafts Shop      |

4 scenarios (4 passed)
12 steps (12 passed)
0m12.166s
```