Feature: Merge Articles
  As a blog administrator
  In order to easying content search
  I want to be able to merge similar articles Typo

  Background:
    Given the blog is set up
    And a categorie exists with following data:
    |  name  |  keywords  |  description  |
    | cat22  |  key22 key33 |  descr cat22 |
    
  Scenario: admin user can create categories
    Given I am on the home page
    And I am logged into the admin panel
    And I go to the new categorie's page
    When I fill in "category_name" with "Categorie 1"
    And I fill in "category_keywords" with "key1 key2"
    And I fill in "category_description" with "Description categorie 1"
    And I press "Save"
    Then I should see "Categorie 1"
    
  Scenario: admin user can edit categories
    Given I am on the home page
    And I am logged into the admin panel
    When I go to the new categorie's page
    And I follow "cat22"
    And I fill in "category_keywords" with "modified"
    And I press "Save"
    Then I should see "modified"
