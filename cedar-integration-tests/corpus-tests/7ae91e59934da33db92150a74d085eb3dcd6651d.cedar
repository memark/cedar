permit(
  principal == a::"\0",
  action,
  resource == a::"\0"
) when {
  false && (((false like "+") like "+") == principal)
};
