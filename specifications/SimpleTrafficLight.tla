------------------------- MODULE SimpleTrafficLight -------------------------

VARIABLES light

TypeOK == \/ light = "green"
          \/ light = "red"
          \/ light = "yellow"
          \/ light = "off"
          
Init == light = "off"

Red == light' = "red"
Green == light' = "green"
Yellow == light' = "yellow"

Next == CASE light = "off" -> light' = "red" 
        [] light = "red" -> light' = "green"
        [] light = "green" -> light' = "yellow"
        [] light = "yellow" -> light' = "red"

=============================================================================
\* Modification History
\* Last modified Sat Jan 18 23:32:26 PST 2020 by maymandi
\* Created Sat Jan 18 23:13:52 PST 2020 by maymandi
