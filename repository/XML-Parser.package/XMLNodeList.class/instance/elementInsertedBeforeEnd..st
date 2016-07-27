private
elementInsertedBeforeEnd: anElement
	| elementAfter |

	elementAfter := self findElementAfter: anElement.
	self elements add: anElement before: elementAfter.

	self elementsByNameAt: anElement name insertElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				elementsByNameAt: anElement localName
				insertElement: anElement]