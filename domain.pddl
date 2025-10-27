(define (domain robotwaiter)
  (:requirements :strips :typing :negative-preconditions)

    (:types dish location table)

    (:predicates
    (robot-at ?a - location)                           ; robot is at location ?a
    (adjacent ?a1 - location ?a2 - location)           ; locations ?a1 and ?a2 are adjacent
    (dish-at ?d - dish ?a - location)                  ; dish ?d is at location ?a
    (carrying ?d - dish)                               ; robot is carrying dish ?d
    (free-hands)                                       ; robot's hands are free
    (table-at ?t - table ?a - location)                ; table ?t is at location ?a
    (order-at ?d - dish ?t - table)                    ; dish ?d is ordered at table ?t
    (served ?t - table)                                ; table ?t has been served
    )

  ; MOVE: robot walks from one area to an adjacent area.
  (:action move
    :parameters (?from - location ?to - location)
    :precondition (and
      (robot-at ?from)                          ; robot at area
      (adjacent ?from ?to)                      ; destination its adjacent to "from"
    )
    :effect (and
      (NOT (robot-at ?from))                    ; from has no robot
      (robot-at ?to)                            ; robot at destination
    )
  )

  (:action pick-up
      :parameters (?d - dish ?a - location)
      :precondition (and 
                    (robot-at ?a)
                    (dish-at ?d ?a)
                    (free-hands)
                    )
      :effect (and 
              (carrying ?d)
              (NOT (free-hands))
              (NOT (dish-at ?d ?a))
              )
  )

  (:action present-dish
      :parameters (?d - dish ?a - location ?t - table)
      :precondition (and 
                    (robot-at ?a)
                    (carrying ?d)
                    (table-at ?t ?a)
                    (order-at ?d ?t)
                    (NOT (served ?t))
                    )
      :effect (and 
              (served ?t)
              (NOT (carrying ?d))
              (free-hands)
              )
    )
)
