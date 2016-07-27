tokenizing - dtd
nextSubsetDeclaration
	driver handleStartDeclaration: self currentPosition + 2.
	super nextSubsetDeclaration.
	driver handleEndDeclaration: self currentPosition - 1.