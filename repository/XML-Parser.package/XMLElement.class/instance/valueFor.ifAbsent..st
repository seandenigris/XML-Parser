accessing
valueFor: aString ifAbsent: aBlock 
	self deprecated: 'use #at:ifAbsent: as a shortcut instead'.

	^ self at: aString ifAbsent: aBlock