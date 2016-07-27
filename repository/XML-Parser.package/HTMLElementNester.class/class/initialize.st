class initialization
initialize
	"self initialize"

	super initialize.
	self
		initializeHeadSectionElements;
		initializeBodySectionElements;
		initializeNestableTagGroups;
		initializeNonNestableElements;
		initializeMutuallyExcludingTags;
		initializeVoidElements.