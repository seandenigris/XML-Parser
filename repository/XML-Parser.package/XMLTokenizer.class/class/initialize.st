class initialization
initialize
	"self initialize"

	super initialize.
	self
		initializeNameStartChars;
		initializeAdditionalNameChars;
		initializePubidChars;
		initializeAttributeTypeDelimiters;
		initializeValueListChars;
		initializeUnaryOperatorChars.