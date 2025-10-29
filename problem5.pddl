(define (problem restaurant-delivery-simple)
  (:domain robotwaiter)
  
  (:objects
    ; Locations
    kitchen hall dr1 dr2 dr3 dr4 dr5 - location
    
    ; Dishes
    dish1 dish2 - dish

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
    (robot-at kitchen)
    (dish-at dish1 kitchen)
    (dish-at dish2 kitchen)
    (table-at table1 dr4)
    (free-hands)
    
    ; Order
    (order-at dish1 table1)
    (order-at dish2 table1)
  )
  
  (:goal (and
    (served dish1 table1)
    (served dish2 table1)
    (robot-at kitchen)
    )
  )
)