forbid(
  principal == a::"",
  action in [Action::"action"],
  resource is a in a::""
) when {
  ((true && [(Action::"action" || a::"") == [principal, principal, principal, principal, principal], principal, principal, principal, principal, principal]) && principal) && principal
};
