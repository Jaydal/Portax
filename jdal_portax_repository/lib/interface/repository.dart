abstract class Repository<TData, TResponse> {
  Future<List<TResponse>?> getAllAsync();
  Future<TResponse?> getByIdAsync(String id);
  Future<TResponse?> createAsync(TData data);
  Future<void> updateAsync(String id, TData data);
  Future<void> deleteAsync(String id);
}
