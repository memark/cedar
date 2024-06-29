forbid(
  principal is a in a::"",
  action in [Action::"action"],
  resource in a::""
) when {
  (true && (resource in [principal, principal, principal, principal, principal, principal])) && principal
};
