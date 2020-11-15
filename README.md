## Instructions

Fill in the four tests in  `spec/secret_diary_spec.rb`.

Don't:

-   Change  `secret_diary.rb`
-   Add any new files
-   Create any new classes

Do:

-   Use  `double` 
-   Use  `expect(...).to receive(...)`  
#
This exercise introduced me to the concept of mocking and doubles. Prior to this, my code had high degrees of coupling and each class and their tests were dependent on each other. This method allows the classes to be tested independently of each other. 