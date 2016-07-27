printing
enclosedTagsAsString: aTagName
	| stream |

	stream := String new writeStream..
	self
		printOn: stream
		startingAt: (self tags lastIndexOf: aTagName) + 1.
	^ stream contents.