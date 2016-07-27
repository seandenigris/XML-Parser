tokenizing
nextTag
	driver handleStartTagPosition: self currentPosition - 1.
	super nextTag.
	driver handleEndTagPosition: self currentPosition - 1.