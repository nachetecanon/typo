Feature: Merge Articles
  As a blog administrator
  In order to easying content search
  I want to be able to merge similar articles Typo

  Background:
    Given the blog is set up
    And two related articles have been created with following data:
      | title     | author |  body            | published_at |
      | Article 1 | nacho  | Body content one | 20/11/2012 at 22h40  |
      | Article 2 | nacho  | Body content two | 19/11/2012 at 13h29 |

  Scenario: Non-admin cannot merge articles
    Given I am on the home page
    And I am logged as a normal user
    Then I should see "Article 1"
    And I should see "Article 2"
    When I follow "Article 1"
    Then I should not see "Merge Articles" 
