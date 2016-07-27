catalog
catalogKeyClassesAndExample

^ 'The main classes are ==SAXHandler==, ==XMLDOMParser==, and ==XMLNode== and its subclasses. Read the class comments for more information.

Validation and namespace checking are enabled by default, but not resolution of external entities.

Examples
[[[ 
	| doc |
	"Get all article titles from the content of the <title> child of each <entry>"
	((doc := (XMLDOMParser parseURL: ''http://pharo.org/news/atom.xml''))
		allElementsNamed: ''entry'')
			collect: [:each | each contentStringAt: ''title''].

	"Get feed title from first <title> anywhere in the doc"
	(doc findElementNamed: ''title'') contentString.
	
	"Get all article links"
	(doc allElementsNamed: ''entry'') collect: [:each |
		(each elementAt: ''link'') attributeAt: ''href'' ].
]]]
'