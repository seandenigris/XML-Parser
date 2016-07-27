private
newWithCollection: aCollection
	"copies as superclass for performance"
	^ XMLNodeList basicNew setCollection: aCollection