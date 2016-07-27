class initialization
initialize
	"self initialize"

	(ListValueDelimiters := BitmapCharacterSet new)
		add: $|;
		add: $);
		addAll: Character separators