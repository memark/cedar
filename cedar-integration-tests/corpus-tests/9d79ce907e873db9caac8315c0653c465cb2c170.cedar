forbid(
  principal,
  action in [Action::"action"],
  resource == a::"\0\0\0\0\0\u{3}t$v$"
) when {
  true && context
};
