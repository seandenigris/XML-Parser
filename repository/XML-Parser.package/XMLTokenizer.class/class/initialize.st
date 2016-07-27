class initialization
initialize
	"self initialize"

	super initialize.
	self
		initializeAdditionalNameChars;
		initializeNameChars;
		initializePubidChars;
		initializeAttributeTypeDelimiters;
		initializeValueListChars;
		initializeUnaryOperatorChars;
		initializeEncodingNameChars.