permit(
  principal == a::"",
  action,
  resource
) when {
  true && (a::"" has "\0")
};
