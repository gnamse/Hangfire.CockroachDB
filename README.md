
# Hangfire.UseCockroachDb
[![Build status](https://ci.appveyor.com/api/projects/status/a01vpyliv5mh9xac/branch/master?svg=true)](https://ci.appveyor.com/project/vytautask/hangfire-postgresql-lel5h/branch/master)

This is an plugin to the Hangfire to enable CockroachDb as a storage system.
Read about hangfire here: https://github.com/HangfireIO/Hangfire#overview
and here: http://hangfire.io/

## Instructions
### For .NET 
Install Hangfire, see https://github.com/HangfireIO/Hangfire#installation

Download all files from this repository, add the Hangfire.CockroachDb.csproj to your solution.
Reference it in your project, and you are ready to go by using:

```csharp
app.UseHangfireServer(new BackgroundJobServerOptions(), 
  new CockroachDbStorage("<connection string or its name>"));
app.UseHangfireDashboard();
```

### For ASP.NET Core
First, NuGet package needs installation.
* Hangfire.CockroachDb (Uses Npgsql 6)

Both packages are functionally the same, the only difference is the underlying Npgsql dependency version.

In `Startup.cs` _ConfigureServices(IServiceCollection services)_ method add the following line:
```csharp
services.AddHangfire(config =>
		        config.UseCockroachDbStorage(Configuration.GetConnectionString("HangfireConnection")));
```

In Configure method, add these two lines:
```csharp
app.UseHangfireServer();
app.UseHangfireDashboard();
```
And... That's it. You are ready to go. Also there exists sample application [here](https://github.com/frankhommers/Hangfire.PostgreSql/releases/download/1.4.8.1/aspnetcore_hangfire_sample.zip).

If you encounter any issues/bugs or have idea of a feature regarding Hangfire.Postgresql, [create us an issue](https://github.com/frankhommers/Hangfire.PostgreSql/issues/new). Thanks! 


### License
Copyright © 2014-2022 Frank Hommers https://github.com/frankhommers/Hangfire.PostgreSql.

Collaborators: 
Frank Hommers (frankhommers), Vytautas Kasparavičius (vytautask), Žygimantas Arūna (azygis) and Andrew Armstrong (Plasma)

Contributors:
Burhan Irmikci (barhun), Zachary Sims(zsims), kgamecarter, Stafford Williams (staff0rd), briangweber, Viktor Svyatokha (ahydrax), Christopher Dresel (Dresel), , Vincent Vrijburg, David Roth (davidroth) and Tinyakov.

Hangfire.CockroachDb is an Open Source project licensed under the terms of the LGPLv3 license. Please see http://www.gnu.org/licenses/lgpl-3.0.html for license text or COPYING.LESSER file distributed with the source code.

This work is based on the work of Sergey Odinokov, author of Hangfire. <http://hangfire.io/>

### Related Projects
* [Hangfire.Core](https://github.com/HangfireIO/Hangfire)
