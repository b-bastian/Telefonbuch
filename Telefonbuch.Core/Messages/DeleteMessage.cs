using CommunityToolkit.Mvvm.Messaging.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Telefonbuch.Core.Messages;

public class DeleteMessage : ValueChangedMessage<Telefonbuch.Lib.Models.Entry>
{
    public DeleteMessage(Telefonbuch.Lib.Models.Entry value) : base(value)
    {

    }
}
