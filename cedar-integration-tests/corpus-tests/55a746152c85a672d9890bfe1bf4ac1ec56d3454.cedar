permit(
  principal,
  action,
  resource
) when {
  true && ((!(a::"" has "A")) == (principal["A"]))
};
