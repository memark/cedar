permit(
  principal == a::"\u{1c}",
  action,
  resource == a::"\u{1c}"
) when {
  (true && (!(ip("")))) && ((("" in Action::"action") in (!principal)) in principal)
};
