tokenizing
nextCDataSection
	driver handleStartCDataPosition: self currentPosition - 2.
	super nextCDataSection.
	driver handleEndCDataPosition: self currentPosition - 1.