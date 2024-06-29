forbid(
  principal,
  action in [Action::"action"],
  resource
) when {
  true && (((a::"" == action) == (Action::"action" == principal)) == principal)
};
