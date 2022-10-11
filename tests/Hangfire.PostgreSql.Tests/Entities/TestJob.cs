using System;

namespace Hangfire.CocroachDB.Tests.Entities;

public record TestJob(long Id, string InvocationData, string Arguments, DateTime? ExpireAt, string StateName, long? StateId, DateTime CreatedAt);
