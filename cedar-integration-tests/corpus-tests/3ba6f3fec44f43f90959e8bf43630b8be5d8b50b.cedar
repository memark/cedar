permit(
  principal is a in a::"z",
  action in [Action::"action"],
  resource
) when {
  true && (Action::"action" in a::"z")
};
