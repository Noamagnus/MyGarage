bool isRegistered(DateTime expireDate) {
  if (expireDate.isBefore(DateTime.now())) {
    return false;
  }
  return true;
}