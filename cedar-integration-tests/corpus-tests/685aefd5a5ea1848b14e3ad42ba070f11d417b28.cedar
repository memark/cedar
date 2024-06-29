forbid(
  principal,
  action in [Action::"action"],
  resource in a::""
) when {
  true && (((Action::"action" in Action::"action") == true) == principal)
};
