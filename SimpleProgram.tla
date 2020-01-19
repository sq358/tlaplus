--------------------------- MODULE SimpleProgram ---------------------------

EXTENDS Integers
VARIABLES i, pc

Init == (pc = "start") /\ (i = 0)

Pick == \/ /\ pc = "start"
           /\ i' \in 0..1000
           /\ pc' = "middle"

Add1 == \/ /\ pc = "middle"
           /\ i' = i + 1
           /\ pc' = "done"

Next == \/ Pick
        \/ Add1

=============================================================================
\* Modification History
\* Last modified Sat Jan 18 20:05:15 PST 2020 by maymandi
\* Created Sun Jan 05 21:53:31 PST 2020 by maymandi
