permit(
  principal,
  action in [Action::"action"],
  resource
) when {
  ((true && a::"") && (!((!Action::"action")["C"]))) && false
};
