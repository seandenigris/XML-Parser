instance creation
newElementWithTag: aString
	"returns an instance of a generic element or of a subclass"
	| wantedClass |
	wantedClass := self allSubclasses
		detect: [:each | each xmlTags includes: aString] ifNone: [ self ].
	^ wantedClass new tag: aString