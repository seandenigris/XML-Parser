printing
enclosedTagsAsString: aTagName
	| enclosedTags |

	enclosedTags := String new writeStream..
	self
		printOn: enclosedTags
		startingAt: (self tags lastIndexOf: aTagName) + 1.
	^ enclosedTags contents.