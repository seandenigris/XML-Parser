This class parses a content model using postfix conversion and an NFABuilder to build a NFA before converting it to a DFA.

It assumes all spaces have been removed from the input and that it's been checked for well-formedness (meaning no missing names or misplaced operators/parentheses).