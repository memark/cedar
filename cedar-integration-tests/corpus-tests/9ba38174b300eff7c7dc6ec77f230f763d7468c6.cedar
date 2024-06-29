permit(
  principal == a::"\0\u{6}\0",
  action in [Action::"action"],
  resource == a::"\0\u{6}\0"
) when {
  true
};
