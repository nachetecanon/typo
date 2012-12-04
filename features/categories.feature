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
    When I fill in "name" with "Categorie 1"
    and I fill in "keywords" with "key1 key2"
    and I fill in "description" with "Description categorie 1"
    and I press "Save"
    Then I should see "Categorie 1"
    
