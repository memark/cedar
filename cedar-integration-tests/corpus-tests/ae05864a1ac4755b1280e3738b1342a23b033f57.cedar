permit(
  principal == a::"v$",
  action in [],
  resource is a
) when {
  (true && resource) && (!false)
};
