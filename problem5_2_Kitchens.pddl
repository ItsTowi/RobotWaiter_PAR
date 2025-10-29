(define (problem restaurant-delivery-simple)
  (:domain robotwaiter)
  
  (:objects
    kitchen1 kitchen2 hall dr1 dr2 dr3 dr4 dr5 dr6 dr7 dr8 dr9 dr10 dr11 dr12 dr13 dr14 dr15 dr16 - location
    dish1 dish2 - dish
    table1 - table
  )
  
  (:init
    ; Adjacencies
    (adjacent kitchen1 dr1)
    (adjacent kitchen1 dr4)
    (adjacent kitchen1 dr5)

    (adjacent kitchen2 dr3)
    (adjacent kitchen2 dr9)
    (adjacent kitchen2 dr10)

    (adjacent dr1 kitchen1)
    (adjacent dr1 dr2)
    (adjacent dr1 dr6)

    (adjacent dr2 dr1)
    (adjacent dr2 dr3)
    (adjacent dr2 dr7)

    (adjacent dr3 kitchen2)
    (adjacent dr3 dr8)
    (adjacent dr3 dr2)
    
    (adjacent dr4 kitchen1)
    (adjacent dr4 dr5)
    (adjacent dr4 dr11)

    (adjacent dr5 kitchen1)
    (adjacent dr5 dr4)
    (adjacent dr5 dr6)
    (adjacent dr5 dr12)

    (adjacent dr6 dr1)
    (adjacent dr6 dr7)
    (adjacent dr6 dr5)
    (adjacent dr6 dr13)

    (adjacent dr7 dr2)
    (adjacent dr7 dr6)
    (adjacent dr7 dr8)
    (adjacent dr7 dr14)

    (adjacent dr8 dr3)
    (adjacent dr8 dr7)
    (adjacent dr8 dr9)
    (adjacent dr8 dr15)

    (adjacent dr9 kitchen2)
    (adjacent dr9 dr8)
    (adjacent dr9 dr10)
    (adjacent dr9 dr16)

    (adjacent dr10 kitchen2)
    (adjacent dr10 dr9)
    (adjacent dr10 hall)

    (adjacent dr11 dr4)
    (adjacent dr11 dr12)

    (adjacent dr12 dr5)
    (adjacent dr12 dr11)
    (adjacent dr12 dr13)

    (adjacent dr13 dr6)
    (adjacent dr13 dr12)
    (adjacent dr13 dr14)

    (adjacent dr14 dr7)
    (adjacent dr14 dr13)
    (adjacent dr14 dr15)

    (adjacent dr15 dr8)
    (adjacent dr15 dr14)
    (adjacent dr15 dr16)

    (adjacent hall dr10)
    (adjacent hall dr16)

    ; Initial state
    (robot-at dr3)
    (dish-at dish1 kitchen1)
    (dish-at dish2 kitchen2)
    (free-hands)
    
    ; All tables locations
    (table-at table1 dr14)
    
    ; Orders
    (order-at dish1 table1)
    (order-at dish2 table1)
  )
  
  (:goal (and
    (served dish1 table1)
    (served dish2 table1)
    (robot-at kitchen1)
  ))
)