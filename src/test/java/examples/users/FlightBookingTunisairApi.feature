Feature: Test API Tunisair

  Scenario: Envoyer une requête POST pour réserver un billet

    Given url 'https://api.correct.url/reservations'
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer votre_token'
    And request { 
      "nom": "GH",
      "prenom": "Le",
      "email": "le.gh@gmail.com",
      "vol": {
        "numero": "TU123",
        "date": "2024-09-15",
        "classe": "économique"
      }
    }
    When method post
    Then status 201
    And match response.message == "Réservation effectuée avec succès"
