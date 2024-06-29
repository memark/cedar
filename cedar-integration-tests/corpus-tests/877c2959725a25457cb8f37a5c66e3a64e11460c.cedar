forbid(
  principal == a::"\u{8}\0",
  action in [Action::"action"],
  resource
) when {
  true && action
};
