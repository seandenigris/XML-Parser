class initialization
initialize
	"self initialize"

	super initialize.
	self
		initializeDefaultValueValidators;
		initializeNonEnumerationValidators.