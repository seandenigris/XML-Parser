class initialization
initialize
	"self initialize"

	self
		initializeHeadSectionElements;
		initializeBodySectionElements;
		initializeNonNestableElements;
		initializeNestableTagGroups;
		initializeMutuallyExcludingTags;
		initializeVoidElements