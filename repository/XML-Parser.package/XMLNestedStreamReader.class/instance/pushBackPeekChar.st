private
pushBackPeekChar
	| peekCharString |

	peekCharString := String with: peekChar.
	peekChar := nil.
	self pushBack: peekCharString.