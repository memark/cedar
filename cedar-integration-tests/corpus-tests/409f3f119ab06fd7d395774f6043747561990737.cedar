forbid(
  principal,
  action == Action::"action",
  resource in a::""
) when {
  true && (!principal)
};
