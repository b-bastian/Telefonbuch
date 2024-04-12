using Telefonbuch.Core.ViewModels;

namespace Telefonbuch.MApp;

public partial class MainPage : ContentPage
{
	public MainPage(MainViewModel viewModel)
	{
		InitializeComponent();
		this.BindingContext = viewModel;
	}
}