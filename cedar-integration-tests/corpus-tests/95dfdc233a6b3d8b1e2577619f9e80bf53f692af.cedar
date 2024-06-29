permit(
  principal == a::"",
  action,
  resource
) when {
  true && (resource has "\0\u{1}\0")
};
