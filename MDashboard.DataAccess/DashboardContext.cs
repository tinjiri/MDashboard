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
        public DbSet<JobStatus> JobStatuses { get; set; }
        //public DbSet<Job> Jobs { get; set; }
       // public DbSet<Employee> Employees { get; set; }
        //public DbSet<EmployeeStatus> EmployeeStatuses { get; set; }
        //public DbSet<EmploymentStatus> EmploymentStatuses { get; set; }
        public DbSet<Department> Departments { get; set; }
        //public DbSet<Designation> Designations { get; set; }
        //public DbSet<DesignationLevel> DesignationLevels { get; set; }
        public DbSet<Location> Locations { get; set; }
        //public DbSet<Component> Components { get; set; }
        //public DbSet<DepartmentManager> DepartmentManagers { get; set; }
        public DbSet<Priority> Priorities { get; set; }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<Title>().ToTable("Title"); 
            //builder.Entity<Job>().ToTable("Job"); 
            builder.Entity<JobStatus>().ToTable("JobStatus");          
            //builder.Entity<Employee>().ToTable("Employee"); 
            //builder.Entity<EmploymentStatus>().ToTable("EmploymentStatus"); 
            //builder.Entity<EmployeeStatus>().ToTable("EmployeeStatus");            
            //builder.Entity<Component>().ToTable("Component");
            builder.Entity<Department>().ToTable("Department");
            //builder.Entity<DepartmentManager>().ToTable("DepartmentManager");
            builder.Entity<Location>().ToTable("Location");
            //builder.Entity<Designation>().ToTable("Designation");
            //builder.Entity<DesignationLevel>().ToTable("DesignationLevel");
            builder.Entity<Priority>().ToTable("Priority");
        }
    }
}
