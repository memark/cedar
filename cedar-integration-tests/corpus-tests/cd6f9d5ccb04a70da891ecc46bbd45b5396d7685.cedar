permit(
  principal == a::"",
  action,
  resource
) when {
  true && ((!(true || principal)) has "\0\u{1}\0")
};
