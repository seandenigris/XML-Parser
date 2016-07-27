private 
upToEnd
	[self next notNil] whileTrue.
	^ outputStream contents.