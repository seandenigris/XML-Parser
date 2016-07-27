This class represents a stream reader that implements pushBack: using nested streams. This enables subsitution/replacement to be performed without modifying the underlying collections streamed-over or having to copy them. It also performs line-ending normalization, transforming CR and CRLF sequences into a single LF character.

Each nested stream is wrapped in some kind of XMLMinimalReadStream, which implements through forwarding the minimum stream protocol this class expects.

(The code in this class is optimized; refactor with care.)