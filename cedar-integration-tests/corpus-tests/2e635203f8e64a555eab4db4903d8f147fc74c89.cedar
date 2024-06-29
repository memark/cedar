permit(
  principal,
  action in [Action::"action"],
  resource in a::""
) when {
  (true && resource) && (!((!resource) == principal))
};
