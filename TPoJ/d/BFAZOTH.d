BEGIN BFAZOTH

CHAIN IF ~True()~ THEN bfazoth bfs.azo1
@0 /* Dorn Il-Khan! You reek of another's bargain, yet you still dare to summon me? When I offered you patronage my terms were clear. */
== BFDORN @1 /* And those terms are met. Ur-Gothoz is defeated. */
== BFAZOTH @2 /* Not by your hand. Let your death serve as a warning instead. */
DO ~Kill("bfdorn")~ EXTERN bfazoth bfs.azo2

CHAIN bfazoth bfs.azo2
@3 /* It seems I have an audience... though none will survive to tell of his meeting. */
DO ~Enemy()~ EXIT 
