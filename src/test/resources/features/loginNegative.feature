Feature: Login
  To see error message

  @wrongPassword
  Scenario Outline: Login with a wrong password

    Given Navigate to Home Page
    When Click on the Anmelden icon
    Then Login Page displayed

    When Enter a valid email and an invalid password
    | email | password |
    | <email> | <password> |
    And Click on Anmelden button
    Then Password Error message displayed
    Examples:
    | email | password |
    | natalia@gmail.com | Natalia |
    | natalia@gmail.com | *$%#;() |
    | natalia@gmail.com | 12342 |

 # Bitte verwenden Sie ein Passwort von mindestes 8 Zeichen
  #mit mindestens einem Kleinbuchstaben, einem Großbuchstaben,
  #einer Zahl und einem Sonderzeichen.*/

  #Benutzername nicht gefunden oder Passwort falsch