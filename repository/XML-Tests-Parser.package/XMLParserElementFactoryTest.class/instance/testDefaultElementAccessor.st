tests
testDefaultElementAccessor
	| document |

	document :=
		(XMLDOMParser on: self sampleUserXML)
			nodeFactory: XMLPluggableElementFactory new;
			parseDocument.
	self assert: (document recurseUntilTrue: [:each | (each isMemberOf: XMLElement) not]) isNil.

	document :=
		(XMLDOMParser on: self sampleUserXML)
			nodeFactory: (XMLPluggableElementFactory new elementClass: self defaultElementClass);
			parseDocument.
	self assert: (document recurseUntilTrue: [:each | (each isMemberOf: self defaultElementClass) not]) isNil.