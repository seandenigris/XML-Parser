tokenizing - dtd
nextEndIncludeSection
	"skip ]"
	streamReader next.
	self
		expectNext: $];
		expectTerminator;
		checkNestingOfParameterEntity: self openIncludeSections removeLast.