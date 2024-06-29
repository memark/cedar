@r("")
forbid(
  principal,
  action == Action::"action",
  resource == a::"\0"
) when {
  (true && (((if principal then principal else principal).greaterThan(principal, principal, principal)).greaterThan(principal))) && principal
};
