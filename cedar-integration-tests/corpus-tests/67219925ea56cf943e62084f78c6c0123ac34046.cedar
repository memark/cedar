permit(
  principal,
  action == Action::"action",
  resource
) when {
  true && ({"A": principal} like "")
};
