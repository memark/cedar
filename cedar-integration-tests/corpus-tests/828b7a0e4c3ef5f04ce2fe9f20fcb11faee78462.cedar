permit(
  principal,
  action in [Action::"action"],
  resource == a::"%"
) when {
  (true && (!((a::"%" in l0000000000000::"") == principal))) && principal
};
