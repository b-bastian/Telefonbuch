using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Telefonbuch.Lib.Models;

public class Entry
{
    public string Id { get; set; } = string.Empty;

    public string Firstname { get; set; } = string.Empty;

    public string Lastname { get; set; }

    public string Adress { get; set; } = string.Empty;

    public int PLZ { get; set; } = 0;

    public string Place { get; set; } = string.Empty;

    public string Number { get; set; } = string.Empty;

    public bool Favorite { get; set; } = false;

    public Entry()
    {

    }

    public Entry(string firstName, string lastName)
    {
        this.Firstname = firstName;
        this.Lastname = lastName;
    }

    public Entry(string firstName, string lastName, string adress, int plz, string place, string number, bool favorite)
    {
        this.Id = Guid.NewGuid().ToString();
        this.Firstname = firstName;
        this.Lastname = lastName;
        this.Adress = adress;
        this.PLZ = plz;
        this.Place = place;
        this.Number = number;
        this.Favorite = favorite;
    }

    public override string ToString()
    {
        return $"{this.Firstname} {this.Lastname}";
    }
}
