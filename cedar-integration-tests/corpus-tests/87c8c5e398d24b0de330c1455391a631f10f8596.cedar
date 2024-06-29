permit(
  principal,
  action in [],
  resource in a::""
) when {
  (true && a::"") && ([] == principal)
};
