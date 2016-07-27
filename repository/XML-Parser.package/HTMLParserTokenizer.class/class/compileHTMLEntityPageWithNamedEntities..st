class initialization
compileHTMLEntityPageWithNamedEntities: anAssociationCollection
	"There are too many entities to represent literally in a single method,
	so they're put in a big string and parsed at initialization."
	| source |

	(source := String new writeStream)
		nextPutAll: 'htmlEntityPage';
		cr;
		tab;
		nextPut: $^;
		space;
		nextPut: $'.

	anAssociationCollection do: [:each |
		source
			cr;
			tab;
			nextPut: $[;
			nextPutAll: each key;
			nextPut: $=;
			nextPutAll: each value;
			nextPut: $]].
	source nextPut: $'.

	self class
		compile: source contents
		classified: 'class initialization' asSymbol.