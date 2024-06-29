permit(
  principal,
  action in [Action::"action",Action::"action",Action::"action"],
  resource == a::""
) when {
  (true && ((!(context && context)) is a)) && action
};
