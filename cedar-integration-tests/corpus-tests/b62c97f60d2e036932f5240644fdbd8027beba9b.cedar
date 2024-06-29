permit(
  principal == a::"8M",
  action in [],
  resource == a::"8M"
) when {
  true && ((principal like "") in principal)
};
