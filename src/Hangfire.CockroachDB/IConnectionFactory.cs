// This file is part of Hangfire.CockroachDb.
// Copyright © 2014 Frank Hommers <http://hmm.rs/Hangfire.CockroachDb>.
// 
// Hangfire.CockroachDb is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as 
// published by the Free Software Foundation, either version 3 
// of the License, or any later version.
// 
// Hangfire.CockroachDb  is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public 
// License along with Hangfire.CockroachDb. If not, see <http://www.gnu.org/licenses/>.
//
// This work is based on the work of Sergey Odinokov, author of 
// Hangfire. <http://hangfire.io/>
//   
//    Special thanks goes to him.

using Npgsql;

namespace Hangfire.PostgreSql
{
  /// <summary>
  /// Connection factory for runtime create connection 
  /// </summary>
  public interface IConnectionFactory
  {
    /// <summary>
    /// Get or create NpgsqlConnection
    /// </summary>
    NpgsqlConnection GetOrCreateConnection();
  }
}