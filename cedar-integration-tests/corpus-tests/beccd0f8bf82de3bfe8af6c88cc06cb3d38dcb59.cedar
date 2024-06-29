forbid(
  principal == a::"",
  action,
  resource
) when {
  (true && (false == principal)) && principal
};
