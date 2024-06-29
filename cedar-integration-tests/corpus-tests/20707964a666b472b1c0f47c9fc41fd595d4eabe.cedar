forbid(
  principal,
  action,
  resource == a::"\n\0@"
) when {
  ((true && ((false || (!a::"\n\0@")) like "")) && principal) && principal
};
