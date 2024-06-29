permit(
  principal == a::"\0\0\0",
  action == Action::"action",
  resource
) when {
  true && (![a::"\0\0\0", a::"\0\0\0", Action::"action", true, principal, principal, principal])
};
