*XML-Parser
asXMLEscapedString
	| stream |

	stream := (self class new: self size) writeStream.
	self do: [:each |
		each == $<
			ifTrue: [stream nextPutAll: '&lt;']
			ifFalse: [
				each == $> "needed to escape ]]> in PCDATA"
					ifTrue: [stream nextPutAll: '&gt;']
					ifFalse: [
						each == $&
							ifTrue: [stream nextPutAll: '&amp;']
							ifFalse: [stream nextPut: each]]]].
	^ stream contents.