private
elementInsertedBeforeEnd: anElement
	| elementBefore |

	(elementBefore := self findElementBefore: anElement)
		ifNil: [self elements addFirst: anElement]
		ifNotNil: [self elements add: anElement after: elementBefore].

	self elementsByNameAt: anElement name insertElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				elementsByNameAt: anElement localName
				insertElement: anElement]