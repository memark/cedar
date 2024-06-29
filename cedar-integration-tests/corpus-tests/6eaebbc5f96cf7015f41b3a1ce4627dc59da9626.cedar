permit(
  principal == a::"\u{1a}\0\"",
  action in [Action::"action"],
  resource is a
) when {
  true
};
