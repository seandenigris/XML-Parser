printing
printOn: aStream
"	(self children isEmpty & self characters trimSeparators isEmpty)
		ifTrue: [ self printShortTagOn: aStream ]
		ifFalse: [ "
			
			self printLongTagOn: aStream.
			 "]."