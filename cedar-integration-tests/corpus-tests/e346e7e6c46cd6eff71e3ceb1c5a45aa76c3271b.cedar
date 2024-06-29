forbid(
  principal,
  action,
  resource == a::"\0\0@"
) when {
  ((true && (false like "*\0*\0*")) && principal) && principal
};
