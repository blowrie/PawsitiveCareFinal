
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
    
public partial class Document
{

    public int DocumentID { get; set; }

    public string DocumentTitle { get; set; }

    public string DocumentImage { get; set; }

    public int PetID { get; set; }



    public virtual Pet Pet { get; set; }

}

}
