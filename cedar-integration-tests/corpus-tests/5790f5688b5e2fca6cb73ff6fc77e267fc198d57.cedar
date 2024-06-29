forbid(
  principal is a in a::"",
  action,
  resource == a::""
) when {
  true && (if principal then ((if principal then principal else principal) || principal) else principal)
};
