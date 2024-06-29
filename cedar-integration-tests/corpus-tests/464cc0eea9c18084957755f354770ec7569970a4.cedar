permit(
  principal,
  action,
  resource
) when {
  (true && ([Action::"action", principal, principal, principal]["a"])) && principal
};
