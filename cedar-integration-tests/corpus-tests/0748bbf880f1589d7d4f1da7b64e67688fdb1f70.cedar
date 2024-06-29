permit(
  principal is a in a::"",
  action,
  resource == a::""
) when {
  true && (((principal && resource) && true) in ((principal && principal) && principal))
};
