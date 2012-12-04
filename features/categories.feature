Feature: Merge Articles
  As a blog administrator
  In order to easying content search
  I want to be able to merge similar articles Typo

  Background:
    Given the blog is set up
    
  Scenario: admin user can create categories
    Given I am on the home page
    And I am logged into the admin panel
    And I go to the new categorie's page
    Then I should see "Keywords"
    
