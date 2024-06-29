permit(
  principal is a in a::"\0",
  action in [Action::""],
  resource
) when {
  true && [a::"\0", "", "", false, principal, principal, principal]
};
