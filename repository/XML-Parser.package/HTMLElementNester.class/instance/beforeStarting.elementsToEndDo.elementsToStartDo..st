checking
beforeStarting: anElementName elementsToEndDo: aFirstBlock elementsToStartDo: aSecondBlock
	| htmlTag |

	htmlTag :=
		HtmlTagInformation
			at: anElementName
			ifAbsent: [HTMLTagInformation named: anElementName].
			
	self hasOpenElements
		ifTrue: [
			self
				elementsToEndBeforeStartTag: htmlTag
				do: aFirstBlock].
	self
		elementsToStartBeforeStartTag: htmlTag
		do: aSecondBlock.