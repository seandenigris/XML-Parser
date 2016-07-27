class initialization
initializePredefinedEntities
	(PredefinedEntities := Dictionary new)
		at: 'lt' put: '&#60;';
		at: 'gt' put: '&#62;';
		at: 'amp' put: '&#38;';
		at: 'apos' put: '&#39;';
		at: 'quot' put: '&#34;'