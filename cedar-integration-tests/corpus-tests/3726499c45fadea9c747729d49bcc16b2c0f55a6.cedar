permit(
  principal,
  action,
  resource in a::""
) when {
  true && (((context in context) == principal) == principal)
};
