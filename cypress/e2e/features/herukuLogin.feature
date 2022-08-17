Feature: Validate homepage and login

    Validate that the homepage includes all the options and that the login works correctly

    Background: Go to heruku homepage
        Given the use goes to the "/" url

    Scenario Outline: Validate that all the options are present on the homepage
        Then the page title is "Welcome to the-internet"
        And the sub-header text is "Available Examples"
        And a list of the following sub-pages is displayed "<name>"
        Examples:
            | name                          |
            | A/B Testing                   |
            | Add/Remove Elements           |
            | Basic Auth                    |
            | Broken Images                 |
            | Challenging DOM               |
            | Checkboxes                    |
            | Context Menu                  |
            | Digest Authentication         |
            | Disappearing Elements         |
            | Drag and Drop                 |
            | Dropdown                      |
            | Dynamic Content               |
            | Dynamic Controls              |
            | Dynamic Loading               |
            | Entry Ad                      |
            | Exit Intent                   |
            | File Download                 |
            | File Upload                   |
            | Floating Menu                 |
            | Forgot Password               |
            | Form Authentication           |
            | Frames                        |
            | Geolocation                   |
            | Horizontal Slider             |
            | Hovers                        |
            | Infinite Scroll               |
            | Inputs                        |
            | JQuery UI Menus               |
            | JavaScript Alerts             |
            | JavaScript onload event error |
            | Key Presses                   |
            | Large & Deep DOM              |
            | Multiple Windows              |
            | Nested Frames                 |
            | Notification Messages         |
            | Redirect Link                 |
            | Secure File Download          |
            | Shadow DOM                    |
            | Shifting Content              |
            | Slow Resources                |
            | Sortable Data Tables          |
            | Status Codes                  |
            | Typos                         |
            | WYSIWYG Editor                |
 
    Scenario Outline: Validate links are correct
        When the user click on the "<page>" link
        Then the "<url>" url is correct
        Examples:
        | page                | url                 |  
        | Checkboxes          | Checkboxes          |
        | Dropdown            | dropdown            |
        | Dynamic Controls    | dynamic_controls    |
        | Form Authentication | login               |
        | Inputs              | inputs              |