handling - content
ignorableWhitespace: aString
	"Handles ignorable whitespace in content, such as between '<outer>'
	and '<inner>' or between '</inner>' and '</outer>' in:
	'<outer>
		<inner>test</inner>
	<outer>'

	Whitespace around character data is not ignorable."