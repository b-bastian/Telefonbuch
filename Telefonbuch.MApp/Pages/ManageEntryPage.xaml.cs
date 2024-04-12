using Telefonbuch.Core.ViewModels;

namespace Telefonbuch.MApp.Pages;

public partial class ManageEntryPage : ContentPage
{
	public ManageEntryPage(ManageEntryViewModel viewModel)
	{
		InitializeComponent();
		this.BindingContext = viewModel;
	}
}