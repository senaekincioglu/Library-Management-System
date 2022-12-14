//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Library_Management_System.Models.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Book
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Book()
        {
            this.Movement = new HashSet<Movement>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<byte> Category_Id { get; set; }
        public Nullable<int> Author_Id { get; set; }
        public string PrintYear { get; set; }
        public string Publisher { get; set; }
        public string Page { get; set; }
        public Nullable<bool> Status { get; set; }
    
        public virtual Author Author { get; set; }
        public virtual Category Category { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Movement> Movement { get; set; }
    }
}
