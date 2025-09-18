% --- Set the facts ---
noun(james).
noun(ava).

verb(builds).
verb(creates).
verb(swims).

adverb(quickly).
adverb(rarely).
adverb(finally).

% --- Combine into sentences ---
sentence(Noun, Verb, Adverb) :-
    noun(Noun),
    verb(Verb),
    adverb(Adverb).
