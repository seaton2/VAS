//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VirtualAdvDB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Major
    {
        public Major()
        {
            this.Class_List = new HashSet<Class_List>();
            this.User_Classes = new HashSet<User_Classes>();
            this.UserDetails = new HashSet<UserDetail>();
        }
    
        public int ID { get; set; }
        public string MajorName { get; set; }
        public int CollegeID { get; set; }
        public string DegreeTypes { get; set; }
        public int UNIV_ID { get; set; }
    
        public virtual ICollection<Class_List> Class_List { get; set; }
        public virtual University University { get; set; }
        public virtual ICollection<User_Classes> User_Classes { get; set; }
        public virtual ICollection<UserDetail> UserDetails { get; set; }
    }
}
