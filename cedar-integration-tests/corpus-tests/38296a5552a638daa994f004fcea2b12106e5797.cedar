forbid(
  principal,
  action in [Action::"action",Action::"action"],
  resource in a::""
) when {
  true && ((false || (false == principal)) || principal)
};
