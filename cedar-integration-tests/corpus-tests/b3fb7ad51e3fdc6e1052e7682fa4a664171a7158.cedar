@r("")
forbid(
  principal == a::"\0\0\0\0\0(\u{1}\0\0",
  action,
  resource
) when {
  true
};
