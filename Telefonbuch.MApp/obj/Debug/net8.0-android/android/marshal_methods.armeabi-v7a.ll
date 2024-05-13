; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [339 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [672 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 189
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 255
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 289
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 330
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 200
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 273
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 273
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 293
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 229
	i32 172961045, ; 23: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 207
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 275
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 327
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 328
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 227
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 249
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 232
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 251
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 248
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 299
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 327
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 218
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 312
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 250
	i32 347068432, ; 49: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 203
	i32 354584097, ; 50: en-US/Syncfusion.Maui.Popup.resources.dll => 0x15228621 => 332
	i32 356389973, ; 51: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 311
	i32 360082299, ; 52: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 53: System.IO.Pipes => 0x15ebe147 => 55
	i32 374376850, ; 54: Syncfusion.Maui.Popup.dll => 0x16508992 => 213
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 335
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 62: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 323
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 233
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 65: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 246
	i32 451504562, ; 66: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 67: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 456681651, ; 68: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 209
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 70: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 71: System.dll => 0x1bff388e => 164
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 248
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 261
	i32 498788369, ; 74: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 75: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 310
	i32 503918385, ; 76: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 304
	i32 510187241, ; 77: Telefonbuch.MApp.dll => 0x1e68d6e9 => 0
	i32 513247710, ; 78: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 194
	i32 526420162, ; 79: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 80: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 293
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 82: Microsoft.Extensions.Logging => 0x20216150 => 190
	i32 540030774, ; 83: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 84: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 85: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 86: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 87: Jsr305Binding => 0x213954e7 => 286
	i32 569601784, ; 88: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 284
	i32 577335427, ; 89: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 90: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 318
	i32 597488923, ; 91: CommunityToolkit.Maui => 0x239cf51b => 173
	i32 601371474, ; 92: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 93: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 94: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 95: Xamarin.AndroidX.CustomView => 0x2568904f => 238
	i32 627931235, ; 96: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 316
	i32 639843206, ; 97: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 244
	i32 643868501, ; 98: System.Net => 0x2660a755 => 81
	i32 662205335, ; 99: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 100: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 280
	i32 666292255, ; 101: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 225
	i32 672442732, ; 102: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 103: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 104: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 298
	i32 690569205, ; 105: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 106: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 295
	i32 693804605, ; 107: System.Windows => 0x295a9e3d => 154
	i32 695450347, ; 108: Syncfusion.Maui.Popup => 0x2973baeb => 213
	i32 699345723, ; 109: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 110: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 290
	i32 700358131, ; 111: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 112: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 313
	i32 709557578, ; 113: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 301
	i32 720511267, ; 114: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 294
	i32 722857257, ; 115: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 116: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 117: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 201
	i32 750898264, ; 118: en-US\Syncfusion.Maui.Popup.resources => 0x2cc1cc58 => 332
	i32 752232764, ; 119: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 120: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 215
	i32 759454413, ; 121: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 122: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 123: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 124: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 322
	i32 789151979, ; 125: Microsoft.Extensions.Options => 0x2f0980eb => 193
	i32 790371945, ; 126: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 239
	i32 804715423, ; 127: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 128: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 253
	i32 823281589, ; 129: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 130: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 131: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 132: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 133: Xamarin.AndroidX.Print => 0x3246f6cd => 266
	i32 873119928, ; 134: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 135: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 136: System.Net.Http.Json => 0x3463c971 => 63
	i32 898440345, ; 137: CsvHelper => 0x358d1c99 => 176
	i32 904024072, ; 138: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 139: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 923841322, ; 140: Syncfusion.Maui.Picker => 0x3710b32a => 212
	i32 926902833, ; 141: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 325
	i32 928116545, ; 142: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 289
	i32 952186615, ; 143: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 144: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 294
	i32 966729478, ; 145: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 287
	i32 967690846, ; 146: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 250
	i32 975236339, ; 147: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 148: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 149: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 150: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 151: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 152: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 153: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 154: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 270
	i32 1019214401, ; 155: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 156: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 188
	i32 1029334545, ; 157: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 300
	i32 1031528504, ; 158: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 288
	i32 1035644815, ; 159: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 223
	i32 1036536393, ; 160: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 161: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 162: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 257
	i32 1067306892, ; 163: GoogleGson => 0x3f9dcf8c => 177
	i32 1082857460, ; 164: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 165: Xamarin.Kotlin.StdLib => 0x409e66d8 => 291
	i32 1098259244, ; 166: System => 0x41761b2c => 164
	i32 1118262833, ; 167: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 313
	i32 1121599056, ; 168: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 256
	i32 1127624469, ; 169: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 192
	i32 1149092582, ; 170: Xamarin.AndroidX.Window => 0x447dc2e6 => 283
	i32 1157931901, ; 171: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 180
	i32 1168523401, ; 172: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 319
	i32 1170634674, ; 173: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 174: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 279
	i32 1178241025, ; 175: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 264
	i32 1202000627, ; 176: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 180
	i32 1203215381, ; 177: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 317
	i32 1204270330, ; 178: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 225
	i32 1204575371, ; 179: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 184
	i32 1208641965, ; 180: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 181: CommunityToolkit.Mvvm => 0x4868cc7b => 175
	i32 1219128291, ; 182: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 183: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 315
	i32 1243150071, ; 184: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 284
	i32 1253011324, ; 185: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 186: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 299
	i32 1264511973, ; 187: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 274
	i32 1267360935, ; 188: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 278
	i32 1273260888, ; 189: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 230
	i32 1275534314, ; 190: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 295
	i32 1278448581, ; 191: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 222
	i32 1292207520, ; 192: SQLitePCLRaw.core.dll => 0x4d0585a0 => 202
	i32 1293217323, ; 193: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 241
	i32 1309188875, ; 194: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 195: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 283
	i32 1324164729, ; 196: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 197: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 198: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 199: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 329
	i32 1376866003, ; 200: Xamarin.AndroidX.SavedState => 0x52114ed3 => 270
	i32 1379779777, ; 201: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 202: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 203: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 234
	i32 1408764838, ; 204: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 205: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 206: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 207: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 297
	i32 1434145427, ; 208: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 209: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 287
	i32 1439761251, ; 210: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 211: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 212: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 213: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 214: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 215: es\Microsoft.Maui.Controls.resources => 0x57152abe => 303
	i32 1461234159, ; 216: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 217: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 218: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 219: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 224
	i32 1470490898, ; 220: Microsoft.Extensions.Primitives => 0x57a5e912 => 194
	i32 1479771757, ; 221: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 222: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 223: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1489810614, ; 224: Telefonbuch.Core => 0x58ccb4b6 => 333
	i32 1490025113, ; 225: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 271
	i32 1490351284, ; 226: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 178
	i32 1493001747, ; 227: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 307
	i32 1514721132, ; 228: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 302
	i32 1536373174, ; 229: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 230: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 231: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 232: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 233: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 322
	i32 1565862583, ; 234: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 235: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 236: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 237: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 238: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 240
	i32 1592978981, ; 239: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 240: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 288
	i32 1601112923, ; 241: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 242: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 243: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 244: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 260
	i32 1622358360, ; 245: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 246: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 282
	i32 1634654947, ; 247: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 174
	i32 1635184631, ; 248: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 244
	i32 1636350590, ; 249: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 237
	i32 1639515021, ; 250: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 251: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 252: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1653151792, ; 253: Syncfusion.Maui.Inputs.dll => 0x62891830 => 210
	i32 1657153582, ; 254: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 255: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 276
	i32 1658251792, ; 256: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 285
	i32 1670060433, ; 257: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 232
	i32 1675553242, ; 258: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 259: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 260: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 261: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 262: Microsoft.Data.Sqlite => 0x649e8ef3 => 178
	i32 1689493916, ; 263: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 179
	i32 1691477237, ; 264: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 265: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 266: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 292
	i32 1701541528, ; 267: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 268: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 203
	i32 1720223769, ; 269: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 253
	i32 1726116996, ; 270: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 271: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 272: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 228
	i32 1736233607, ; 273: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 320
	i32 1743415430, ; 274: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 298
	i32 1744735666, ; 275: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 276: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 277: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 278: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 279: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 280: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 281: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 275
	i32 1770582343, ; 282: Microsoft.Extensions.Logging.dll => 0x6988f147 => 190
	i32 1776026572, ; 283: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 284: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 285: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 286: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 314
	i32 1788241197, ; 287: Xamarin.AndroidX.Fragment => 0x6a96652d => 246
	i32 1793755602, ; 288: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 306
	i32 1808609942, ; 289: Xamarin.AndroidX.Loader => 0x6bcd3296 => 260
	i32 1813058853, ; 290: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 291
	i32 1813201214, ; 291: Xamarin.Google.Android.Material => 0x6c13413e => 285
	i32 1818569960, ; 292: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 265
	i32 1818787751, ; 293: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 294: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 295: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 296: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 191
	i32 1842015223, ; 297: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 326
	i32 1847515442, ; 298: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 215
	i32 1853025655, ; 299: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 323
	i32 1858542181, ; 300: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 301: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 302: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 305
	i32 1879696579, ; 303: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 304: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 226
	i32 1886040351, ; 305: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 182
	i32 1888955245, ; 306: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 307: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 308: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 309: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 310: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 311: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 312: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 313: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 272
	i32 1968388702, ; 314: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 185
	i32 1983156543, ; 315: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 292
	i32 1985761444, ; 316: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 217
	i32 2003115576, ; 317: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 302
	i32 2011961780, ; 318: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 319: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 182
	i32 2019465201, ; 320: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 257
	i32 2025202353, ; 321: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 297
	i32 2031763787, ; 322: Xamarin.Android.Glide => 0x791a414b => 214
	i32 2045470958, ; 323: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 324: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 252
	i32 2060060697, ; 325: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 326: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 301
	i32 2070888862, ; 327: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 328: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2086965453, ; 329: Telefonbuch.Lib => 0x7c6490cd => 334
	i32 2090596640, ; 330: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 331: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 204
	i32 2127167465, ; 332: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 333: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 334: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 335: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 336: Microsoft.Maui => 0x80bd55ad => 198
	i32 2169148018, ; 337: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 309
	i32 2181898931, ; 338: Microsoft.Extensions.Options.dll => 0x820d22b3 => 193
	i32 2192057212, ; 339: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 191
	i32 2193016926, ; 340: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 341: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 189
	i32 2201107256, ; 342: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 296
	i32 2201231467, ; 343: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 344: it\Microsoft.Maui.Controls.resources => 0x839595db => 311
	i32 2217644978, ; 345: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 279
	i32 2222056684, ; 346: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 347: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 261
	i32 2252106437, ; 348: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 349: Microsoft.EntityFrameworkCore => 0x86487ec9 => 179
	i32 2256313426, ; 350: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 351: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 352: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 186
	i32 2267999099, ; 353: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 216
	i32 2270573516, ; 354: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 305
	i32 2279755925, ; 355: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 268
	i32 2293034957, ; 356: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 357: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 358: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 359: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 315
	i32 2305521784, ; 360: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 361: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 220
	i32 2320631194, ; 362: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 363: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 364: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 365: System.Net.Primitives => 0x8c40e0db => 70
	i32 2354730003, ; 366: Syncfusion.Licensing => 0x8c5a5413 => 205
	i32 2368005991, ; 367: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 368: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 185
	i32 2378619854, ; 369: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 370: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 371: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 310
	i32 2401565422, ; 372: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 373: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 243
	i32 2421380589, ; 374: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 375: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 230
	i32 2427813419, ; 376: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 307
	i32 2435356389, ; 377: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 378: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2443372643, ; 379: en-US/Syncfusion.Maui.ListView.resources.dll => 0x91a2e863 => 331
	i32 2454642406, ; 380: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458300684, ; 381: Telefonbuch.Lib.dll => 0x9286b10c => 334
	i32 2458678730, ; 382: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 383: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 384: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 201
	i32 2465532216, ; 385: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 233
	i32 2471841756, ; 386: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 387: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 388: Microsoft.Maui.Controls => 0x93dba8a1 => 196
	i32 2483903535, ; 389: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 390: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 391: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 392: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 393: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 255
	i32 2522472828, ; 394: Xamarin.Android.Glide.dll => 0x9659e17c => 214
	i32 2538310050, ; 395: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 396: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 308
	i32 2560305368, ; 397: Syncfusion.Maui.Barcode => 0x989b28d8 => 206
	i32 2562349572, ; 398: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 399: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 400: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 256
	i32 2581819634, ; 401: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 278
	i32 2585220780, ; 402: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 403: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 404: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 405: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 317
	i32 2605712449, ; 406: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 296
	i32 2615233544, ; 407: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 247
	i32 2616218305, ; 408: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 192
	i32 2617129537, ; 409: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 410: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 411: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 237
	i32 2624644809, ; 412: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 242
	i32 2626831493, ; 413: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 312
	i32 2627185994, ; 414: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 415: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2631381571, ; 416: Telefonbuch.MApp => 0x9cd7b243 => 0
	i32 2633051222, ; 417: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 251
	i32 2634653062, ; 418: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 181
	i32 2663391936, ; 419: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 216
	i32 2663698177, ; 420: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 421: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 422: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 423: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 424: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 425: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 426: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 276
	i32 2715334215, ; 427: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 428: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 429: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 430: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 431: Xamarin.AndroidX.Activity => 0xa2e0939b => 218
	i32 2735172069, ; 432: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 433: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 224
	i32 2740948882, ; 434: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2743368605, ; 435: Syncfusion.Maui.DataSource => 0xa3847b9d => 208
	i32 2748088231, ; 436: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 437: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 318
	i32 2758225723, ; 438: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 197
	i32 2764765095, ; 439: Microsoft.Maui.dll => 0xa4caf7a7 => 198
	i32 2765824710, ; 440: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 441: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 290
	i32 2778768386, ; 442: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 281
	i32 2779977773, ; 443: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 269
	i32 2785988530, ; 444: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 324
	i32 2788224221, ; 445: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 247
	i32 2801524761, ; 446: en-US\Syncfusion.Maui.ListView.resources => 0xa6fbe019 => 331
	i32 2801831435, ; 447: Microsoft.Maui.Graphics => 0xa7008e0b => 200
	i32 2803228030, ; 448: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 449: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 303
	i32 2810250172, ; 450: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 234
	i32 2819470561, ; 451: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 452: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 453: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 269
	i32 2824502124, ; 454: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 455: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 316
	i32 2838993487, ; 456: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 258
	i32 2847789619, ; 457: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 181
	i32 2849599387, ; 458: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 459: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 281
	i32 2855708567, ; 460: Xamarin.AndroidX.Transition => 0xaa36a797 => 277
	i32 2861098320, ; 461: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 462: Microsoft.Maui.Essentials => 0xaa8a4878 => 199
	i32 2868488919, ; 463: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 174
	i32 2868557005, ; 464: Syncfusion.Licensing.dll => 0xaafab4cd => 205
	i32 2870099610, ; 465: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 219
	i32 2875164099, ; 466: Jsr305Binding.dll => 0xab5f85c3 => 286
	i32 2875220617, ; 467: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 468: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 245
	i32 2887636118, ; 469: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 470: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 471: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 472: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 473: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 474: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 475: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 282
	i32 2919462931, ; 476: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 477: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 221
	i32 2936416060, ; 478: System.Resources.Reader => 0xaf06273c => 98
	i32 2937179955, ; 479: Syncfusion.Maui.Barcode.dll => 0xaf11cf33 => 206
	i32 2940926066, ; 480: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 481: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 482: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 483: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 484: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 485: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 241
	i32 2987532451, ; 486: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 272
	i32 2996846495, ; 487: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 254
	i32 3016983068, ; 488: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 274
	i32 3023353419, ; 489: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 490: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 249
	i32 3038032645, ; 491: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 335
	i32 3056245963, ; 492: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 271
	i32 3057625584, ; 493: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 262
	i32 3059408633, ; 494: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 495: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 496: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 183
	i32 3075834255, ; 497: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 498: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 309
	i32 3090735792, ; 499: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 500: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 501: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 502: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 503: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 504: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 505: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3140633799, ; 506: Syncfusion.Maui.ListView => 0xbb3244c7 => 211
	i32 3147165239, ; 507: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3147228406, ; 508: Syncfusion.Maui.Core => 0xbb96e4f6 => 207
	i32 3148237826, ; 509: GoogleGson.dll => 0xbba64c02 => 177
	i32 3159123045, ; 510: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 511: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3170039328, ; 512: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 211
	i32 3178803400, ; 513: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 263
	i32 3192346100, ; 514: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 515: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 516: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 183
	i32 3204380047, ; 517: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 518: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 519: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 240
	i32 3220365878, ; 520: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 521: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 522: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 523: Xamarin.AndroidX.CardView => 0xc235e84d => 228
	i32 3265493905, ; 524: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 525: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 526: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 527: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 528: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 529: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 530: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 531: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 532: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 304
	i32 3306970809, ; 533: Syncfusion.Maui.Inputs => 0xc51c5eb9 => 210
	i32 3316684772, ; 534: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 535: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 238
	i32 3317144872, ; 536: System.Data => 0xc5b79d28 => 24
	i32 3324377930, ; 537: Syncfusion.Maui.Picker.dll => 0xc625fb4a => 212
	i32 3340431453, ; 538: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 226
	i32 3345895724, ; 539: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 267
	i32 3346324047, ; 540: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 264
	i32 3357674450, ; 541: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 321
	i32 3358260929, ; 542: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 543: SQLitePCLRaw.core => 0xc849ca45 => 202
	i32 3362336904, ; 544: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 219
	i32 3362522851, ; 545: Xamarin.AndroidX.Core => 0xc86c06e3 => 235
	i32 3366347497, ; 546: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 547: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 268
	i32 3381016424, ; 548: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 300
	i32 3381934622, ; 549: Syncfusion.Maui.GridCommon => 0xc9943a1e => 209
	i32 3395150330, ; 550: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 551: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 552: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 239
	i32 3428513518, ; 553: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 187
	i32 3429136800, ; 554: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 555: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 556: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 242
	i32 3445260447, ; 557: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 558: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 195
	i32 3463511458, ; 559: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 308
	i32 3471940407, ; 560: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 561: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 562: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 321
	i32 3484440000, ; 563: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 320
	i32 3485117614, ; 564: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 565: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 566: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 231
	i32 3509114376, ; 567: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 568: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 569: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 570: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3558305335, ; 571: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 208
	i32 3560100363, ; 572: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 573: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 574: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 328
	i32 3597029428, ; 575: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 217
	i32 3598340787, ; 576: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 577: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 578: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 579: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 266
	i32 3633644679, ; 580: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 221
	i32 3638274909, ; 581: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 582: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 252
	i32 3643446276, ; 583: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 325
	i32 3643854240, ; 584: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 263
	i32 3645089577, ; 585: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 586: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 186
	i32 3660523487, ; 587: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 588: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 589: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 227
	i32 3684561358, ; 590: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 231
	i32 3697841164, ; 591: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 330
	i32 3700866549, ; 592: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 593: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 236
	i32 3716563718, ; 594: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 595: Xamarin.AndroidX.Annotation => 0xdda814c6 => 220
	i32 3724971120, ; 596: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 262
	i32 3732100267, ; 597: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 598: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 599: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 600: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 601: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 204
	i32 3786282454, ; 602: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 229
	i32 3792276235, ; 603: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 604: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 195
	i32 3802395368, ; 605: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 606: CommunityToolkit.Maui.dll => 0xe3886bf7 => 173
	i32 3818918118, ; 607: CsvHelper.dll => 0xe3a010e6 => 176
	i32 3819260425, ; 608: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 609: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 610: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 611: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 188
	i32 3844307129, ; 612: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 613: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 614: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 615: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 616: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 617: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 618: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 277
	i32 3888767677, ; 619: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 267
	i32 3889960447, ; 620: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 329
	i32 3896106733, ; 621: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 622: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 235
	i32 3901907137, ; 623: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 624: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 625: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 280
	i32 3928044579, ; 626: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 627: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 628: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 265
	i32 3945713374, ; 629: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 630: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 631: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 223
	i32 3959773229, ; 632: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 254
	i32 3980434154, ; 633: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 324
	i32 3987592930, ; 634: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 306
	i32 4003436829, ; 635: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 636: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 222
	i32 4025784931, ; 637: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 638: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 197
	i32 4054681211, ; 639: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 640: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 641: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 642: Microsoft.Maui.Essentials.dll => 0xf40add04 => 199
	i32 4099507663, ; 643: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 644: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 645: Xamarin.AndroidX.Emoji2 => 0xf479582c => 243
	i32 4101842092, ; 646: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 184
	i32 4102112229, ; 647: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 319
	i32 4125707920, ; 648: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 314
	i32 4126470640, ; 649: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 187
	i32 4127667938, ; 650: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 651: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 652: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 653: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 326
	i32 4151237749, ; 654: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 655: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 656: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 657: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 658: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 659: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 259
	i32 4185676441, ; 660: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 661: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4212600963, ; 662: Telefonbuch.Core.dll => 0xfb173083 => 333
	i32 4213026141, ; 663: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 664: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 236
	i32 4258378803, ; 665: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 258
	i32 4260525087, ; 666: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 667: Microsoft.Maui.Controls.dll => 0xfea12dee => 196
	i32 4274623895, ; 668: CommunityToolkit.Mvvm.dll => 0xfec99597 => 175
	i32 4274976490, ; 669: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 670: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 259
	i32 4294763496 ; 671: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 245
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [672 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 189, ; 3
	i32 255, ; 4
	i32 289, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 30, ; 9
	i32 330, ; 10
	i32 124, ; 11
	i32 200, ; 12
	i32 102, ; 13
	i32 273, ; 14
	i32 107, ; 15
	i32 273, ; 16
	i32 139, ; 17
	i32 293, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 229, ; 22
	i32 207, ; 23
	i32 132, ; 24
	i32 275, ; 25
	i32 151, ; 26
	i32 327, ; 27
	i32 328, ; 28
	i32 18, ; 29
	i32 227, ; 30
	i32 26, ; 31
	i32 249, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 232, ; 37
	i32 147, ; 38
	i32 251, ; 39
	i32 248, ; 40
	i32 299, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 327, ; 44
	i32 218, ; 45
	i32 83, ; 46
	i32 312, ; 47
	i32 250, ; 48
	i32 203, ; 49
	i32 332, ; 50
	i32 311, ; 51
	i32 131, ; 52
	i32 55, ; 53
	i32 213, ; 54
	i32 149, ; 55
	i32 74, ; 56
	i32 145, ; 57
	i32 62, ; 58
	i32 146, ; 59
	i32 335, ; 60
	i32 165, ; 61
	i32 323, ; 62
	i32 233, ; 63
	i32 12, ; 64
	i32 246, ; 65
	i32 125, ; 66
	i32 152, ; 67
	i32 209, ; 68
	i32 113, ; 69
	i32 166, ; 70
	i32 164, ; 71
	i32 248, ; 72
	i32 261, ; 73
	i32 84, ; 74
	i32 310, ; 75
	i32 304, ; 76
	i32 0, ; 77
	i32 194, ; 78
	i32 150, ; 79
	i32 293, ; 80
	i32 60, ; 81
	i32 190, ; 82
	i32 51, ; 83
	i32 103, ; 84
	i32 114, ; 85
	i32 40, ; 86
	i32 286, ; 87
	i32 284, ; 88
	i32 120, ; 89
	i32 318, ; 90
	i32 173, ; 91
	i32 52, ; 92
	i32 44, ; 93
	i32 119, ; 94
	i32 238, ; 95
	i32 316, ; 96
	i32 244, ; 97
	i32 81, ; 98
	i32 136, ; 99
	i32 280, ; 100
	i32 225, ; 101
	i32 8, ; 102
	i32 73, ; 103
	i32 298, ; 104
	i32 155, ; 105
	i32 295, ; 106
	i32 154, ; 107
	i32 213, ; 108
	i32 92, ; 109
	i32 290, ; 110
	i32 45, ; 111
	i32 313, ; 112
	i32 301, ; 113
	i32 294, ; 114
	i32 109, ; 115
	i32 129, ; 116
	i32 201, ; 117
	i32 332, ; 118
	i32 25, ; 119
	i32 215, ; 120
	i32 72, ; 121
	i32 55, ; 122
	i32 46, ; 123
	i32 322, ; 124
	i32 193, ; 125
	i32 239, ; 126
	i32 22, ; 127
	i32 253, ; 128
	i32 86, ; 129
	i32 43, ; 130
	i32 160, ; 131
	i32 71, ; 132
	i32 266, ; 133
	i32 3, ; 134
	i32 42, ; 135
	i32 63, ; 136
	i32 176, ; 137
	i32 16, ; 138
	i32 53, ; 139
	i32 212, ; 140
	i32 325, ; 141
	i32 289, ; 142
	i32 105, ; 143
	i32 294, ; 144
	i32 287, ; 145
	i32 250, ; 146
	i32 34, ; 147
	i32 158, ; 148
	i32 85, ; 149
	i32 32, ; 150
	i32 12, ; 151
	i32 51, ; 152
	i32 56, ; 153
	i32 270, ; 154
	i32 36, ; 155
	i32 188, ; 156
	i32 300, ; 157
	i32 288, ; 158
	i32 223, ; 159
	i32 35, ; 160
	i32 58, ; 161
	i32 257, ; 162
	i32 177, ; 163
	i32 17, ; 164
	i32 291, ; 165
	i32 164, ; 166
	i32 313, ; 167
	i32 256, ; 168
	i32 192, ; 169
	i32 283, ; 170
	i32 180, ; 171
	i32 319, ; 172
	i32 153, ; 173
	i32 279, ; 174
	i32 264, ; 175
	i32 180, ; 176
	i32 317, ; 177
	i32 225, ; 178
	i32 184, ; 179
	i32 29, ; 180
	i32 175, ; 181
	i32 52, ; 182
	i32 315, ; 183
	i32 284, ; 184
	i32 5, ; 185
	i32 299, ; 186
	i32 274, ; 187
	i32 278, ; 188
	i32 230, ; 189
	i32 295, ; 190
	i32 222, ; 191
	i32 202, ; 192
	i32 241, ; 193
	i32 85, ; 194
	i32 283, ; 195
	i32 61, ; 196
	i32 112, ; 197
	i32 57, ; 198
	i32 329, ; 199
	i32 270, ; 200
	i32 99, ; 201
	i32 19, ; 202
	i32 234, ; 203
	i32 111, ; 204
	i32 101, ; 205
	i32 102, ; 206
	i32 297, ; 207
	i32 104, ; 208
	i32 287, ; 209
	i32 71, ; 210
	i32 38, ; 211
	i32 32, ; 212
	i32 103, ; 213
	i32 73, ; 214
	i32 303, ; 215
	i32 9, ; 216
	i32 123, ; 217
	i32 46, ; 218
	i32 224, ; 219
	i32 194, ; 220
	i32 9, ; 221
	i32 43, ; 222
	i32 4, ; 223
	i32 333, ; 224
	i32 271, ; 225
	i32 178, ; 226
	i32 307, ; 227
	i32 302, ; 228
	i32 31, ; 229
	i32 138, ; 230
	i32 92, ; 231
	i32 93, ; 232
	i32 322, ; 233
	i32 49, ; 234
	i32 141, ; 235
	i32 112, ; 236
	i32 140, ; 237
	i32 240, ; 238
	i32 115, ; 239
	i32 288, ; 240
	i32 157, ; 241
	i32 76, ; 242
	i32 79, ; 243
	i32 260, ; 244
	i32 37, ; 245
	i32 282, ; 246
	i32 174, ; 247
	i32 244, ; 248
	i32 237, ; 249
	i32 64, ; 250
	i32 138, ; 251
	i32 15, ; 252
	i32 210, ; 253
	i32 116, ; 254
	i32 276, ; 255
	i32 285, ; 256
	i32 232, ; 257
	i32 48, ; 258
	i32 70, ; 259
	i32 80, ; 260
	i32 126, ; 261
	i32 178, ; 262
	i32 179, ; 263
	i32 94, ; 264
	i32 121, ; 265
	i32 292, ; 266
	i32 26, ; 267
	i32 203, ; 268
	i32 253, ; 269
	i32 97, ; 270
	i32 28, ; 271
	i32 228, ; 272
	i32 320, ; 273
	i32 298, ; 274
	i32 149, ; 275
	i32 169, ; 276
	i32 4, ; 277
	i32 98, ; 278
	i32 33, ; 279
	i32 93, ; 280
	i32 275, ; 281
	i32 190, ; 282
	i32 21, ; 283
	i32 41, ; 284
	i32 170, ; 285
	i32 314, ; 286
	i32 246, ; 287
	i32 306, ; 288
	i32 260, ; 289
	i32 291, ; 290
	i32 285, ; 291
	i32 265, ; 292
	i32 2, ; 293
	i32 134, ; 294
	i32 111, ; 295
	i32 191, ; 296
	i32 326, ; 297
	i32 215, ; 298
	i32 323, ; 299
	i32 58, ; 300
	i32 95, ; 301
	i32 305, ; 302
	i32 39, ; 303
	i32 226, ; 304
	i32 182, ; 305
	i32 25, ; 306
	i32 94, ; 307
	i32 89, ; 308
	i32 99, ; 309
	i32 10, ; 310
	i32 87, ; 311
	i32 100, ; 312
	i32 272, ; 313
	i32 185, ; 314
	i32 292, ; 315
	i32 217, ; 316
	i32 302, ; 317
	i32 7, ; 318
	i32 182, ; 319
	i32 257, ; 320
	i32 297, ; 321
	i32 214, ; 322
	i32 88, ; 323
	i32 252, ; 324
	i32 154, ; 325
	i32 301, ; 326
	i32 33, ; 327
	i32 116, ; 328
	i32 334, ; 329
	i32 82, ; 330
	i32 204, ; 331
	i32 20, ; 332
	i32 11, ; 333
	i32 162, ; 334
	i32 3, ; 335
	i32 198, ; 336
	i32 309, ; 337
	i32 193, ; 338
	i32 191, ; 339
	i32 84, ; 340
	i32 189, ; 341
	i32 296, ; 342
	i32 64, ; 343
	i32 311, ; 344
	i32 279, ; 345
	i32 143, ; 346
	i32 261, ; 347
	i32 157, ; 348
	i32 179, ; 349
	i32 41, ; 350
	i32 117, ; 351
	i32 186, ; 352
	i32 216, ; 353
	i32 305, ; 354
	i32 268, ; 355
	i32 131, ; 356
	i32 75, ; 357
	i32 66, ; 358
	i32 315, ; 359
	i32 172, ; 360
	i32 220, ; 361
	i32 143, ; 362
	i32 106, ; 363
	i32 151, ; 364
	i32 70, ; 365
	i32 205, ; 366
	i32 156, ; 367
	i32 185, ; 368
	i32 121, ; 369
	i32 127, ; 370
	i32 310, ; 371
	i32 152, ; 372
	i32 243, ; 373
	i32 141, ; 374
	i32 230, ; 375
	i32 307, ; 376
	i32 20, ; 377
	i32 14, ; 378
	i32 331, ; 379
	i32 135, ; 380
	i32 334, ; 381
	i32 75, ; 382
	i32 59, ; 383
	i32 201, ; 384
	i32 233, ; 385
	i32 167, ; 386
	i32 168, ; 387
	i32 196, ; 388
	i32 15, ; 389
	i32 74, ; 390
	i32 6, ; 391
	i32 23, ; 392
	i32 255, ; 393
	i32 214, ; 394
	i32 91, ; 395
	i32 308, ; 396
	i32 206, ; 397
	i32 1, ; 398
	i32 136, ; 399
	i32 256, ; 400
	i32 278, ; 401
	i32 134, ; 402
	i32 69, ; 403
	i32 146, ; 404
	i32 317, ; 405
	i32 296, ; 406
	i32 247, ; 407
	i32 192, ; 408
	i32 88, ; 409
	i32 96, ; 410
	i32 237, ; 411
	i32 242, ; 412
	i32 312, ; 413
	i32 31, ; 414
	i32 45, ; 415
	i32 0, ; 416
	i32 251, ; 417
	i32 181, ; 418
	i32 216, ; 419
	i32 109, ; 420
	i32 158, ; 421
	i32 35, ; 422
	i32 22, ; 423
	i32 114, ; 424
	i32 57, ; 425
	i32 276, ; 426
	i32 144, ; 427
	i32 118, ; 428
	i32 120, ; 429
	i32 110, ; 430
	i32 218, ; 431
	i32 139, ; 432
	i32 224, ; 433
	i32 54, ; 434
	i32 208, ; 435
	i32 105, ; 436
	i32 318, ; 437
	i32 197, ; 438
	i32 198, ; 439
	i32 133, ; 440
	i32 290, ; 441
	i32 281, ; 442
	i32 269, ; 443
	i32 324, ; 444
	i32 247, ; 445
	i32 331, ; 446
	i32 200, ; 447
	i32 159, ; 448
	i32 303, ; 449
	i32 234, ; 450
	i32 163, ; 451
	i32 132, ; 452
	i32 269, ; 453
	i32 161, ; 454
	i32 316, ; 455
	i32 258, ; 456
	i32 181, ; 457
	i32 140, ; 458
	i32 281, ; 459
	i32 277, ; 460
	i32 169, ; 461
	i32 199, ; 462
	i32 174, ; 463
	i32 205, ; 464
	i32 219, ; 465
	i32 286, ; 466
	i32 40, ; 467
	i32 245, ; 468
	i32 81, ; 469
	i32 56, ; 470
	i32 37, ; 471
	i32 97, ; 472
	i32 166, ; 473
	i32 172, ; 474
	i32 282, ; 475
	i32 82, ; 476
	i32 221, ; 477
	i32 98, ; 478
	i32 206, ; 479
	i32 30, ; 480
	i32 159, ; 481
	i32 18, ; 482
	i32 127, ; 483
	i32 119, ; 484
	i32 241, ; 485
	i32 272, ; 486
	i32 254, ; 487
	i32 274, ; 488
	i32 165, ; 489
	i32 249, ; 490
	i32 335, ; 491
	i32 271, ; 492
	i32 262, ; 493
	i32 170, ; 494
	i32 16, ; 495
	i32 183, ; 496
	i32 144, ; 497
	i32 309, ; 498
	i32 125, ; 499
	i32 118, ; 500
	i32 38, ; 501
	i32 115, ; 502
	i32 47, ; 503
	i32 142, ; 504
	i32 117, ; 505
	i32 211, ; 506
	i32 34, ; 507
	i32 207, ; 508
	i32 177, ; 509
	i32 95, ; 510
	i32 53, ; 511
	i32 211, ; 512
	i32 263, ; 513
	i32 129, ; 514
	i32 153, ; 515
	i32 183, ; 516
	i32 24, ; 517
	i32 161, ; 518
	i32 240, ; 519
	i32 148, ; 520
	i32 104, ; 521
	i32 89, ; 522
	i32 228, ; 523
	i32 60, ; 524
	i32 142, ; 525
	i32 100, ; 526
	i32 5, ; 527
	i32 13, ; 528
	i32 122, ; 529
	i32 135, ; 530
	i32 28, ; 531
	i32 304, ; 532
	i32 210, ; 533
	i32 72, ; 534
	i32 238, ; 535
	i32 24, ; 536
	i32 212, ; 537
	i32 226, ; 538
	i32 267, ; 539
	i32 264, ; 540
	i32 321, ; 541
	i32 137, ; 542
	i32 202, ; 543
	i32 219, ; 544
	i32 235, ; 545
	i32 168, ; 546
	i32 268, ; 547
	i32 300, ; 548
	i32 209, ; 549
	i32 101, ; 550
	i32 123, ; 551
	i32 239, ; 552
	i32 187, ; 553
	i32 163, ; 554
	i32 167, ; 555
	i32 242, ; 556
	i32 39, ; 557
	i32 195, ; 558
	i32 308, ; 559
	i32 17, ; 560
	i32 171, ; 561
	i32 321, ; 562
	i32 320, ; 563
	i32 137, ; 564
	i32 150, ; 565
	i32 231, ; 566
	i32 155, ; 567
	i32 130, ; 568
	i32 19, ; 569
	i32 65, ; 570
	i32 208, ; 571
	i32 147, ; 572
	i32 47, ; 573
	i32 328, ; 574
	i32 217, ; 575
	i32 79, ; 576
	i32 61, ; 577
	i32 106, ; 578
	i32 266, ; 579
	i32 221, ; 580
	i32 49, ; 581
	i32 252, ; 582
	i32 325, ; 583
	i32 263, ; 584
	i32 14, ; 585
	i32 186, ; 586
	i32 68, ; 587
	i32 171, ; 588
	i32 227, ; 589
	i32 231, ; 590
	i32 330, ; 591
	i32 78, ; 592
	i32 236, ; 593
	i32 108, ; 594
	i32 220, ; 595
	i32 262, ; 596
	i32 67, ; 597
	i32 63, ; 598
	i32 27, ; 599
	i32 160, ; 600
	i32 204, ; 601
	i32 229, ; 602
	i32 10, ; 603
	i32 195, ; 604
	i32 11, ; 605
	i32 173, ; 606
	i32 176, ; 607
	i32 78, ; 608
	i32 126, ; 609
	i32 83, ; 610
	i32 188, ; 611
	i32 66, ; 612
	i32 107, ; 613
	i32 65, ; 614
	i32 128, ; 615
	i32 122, ; 616
	i32 77, ; 617
	i32 277, ; 618
	i32 267, ; 619
	i32 329, ; 620
	i32 8, ; 621
	i32 235, ; 622
	i32 2, ; 623
	i32 44, ; 624
	i32 280, ; 625
	i32 156, ; 626
	i32 128, ; 627
	i32 265, ; 628
	i32 23, ; 629
	i32 133, ; 630
	i32 223, ; 631
	i32 254, ; 632
	i32 324, ; 633
	i32 306, ; 634
	i32 29, ; 635
	i32 222, ; 636
	i32 62, ; 637
	i32 197, ; 638
	i32 90, ; 639
	i32 87, ; 640
	i32 148, ; 641
	i32 199, ; 642
	i32 36, ; 643
	i32 86, ; 644
	i32 243, ; 645
	i32 184, ; 646
	i32 319, ; 647
	i32 314, ; 648
	i32 187, ; 649
	i32 50, ; 650
	i32 6, ; 651
	i32 90, ; 652
	i32 326, ; 653
	i32 21, ; 654
	i32 162, ; 655
	i32 96, ; 656
	i32 50, ; 657
	i32 113, ; 658
	i32 259, ; 659
	i32 130, ; 660
	i32 76, ; 661
	i32 333, ; 662
	i32 27, ; 663
	i32 236, ; 664
	i32 258, ; 665
	i32 7, ; 666
	i32 196, ; 667
	i32 175, ; 668
	i32 110, ; 669
	i32 259, ; 670
	i32 245 ; 671
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
