using System;
using System.Data;
using System.Globalization;
using Dapper;
using Hangfire.CocroachDB.Tests.Entities;

namespace Hangfire.CocroachDB.Tests.Utils;

public static class Helper
{
  public static TestJob GetTestJob(IDbConnection connection, string schemaName, string jobId)
  {
    return connection
      .QuerySingle<TestJob>($@"SELECT ""id"" ""Id"", ""invocationdata"" ""InvocationData"", ""arguments"" ""Arguments"", ""expireat"" ""ExpireAt"", ""statename"" ""StateName"", ""stateid"" ""StateId"", ""createdat"" ""CreatedAt"" FROM ""{schemaName}"".""job"" WHERE ""id"" = @Id OR @Id = -1",
        new { Id = Convert.ToInt64(jobId, CultureInfo.InvariantCulture) });
  }

}
