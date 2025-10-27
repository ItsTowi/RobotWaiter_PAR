(define (problem restaurant-delivery-simple)
  (:domain robotwaiter)
  
  (:objects
    ; Locations
    kitchen hall dr1 dr2 dr3 dr4 dr5 - location
    
    ; Dishes
    dish1 dish2 dish3 dish4 dish5 - dish
    
    ; Tables
    table1 table2 table3 table4 table5 - table
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
    (dish-at dish2 kitchen)
    (dish-at dish3 kitchen)
    (dish-at dish4 kitchen)
    (dish-at dish5 kitchen)

    ;Tables
    (table-at table1 dr1)
    (table-at table2 dr2)
    (table-at table3 dr3)
    (table-at table4 dr4)
    (table-at table5 dr5)

    ; Order
    (order-at dish1 table1)
    (order-at dish2 table2)
    (order-at dish3 table3)
    (order-at dish4 table4)
    (order-at dish5 table5)

    (free-hands)
  )
  
  (:goal (and
    (served table1)
    (served table2)
    (served table3)
    (served table4)
    (served table5)
    (robot-at kitchen)
    )
  )
)