forbid(
  principal is a in a::"",
  action in [Action::"action"],
  resource == a::"88"
) when {
  true && (a::"88" + a::"")
};
