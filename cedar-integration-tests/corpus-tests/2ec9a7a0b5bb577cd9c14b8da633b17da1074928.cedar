permit(
  principal,
  action,
  resource == a::""
) when {
  true && ((false like "a**") == (principal[""]))
};
