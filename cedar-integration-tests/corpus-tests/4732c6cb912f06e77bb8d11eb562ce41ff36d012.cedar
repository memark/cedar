permit(
  principal is a in a::"",
  action,
  resource == a::""
) when {
  true && (((principal && principal) && principal) in principal)
};
