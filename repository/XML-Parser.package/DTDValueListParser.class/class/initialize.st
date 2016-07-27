class initialization
initialize
	"self initialize"

	super initialize.

	(ListValueDelimiters := BitmapCharacterSet new)
		add: $|;
		add: $);
		addAll: Character separators