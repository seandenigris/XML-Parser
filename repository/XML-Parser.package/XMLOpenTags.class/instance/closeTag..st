accessing
closeTag: aTagName
	(self enclosingTag = aTagName)
		ifFalse: [
			(self hasOpenTag: aTagName)
				ifTrue: [
					self error:
						('<{1}> tag closed before enclosed tags {2}'
							format: (Array with: aTagName with: (self enclosedTagsAsString: aTagName)))]
				ifFalse: [
					self error:
						('Closing </{1}> tag without corresponding opening <{1}> tag'
							format: (Array with: aTagName))]].
	^ self tags removeLast.