(define (problem restaurant-delivery-simple)
  (:domain robotwaiter)
  
  (:objects
    ; Locations
    kitchen hall dr1 dr2 dr3 dr4 dr5 - location
    
    ; Dishes
    dish1 - dish
    
    ; Tables
    table1 - table
  )
  
  (:init
    ; Correct adjacencies based on the map
    (adjacent kitchen dr1)
    
    (adjacent dr1 kitchen)
    (adjacent dr1 dr3)
    (adjacent dr1 dr2)

    (adjacent dr2 dr1)
    (adjacent dr2 hall)

    (adjacent dr3 dr1)
    (adjacent dr3 dr4)
        
    (adjacent dr4 dr3)
    (adjacent dr4 dr5)

    (adjacent dr5 dr4)
    (adjacent dr5 hall)

    (adjacent hall dr2)
    (adjacent hall dr5)
    
    ; Initial state
    (robot-at hall)
    (dish-at dish1 kitchen)

    ;Tables
    (table-at table1 dr5)

    ; Order
    (order-at dish1 table1)

    (free-hands)
  )
  
  (:goal (and
    (served table1)
    (robot-at kitchen)
    )
  )
)