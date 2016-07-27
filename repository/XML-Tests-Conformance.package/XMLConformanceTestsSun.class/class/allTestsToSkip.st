as yet unclassified
allTestsToSkip
	"XMLParserTestsSun sunTestsToSkip size"
	"return the ID (see the XML file listing all tests) of the tests you do not want to be run"
	^#( "Cincom parser does not include NOTATION elements in its tree structure"
		'notation01' 'not-sa01' 'sa02' 'sa04' 'not-sa04' 'sa03' 'not-sa03' 'not-sa02' 'sa05'
		
		"Cincom parser does not check for valid language identification"
		'lang05' 'lang01' 'lang06' 'lang03' 'lang04' 'lang02'

		"Cincom parser does not check for validity constraints to make a document standalone"
		'inv-not-sa07' 'inv-not-sa08' 'inv-not-sa12' 'inv-not-sa09' 'inv-not-sa01' 'inv-not-sa13' 
		'inv-not-sa10' 'inv-not-sa04' 'inv-not-sa14' 'inv-not-sa11' 'inv-not-sa05' 'inv-not-sa03'
		'inv-not-sa06' 

		"Cincom parser does not complain when there are no spaces between attributes"
		'attlist11' 'attlist10' 

		"Parser does not check name of the top level element"
		'root'

		"Parser does not check for encoding declaration in Text declarations"
		'encoding07' 'dtd07'

		"cr-lf problem"
	"	'sa068'  'sa107' "

		"Parser does not check for uri fragements"
		'uri01'

		"problem with external PE"
		'pe01'

		"Character encoding problem"
		'v-pe00')