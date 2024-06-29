permit(
  principal == a::"83",
  action in [Action::"action"],
  resource
) when {
  true && Action::"action"
};
