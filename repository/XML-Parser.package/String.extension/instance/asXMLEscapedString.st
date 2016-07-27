*XML-Parser
asXMLEscapedString
	| stream |

	stream := (self class new: self size) writeStream.
	self do: [:each |
		each == $<
			ifTrue: [stream nextPutAll: '&lt;']
			ifFalse: [
				each == $&
					ifTrue: [stream nextPutAll: '&amp;']
					ifFalse: [stream nextPut: each]]].
	^ stream contents.