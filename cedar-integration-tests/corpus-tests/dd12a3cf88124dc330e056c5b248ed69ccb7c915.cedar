forbid(
  principal,
  action in [Action::"action"],
  resource == a::";"
) when {
  true && (principal == Action::"action")
};
