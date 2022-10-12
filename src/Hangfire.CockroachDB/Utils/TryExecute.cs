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

using System;
// ReSharper disable ArrangeDefaultValueWhenTypeNotEvident

namespace Hangfire.PostgreSql.Utils
{
  public static class Utils
  {
    public static bool TryExecute<T>(
      Func<T> func,
      out T result,
      Func<Exception, bool> swallowException = default,
      int? tryCount = default)
    {
      while (tryCount == default || tryCount-- > 0)
      {
        try
        {
          result = func();
          return true;
        }
        catch (Exception ex)
        {
          if (swallowException != null && !swallowException(ex))
          {
            throw;
          }
        }
      }
      result = default;
      return false;
    }
  }
}
