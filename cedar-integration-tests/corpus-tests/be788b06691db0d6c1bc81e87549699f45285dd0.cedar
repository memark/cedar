permit(
  principal == a::":r7",
  action,
  resource is a
) when {
  true && principal
};
