forbid(
  principal is a in a::"",
  action,
  resource is a
) when {
  (true && (!(("" in "") == principal))) && principal
};
