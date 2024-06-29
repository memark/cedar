permit(
  principal == a::"\0\u{6}",
  action in [Action::"action"],
  resource in a::"\0\u{6}"
) when {
  true
};
