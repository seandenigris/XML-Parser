accessing
configuration
	^ configuration ifNil: [
		self configuration: XMLDOMConfiguration new.
		configuration]