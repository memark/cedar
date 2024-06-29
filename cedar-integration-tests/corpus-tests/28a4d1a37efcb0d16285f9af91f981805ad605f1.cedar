forbid(
  principal,
  action in [Action::"action"],
  resource == a::";\0;<\03"
) when {
  (true && (a::";\0;<\03".greaterThan((if principal then principal else principal) == principal, principal))) && principal
};
