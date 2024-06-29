forbid(
  principal,
  action in [Action::"action"],
  resource == a::";\0;<\03"
) when {
  (true && (a::";\0;<\03".isLoopback())) && (principal has "")
};
