content
xmlVersion: aVersionFloat encoding: anEncoding standalone: aBoolean
	self
		invokeDeprecated: #documentAttributes:
		withArguments:
			(Array with: (Dictionary
				with: 'version' -> aVersionFloat asString
				with: 'encoding' -> anEncoding))
		orForwardTo: nil
		withArguments: nil