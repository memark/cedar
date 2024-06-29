forbid(
  principal == a::"\0\0\u{4}",
  action in [Action::"action"],
  resource in a::"\0\0\u{4}"
) when {
  true && Action::"action"
};
