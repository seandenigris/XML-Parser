class initialization
initialize
	"self initialize"

	super initialize.
	self
		initializeOperatorApplicators;
		initializeSpecialCharacterParsers;
		initializeSpecialCharacters.