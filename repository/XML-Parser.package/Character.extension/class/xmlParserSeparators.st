*XML-Parser
xmlParserSeparators
	^ String
		with: 32 asCharacter "Character space asciiValue"
		with: 10 asCharacter "Character lf asciiValue"
		with: 9 asCharacter "Character tab asciiValue"
		with: 13 asCharacter "Character cr asciiValue"