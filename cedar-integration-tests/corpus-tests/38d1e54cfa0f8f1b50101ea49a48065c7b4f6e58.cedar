forbid(
  principal == a::"",
  action in [],
  resource
) when {
  ((true && (((principal like "*::\0**\0") like "*") like "*")) && principal) && principal
};
