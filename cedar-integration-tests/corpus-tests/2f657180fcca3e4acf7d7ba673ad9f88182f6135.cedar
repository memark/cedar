permit(
  principal,
  action in [Action::"action",Action::"action",Action::"action"],
  resource == a::"\0"
) when {
  true && context
};
