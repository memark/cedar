permit(
  principal,
  action in [Action::"action"],
  resource is a in a::"\0"
) when {
  true && Action::"action"
};
