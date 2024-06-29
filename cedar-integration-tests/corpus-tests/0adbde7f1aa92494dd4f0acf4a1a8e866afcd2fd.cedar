permit(
  principal == a::"",
  action in [Action::"action"],
  resource
) when {
  true && (((!"") like "*\0*\u{1}*\0\0") == principal)
};
