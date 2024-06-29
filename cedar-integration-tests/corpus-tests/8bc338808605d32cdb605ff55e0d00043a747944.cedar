permit(
  principal == a::"i\u{1}",
  action in [Action::"action"],
  resource is a
) when {
  true
};
