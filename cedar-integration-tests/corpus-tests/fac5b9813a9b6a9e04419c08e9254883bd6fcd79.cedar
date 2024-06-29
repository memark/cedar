forbid(
  principal,
  action,
  resource == a::"\n\0@"
) when {
  ((true && (((!(a::"\n\0@" < principal)) like "") like "")) && principal) && principal
};
