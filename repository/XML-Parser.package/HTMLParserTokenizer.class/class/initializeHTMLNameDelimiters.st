class initialization
initializeHTMLNameDelimiters
	(HtmlNameDelimiters := BitmapCharacterSet new)
		addAll: Character separators;
		add: $>;
		add: $/;
		add: $<;
		add: $=;
		add: $";
		add: $';
		add: $;