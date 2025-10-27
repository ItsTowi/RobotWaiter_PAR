(define (problem restaurant-delivery-simple)
  (:domain robotwaiter)
  
  (:objects
    kitchen hall dr1 dr2 dr3 dr4 dr5 dr6 dr7 dr8 - location
    dish1 - dish
    table1 table2 table3 table4 table5 table6 table7 table8 - table
  )
  
  (:init
    ; Adjacencies
    (adjacent kitchen dr6)

    (adjacent dr6 kitchen)
    (adjacent dr6 dr7)
    
    (adjacent dr7 dr6)
    (adjacent dr7 dr8)
    
    (adjacent dr8 dr7)
    (adjacent dr8 dr5)
    
    (adjacent dr5 dr8)
    (adjacent dr5 dr4)
    
    (adjacent dr4 dr5)
    (adjacent dr4 dr3)
    
    (adjacent dr3 dr4)
    (adjacent dr3 dr1)
    
    (adjacent dr1 dr3)
    (adjacent dr1 dr2)
    
    (adjacent dr2 dr1)
    (adjacent dr2 hall)
    
    (adjacent hall dr2)
    
    ; Initial state
    (robot-at hall)
    (dish-at dish1 kitchen)
    (free-hands)
    
    ; All tables locations
    (table-at table1 dr2)
    (table-at table2 dr1)
    (table-at table3 dr3)
    (table-at table4 dr4)
    (table-at table5 dr5)
    (table-at table6 dr8)
    (table-at table7 dr7)
    (table-at table8 dr6)
    
    ; Orders
    (order-at dish1 table1)
  )
  
  (:goal (and
    (served table1)
    (robot-at kitchen)
  ))
)