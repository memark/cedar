permit(
  principal in a::"\u{1a}\0",
  action in [Action::"action"],
  resource == a::"\u{1a}\0"
) when {
  true
};
