permit(
  principal,
  action in [Action::"action"],
  resource == a::""
) when {
  true && (((a::"" has "ou") == (a::"" has "1")) == principal)
};
