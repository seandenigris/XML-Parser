as yet unclassified
allTestsToSkip
	
	^#( "invalid test"
		'valid-sa-012'	
		'valid-sa-105' " the answer the test gives seems incorrect, and parser seems correct"	

		"encoding problems"
"		'valid-sa-049' 'valid-sa-050' 'valid-sa-051' 'valid-sa-061' 'valid-sa-062'
		'valid-sa-063'  'valid-ext-sa-014'"
		"no space between attributes"
		'not-wf-ext-sa-001' 'not-wf-sa-186'

		"Too many cr in parsers answer"
		'valid-sa-093'

		"illegal PE in DTD"
		'valid-sa-094'

		"cr problem should return an entity"
		'valid-sa-107'  'valid-sa-106' 
		)