forbid(
  principal,
  action,
  resource == a::""
) when {
  (true && {"A": principal}) && principal
};
