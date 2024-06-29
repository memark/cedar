permit(
  principal == a::"v$",
  action,
  resource
) when {
  true && ((!(false || context)) has "\0\u{1}\0")
};
