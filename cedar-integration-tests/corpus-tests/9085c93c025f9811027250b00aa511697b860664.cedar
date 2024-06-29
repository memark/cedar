forbid(
  principal in a::"\0\0\0\u{1}\0\0\0\0\0\0\u{1}",
  action in [Action::"action"],
  resource
) when {
  true
};
