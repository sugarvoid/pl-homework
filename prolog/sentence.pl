% --- Set the facts ---
noun(james).
noun(ava).

verb(builds).
verb(creates).

adverb(quickly).
adverb(rarely).

% --- Combine into sentences ---
sentence(Noun, Verb, Adverb) :-
    noun(Noun),
    verb(Verb),
    adverb(Adverb).
