permit(
  principal in a::"\0\u{1a}\0\"",
  action in [Action::"action",Action::"action"],
  resource == a::"\0\u{1a}\0\""
) when {
  true
};
