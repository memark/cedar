permit(
  principal,
  action,
  resource
) when {
  true && ((!{"A": a::""}) == principal)
};
