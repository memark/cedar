permit(
  principal == a::"8C",
  action in [Action::"action"],
  resource is a in a::"8C"
) when {
  true
};
