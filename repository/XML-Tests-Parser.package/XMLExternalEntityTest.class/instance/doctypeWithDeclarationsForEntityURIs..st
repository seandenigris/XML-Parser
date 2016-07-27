source
doctypeWithDeclarationsForEntityURIs: aUrlCollection
	^  '<!DOCTYPE test [',
		('' join: (aUrlCollection collectWithIndex: [:each :i |
			'<!ENTITY entity', i printString, ' SYSTEM "', each, '">'])),
		']>'