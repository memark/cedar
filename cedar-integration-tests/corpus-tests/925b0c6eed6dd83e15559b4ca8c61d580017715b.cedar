forbid(
  principal,
  action in [Action::"action"],
  resource
) when {
  (true && (Action::"action" in false)) && principal
};
