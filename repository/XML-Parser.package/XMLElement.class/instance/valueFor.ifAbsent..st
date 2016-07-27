accessing
valueFor: aSymbol ifAbsent: aBlock 
	self deprecated: 'use #at:ifAbsent: as a shortcut instead'.

	^ self at: aSymbol ifAbsent: aBlock