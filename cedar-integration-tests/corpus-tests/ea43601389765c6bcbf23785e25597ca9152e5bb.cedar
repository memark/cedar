@r("")
permit(
  principal,
  action,
  resource in a::"\u{7f}"
) when {
  true && (false like "l")
};
