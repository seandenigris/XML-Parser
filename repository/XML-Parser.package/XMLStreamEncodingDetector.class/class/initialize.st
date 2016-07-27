class initialization
initialize
	"self initialize"

	NullCharacter := Character value: 0.

	self
		initializeByteOrderMarks;
		initializeEncodingHandlerTable.