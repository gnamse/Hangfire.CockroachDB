﻿using Hangfire.CockroachDB;
using Npgsql;

namespace Hangfire.CocroachDB.Tests.Utils;

public class DefaultConnectionFactory : IConnectionFactory
{
  /// <summary>
  /// Get or create NpgsqlConnection
  /// </summary>
  public NpgsqlConnection GetOrCreateConnection()
  {
    return ConnectionUtils.CreateConnection();
  }
}