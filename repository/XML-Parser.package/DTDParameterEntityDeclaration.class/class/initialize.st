class initialization
initialize
	"DTDParameterEntityDeclaration initialize"

	contextBehavior := Dictionary new.
	contextBehavior
		at: #content put: #notRecognized: ;
		at: #attributeValueContent put: #notRecognized: ;
		at: #attributeValue put: #notRecognized: ;
		at: #entityValue put: #include: ;
		at: #dtd put: #includePE: