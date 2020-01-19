------------------------------ MODULE DieHard ------------------------------

EXTENDS Integers
VARIABLES small, big

TypeOK == /\ small \in 0..3
          /\ big   \in 0..5 

Init == /\ small = 0
        /\ big = 0

FillSmall == /\ small' = 3 
             /\ big' = big

FillBig == /\ small' = small
           /\ big' = 5

EmptySmall == /\ small' = 0
              /\ big' = big
              
EmptyBig == /\ small' = small
            /\ big' = 0

SmallToBig == IF (small + big) <= 5
                THEN
                    /\ small' = 0 
                    /\ big' = big + small
                ELSE
                    /\ small' = small - (5 - big)
                    /\ big' = 5
                    
BigToSmall == IF (small + big) <= 3
                THEN
                    /\ small' = big + small 
                    /\ big' = 0
                ELSE
                    /\ small' = 3 
                    /\ big' = big - (3 - small)
                    
Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall

=============================================================================
\* Modification History
\* Last modified Sat Jan 18 20:48:53 PST 2020 by maymandi
\* Created Sat Jan 18 20:06:48 PST 2020 by maymandi
