class initialization
initialize
	"self initialize"

	super initialize.
	self
		initializeHeadSectionElements;
		initializeBodySectionElements;
		initializeNonNestableElements;
		initializeNestableTagGroups;
		initializeMutuallyExcludingTags;
		initializeVoidElements