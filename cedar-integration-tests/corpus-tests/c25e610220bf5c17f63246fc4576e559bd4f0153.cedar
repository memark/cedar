forbid(
  principal == a::"\u{8}\0",
  action in [Action::"action"],
  resource == a::"\u{8}\0"
) when {
  true
};
