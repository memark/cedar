permit(
  principal is a in a::"",
  action == Action::"action",
  resource in a::""
) when {
  true && [false, principal, (if principal then principal else principal) == principal, principal, principal, principal, principal]
};
