namespace Hangfire.PostgreSql.Tests.Utils
{
  internal static class PostgreSqlStorageExtensions
  {
    public static PostgreSqlConnection GetStorageConnection(this CockroachDbStorage storage)
    {
      return storage.GetConnection() as PostgreSqlConnection;
    }
  }
}
