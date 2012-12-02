Feature: Merge Articles
  As a blog administrator
  In order to easying content search
  I want to be able to merge similar articles Typo

  Background:
    Given the blog is set up
    And two related articles have been created with following data:
      | title     | author |  body            | published_at |  
      | Article 1 | nacho  | Body content one | 20/11/2012 at 22h40  | 
      | Article 2 | paco   | Body content two | 19/11/2012 at 13h29 | 

  Scenario: A non-admin cannot merge two articles
    Given I am on the home page
    And I am logged as a normal user
    And I go to the article list page
    Then I should see "Article 1"
    And I should see "Article 2"
    When I follow "Article 1"
    Then I should not see "Merge Articles"
    
  Scenario: admin user can merge articles
    Given I am on the home page
    And I am logged into the admin panel
    And I go to the article list page
    Then I should see "Article 1"
    And I should see "Article 2"
    When I follow "Article 1"
    And I should see "Merge Articles"  
    
  Scenario: the merged article should contain the text of both previous articles
    Given I am on the home page
    And I am logged into the admin panel
    And I go to the article list page
    When I follow "Article 1"
    When I fill in "merge_with" with the id for "Article 2" 
    And I press "Merge" 
    And I go to the article list page
    And I follow "Article 1"
    Then I should see "Body content one"
    And I should see "Body content two"
    When I go to the comments list with id for "Article 1"
    And I should see "comment from paco"
    And I should see "comment from nacho"
