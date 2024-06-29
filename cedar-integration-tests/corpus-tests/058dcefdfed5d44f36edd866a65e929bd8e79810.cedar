permit(
  principal,
  action,
  resource in a::"v\u{3}"
) when {
  (true && ((!(!false)).containsAny(principal))) && false
};
