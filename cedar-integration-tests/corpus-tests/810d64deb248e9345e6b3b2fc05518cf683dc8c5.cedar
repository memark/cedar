permit(
  principal == a::"\u{18}\0",
  action in [Action::"action"],
  resource in a::"\u{18}\0"
) when {
  true
};
