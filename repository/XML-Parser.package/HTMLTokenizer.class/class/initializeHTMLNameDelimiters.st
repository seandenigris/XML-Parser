class initialization
initializeHTMLNameDelimiters
	(HtmlNameDelimiters := CharacterSet new)
		addAll: Character separators;
		add: $>;
		add: $/;
		add: $<;
		add: $=;
		add: $";
		add: $';
		add: $;