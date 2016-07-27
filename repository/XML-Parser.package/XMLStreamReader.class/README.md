This class represents a stream reader that implements pushBack: using nested streams. This enables subsitution/replacement to be performed without modifying the underlying collections streamed-over or copying them. It also performs line-ending normalization, returning CR and CRLF sequences read from the input stream as a single LF character.

(The code in this class looks the way it does for performance reasons.)