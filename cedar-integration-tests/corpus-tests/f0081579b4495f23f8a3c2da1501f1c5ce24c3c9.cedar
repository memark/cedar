forbid(
  principal in a::"\0\0\0\0\0\0\0\0\0\0\0\0\u{2}",
  action in [Action::"action"],
  resource
) when {
  true
};
