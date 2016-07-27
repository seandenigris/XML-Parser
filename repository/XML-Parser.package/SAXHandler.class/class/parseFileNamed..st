parsing
parseFileNamed: aFileNameString
	"Parses a document in a specified file"

	^ (self onFileNamed: aFileNameString) parseDocument