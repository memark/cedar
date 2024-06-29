permit(
  principal == a::"\u{8}\0",
  action,
  resource
) when {
  true && action
};
