using System;
using System.Collections.Generic;
using System.Text;
using MDashboard.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace MDashboard.DataAccess
{
    public class DashboardContext : DbContext
    {
        public DashboardContext(DbContextOptions options) : base(options) { }

        public DbSet<Title> Titles { get; set; }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<Title>().ToTable("Title");
        }
    }
}
