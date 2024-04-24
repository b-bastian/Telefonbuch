using CommunityToolkit.Mvvm.Messaging.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Telefonbuch.Core.Messages;

public class AddMessage : ValueChangedMessage<Telefonbuch.Lib.Models.Entry>
{
    public AddMessage(Telefonbuch.Lib.Models.Entry value) : base(value)
    {
        
    }
}
