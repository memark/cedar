@KX("\0r::F\u{1}\u{10}\t!")
permit(
  principal in a::"\0\0\0\0\0\u{3}t$\u{1}",
  action in [Action::"action"],
  resource in a::"\0\0\0\0\0\u{3}t$\u{1}"
) when {
  true && (ip(principal))
};
