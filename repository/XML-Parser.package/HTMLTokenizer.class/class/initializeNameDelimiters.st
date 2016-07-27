class initialization
initializeNameDelimiters
	(NameDelimiters := CharacterSet new)
		addAll: Character separators;
		add: $>;
		add: $/;
		add: $<;
		add: $=;
		add: $";
		add: $';
		add: $;