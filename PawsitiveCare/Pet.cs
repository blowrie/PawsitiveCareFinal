
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace PawsitiveCare
{

using System;
    using System.Collections.Generic;
    
public partial class Pet
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Pet()
    {

        this.Documents = new HashSet<Document>();

        this.Images = new HashSet<Image>();

        this.Surgeries = new HashSet<Surgery>();

        this.Vaccinations = new HashSet<Vaccination>();

        this.Visits = new HashSet<Visit>();

        this.Weights = new HashSet<Weight>();

    }


    public int PetID { get; set; }

    public string PetName { get; set; }

    public Nullable<System.DateTime> BirthDate { get; set; }

    public string PetType { get; set; }

    public string Breed { get; set; }

    public string PetPhoto { get; set; }

    public System.DateTime WeightDate { get; set; }

    public double Weight { get; set; }

    public bool IsFixed { get; set; }

    public string UserID { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Document> Documents { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Image> Images { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Surgery> Surgeries { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Vaccination> Vaccinations { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Visit> Visits { get; set; }

    public virtual AspNetUser AspNetUser { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Weight> Weights { get; set; }

}

}
