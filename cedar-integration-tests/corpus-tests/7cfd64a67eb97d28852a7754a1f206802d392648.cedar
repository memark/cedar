forbid(
  principal is a,
  action in [Action::"action",Action::"action",Action::"action"],
  resource == a::""
) when {
  (true && [false, principal, principal, principal, principal, principal]) && principal
};
