utility
createDummyElementAccessors
	"self createDummyElementAccessors"

	| sourceStream |

	self removeDummyElementAccessors.
	self dummyElementNames
		do: [:each |
			(sourceStream := String new writeStream)
				nextPut: each first asLowercase;
				nextPutAll: each allButFirst, self dummyElementClassSuffix, 'Class';
				cr;
				tab;
				nextPutAll: '^ Smalltalk at: #';
				nextPutAll: (self toDummyElementClassName: each) asString.

			self
				compile: sourceStream contents
				classified: self dummyElementAccessorCategory].