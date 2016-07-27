tokenizing - dtd
nextEndIncludeSection
	"skip ]"
	streamReader next.
	self
		expectNext: $];
		expectTerminator.
	totalOpenIncludeSections := self totalOpenIncludeSections - 1.