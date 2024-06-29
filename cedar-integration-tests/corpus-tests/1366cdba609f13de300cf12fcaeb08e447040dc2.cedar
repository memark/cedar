forbid(
  principal is a,
  action,
  resource == a::"\0\0@"
) when {
  true && (false like "\0\0*\0*\0")
};
