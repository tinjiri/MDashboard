using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using MDashboard.DataAccess;
using MDashboard.Domain.Abstract;
using MDashboard.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using IHostingEnvironment = Microsoft.Extensions.Hosting.IHostingEnvironment;

namespace MDashboard.WebAPI
{
    public class Startup
    {
        private IHostingEnvironment env { get; }
        public Startup(IHostingEnvironment env, IConfiguration configuration)
        {
            Configuration = configuration;
            this.env = env;
        }
       

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();

            services.AddCors();
            services.AddScoped<ILookupService, LookupService>();
            services.AddDbContext<DashboardContext>(options =>
            {
                options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")//, opt => opt.EnableRetryOnFailure()
              );
            });

            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);

            var pathIncludeXmlComments =
                $@"{env.ContentRootPath}\{env.ApplicationName}.xml";
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "Dashboard API", Version = "v1" });

                if (System.IO.File.Exists(pathIncludeXmlComments))
                    c.IncludeXmlComments(pathIncludeXmlComments);
            });           
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app.UseCors(options => options.WithOrigins("http://localhost:3000")
                   .AllowAnyHeader()
                   .AllowAnyMethod()
           );

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

            app.UseSwagger();
            app.UseSwaggerUI(options=>
            {
                options.SwaggerEndpoint("/swagger/v1/swagger.json", "Dashboard API");
                options.RoutePrefix = "";
            });
        }
    }
}
