permit(
  principal,
  action in [Action::"action"],
  resource == a::""
) when {
  ((true && Action::"action") && principal) && principal
};
