permit(
  principal,
  action,
  resource == a::"@"
) when {
  true && (a::"@" in false)
};
