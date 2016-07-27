tokenizing
nextPIWithTarget: aTarget
	driver handleStartPIPosition: self currentPosition - (2 + aTarget size).
	super nextPIWithTarget: aTarget.
	driver handleEndPIPosition: self currentPosition - 1.