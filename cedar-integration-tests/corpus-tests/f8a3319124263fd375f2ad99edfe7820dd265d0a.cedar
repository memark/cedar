forbid(
  principal,
  action in [Action::"action"],
  resource in a::""
) when {
  (true && ("1\0V~" like "1*\0V~")) && principal
};
