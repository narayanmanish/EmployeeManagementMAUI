; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [330 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [654 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 248
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 282
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 290
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 8: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 299
	i32 42639949, ; 9: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 323
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 205
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 15: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 307
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 266
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 266
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 286
	i32 136584136, ; 21: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 322
	i32 140062828, ; 22: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 315
	i32 142721839, ; 23: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 24: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 25: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 26: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 222
	i32 176265551, ; 27: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 28: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 268
	i32 184328833, ; 29: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 220
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 242
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 38: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 176
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 225
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 244
	i32 279614728, ; 42: Client => 0x10aa9508 => 0
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 241
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 320
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 211
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 49: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 298
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 243
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 326
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 60: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 318
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 226
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 239
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 241
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 254
	i32 489220957, ; 71: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 296
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 73: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 198
	i32 526420162, ; 74: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 75: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 286
	i32 530272170, ; 76: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 77: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 317
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 194
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 82: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 83: Jsr305Binding => 0x213954e7 => 279
	i32 569601784, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 277
	i32 571435654, ; 85: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 191
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 231
	i32 627931235, ; 91: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 309
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 237
	i32 643868501, ; 93: System.Net => 0x2660a755 => 81
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 273
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 218
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 98: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 99: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 100: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 288
	i32 693804605, ; 101: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 102: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 103: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 283
	i32 700358131, ; 104: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 105: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 287
	i32 722857257, ; 106: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 107: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 108: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 109: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 208
	i32 759454413, ; 110: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 111: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 112: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 113: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 315
	i32 788436443, ; 114: BaseLibrary => 0x2efe95db => 324
	i32 789151979, ; 115: Microsoft.Extensions.Options => 0x2f0980eb => 197
	i32 790371945, ; 116: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 232
	i32 804008546, ; 117: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 180
	i32 804715423, ; 118: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 119: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 246
	i32 823281589, ; 120: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 121: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 122: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 123: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 124: Xamarin.AndroidX.Print => 0x3246f6cd => 259
	i32 869139383, ; 125: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 300
	i32 873119928, ; 126: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 127: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 128: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 129: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 314
	i32 904024072, ; 130: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 131: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 132: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 311
	i32 928116545, ; 133: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 282
	i32 952186615, ; 134: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 135: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 287
	i32 961460050, ; 136: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 304
	i32 966729478, ; 137: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 280
	i32 967690846, ; 138: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 243
	i32 975236339, ; 139: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 140: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 141: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 142: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 143: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 313
	i32 992768348, ; 144: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 145: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 146: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 193
	i32 1001831731, ; 147: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 148: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 263
	i32 1019214401, ; 149: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 150: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 188
	i32 1031528504, ; 151: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 281
	i32 1035644815, ; 152: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 216
	i32 1036536393, ; 153: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 154: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 294
	i32 1044663988, ; 155: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 156: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 250
	i32 1067306892, ; 157: GoogleGson => 0x3f9dcf8c => 174
	i32 1082857460, ; 158: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 159: Xamarin.Kotlin.StdLib => 0x409e66d8 => 284
	i32 1098259244, ; 160: System => 0x41761b2c => 164
	i32 1106973742, ; 161: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 185
	i32 1108272742, ; 162: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 316
	i32 1117529484, ; 163: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 310
	i32 1118262833, ; 164: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 306
	i32 1121599056, ; 165: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 249
	i32 1127624469, ; 166: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 196
	i32 1149092582, ; 167: Xamarin.AndroidX.Window => 0x447dc2e6 => 276
	i32 1168523401, ; 168: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 312
	i32 1170634674, ; 169: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 170: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 189
	i32 1175144683, ; 171: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 272
	i32 1178241025, ; 172: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 257
	i32 1204270330, ; 173: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 218
	i32 1208641965, ; 174: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 175: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 176: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 277
	i32 1253011324, ; 177: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 178: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 292
	i32 1264511973, ; 179: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 267
	i32 1267360935, ; 180: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 271
	i32 1273260888, ; 181: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 223
	i32 1275534314, ; 182: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 288
	i32 1278448581, ; 183: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 215
	i32 1293217323, ; 184: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 234
	i32 1308624726, ; 185: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 301
	i32 1309188875, ; 186: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 187: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 276
	i32 1324164729, ; 188: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 189: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 190: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 321
	i32 1364015309, ; 191: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 192: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 322
	i32 1376866003, ; 193: Xamarin.AndroidX.SavedState => 0x52114ed3 => 263
	i32 1379779777, ; 194: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 195: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 196: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 227
	i32 1408764838, ; 197: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 198: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 199: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 200: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 290
	i32 1434145427, ; 201: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 202: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 280
	i32 1439761251, ; 203: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 204: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1452416952, ; 205: AutoMapper => 0x56921fb8 => 173
	i32 1453312822, ; 206: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 207: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 190
	i32 1457743152, ; 208: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 209: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 210: es\Microsoft.Maui.Controls.resources => 0x57152abe => 296
	i32 1461234159, ; 211: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 212: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 213: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 214: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 217
	i32 1470490898, ; 215: Microsoft.Extensions.Primitives => 0x57a5e912 => 198
	i32 1479771757, ; 216: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 217: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 218: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 219: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 264
	i32 1521091094, ; 220: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 193
	i32 1526286932, ; 221: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 320
	i32 1536373174, ; 222: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 223: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 224: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 225: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 180
	i32 1550322496, ; 226: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 227: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 228: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 229: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 230: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 231: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 233
	i32 1592978981, ; 232: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 233: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 281
	i32 1601112923, ; 234: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 235: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 236: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 237: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 253
	i32 1622358360, ; 238: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 239: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 275
	i32 1632842087, ; 240: Microsoft.Extensions.Configuration.Json => 0x61533167 => 186
	i32 1635184631, ; 241: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 237
	i32 1636350590, ; 242: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 230
	i32 1639515021, ; 243: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 244: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 245: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 246: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 179
	i32 1657153582, ; 247: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 248: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 269
	i32 1658251792, ; 249: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 278
	i32 1670060433, ; 250: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 225
	i32 1675553242, ; 251: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 252: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 253: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 254: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 255: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 256: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 257: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 285
	i32 1701541528, ; 258: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 259: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 246
	i32 1726116996, ; 260: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 261: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 262: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 221
	i32 1743415430, ; 263: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 291
	i32 1744735666, ; 264: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 265: System.IO.Pipelines.dll => 0x68139a0d => 206
	i32 1746316138, ; 266: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 267: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 268: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 269: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 178
	i32 1763938596, ; 270: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 271: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 272: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 268
	i32 1770582343, ; 273: Microsoft.Extensions.Logging.dll => 0x6988f147 => 194
	i32 1776026572, ; 274: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 275: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 276: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 277: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 307
	i32 1788241197, ; 278: Xamarin.AndroidX.Fragment => 0x6a96652d => 239
	i32 1793755602, ; 279: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 299
	i32 1808609942, ; 280: Xamarin.AndroidX.Loader => 0x6bcd3296 => 253
	i32 1813058853, ; 281: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 284
	i32 1813201214, ; 282: Xamarin.Google.Android.Material => 0x6c13413e => 278
	i32 1818569960, ; 283: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 258
	i32 1818787751, ; 284: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 285: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 286: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 287: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 195
	i32 1847515442, ; 288: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 208
	i32 1853025655, ; 289: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 316
	i32 1858542181, ; 290: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 291: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 292: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 298
	i32 1879696579, ; 293: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 294: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 219
	i32 1888955245, ; 295: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 296: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 297: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 292
	i32 1898237753, ; 298: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 299: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 300: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 301: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 302: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 303
	i32 1956758971, ; 303: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 304: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 265
	i32 1968388702, ; 305: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 182
	i32 1983156543, ; 306: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 285
	i32 1985761444, ; 307: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 210
	i32 2003115576, ; 308: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 295
	i32 2011961780, ; 309: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 310: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 250
	i32 2031445118, ; 311: AutoMapper.dll => 0x7915647e => 173
	i32 2031763787, ; 312: Xamarin.Android.Glide => 0x791a414b => 207
	i32 2045470958, ; 313: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 314: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 184
	i32 2055257422, ; 315: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 245
	i32 2060060697, ; 316: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 317: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 294
	i32 2070888862, ; 318: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 319: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 192
	i32 2079903147, ; 320: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 321: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 322: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 323: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 324: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 325: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 326: Microsoft.Maui => 0x80bd55ad => 203
	i32 2161210541, ; 327: ClientLibrary => 0x80d174ad => 325
	i32 2169148018, ; 328: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 302
	i32 2181898931, ; 329: Microsoft.Extensions.Options.dll => 0x820d22b3 => 197
	i32 2192057212, ; 330: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 195
	i32 2193016926, ; 331: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 332: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 289
	i32 2201231467, ; 333: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 334: it\Microsoft.Maui.Controls.resources => 0x839595db => 304
	i32 2217644978, ; 335: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 272
	i32 2222056684, ; 336: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 337: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 254
	i32 2252106437, ; 338: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 339: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 340: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 341: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 183
	i32 2267999099, ; 342: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 209
	i32 2279755925, ; 343: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 261
	i32 2293034957, ; 344: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 345: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 346: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 347: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 308
	i32 2305521784, ; 348: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 349: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 213
	i32 2320631194, ; 350: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 351: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 352: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 353: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 354: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 302
	i32 2368005991, ; 355: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 356: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 182
	i32 2378619854, ; 357: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 358: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 359: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 303
	i32 2401565422, ; 360: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 361: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 236
	i32 2411328690, ; 362: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 176
	i32 2421380589, ; 363: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 364: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 223
	i32 2427813419, ; 365: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 300
	i32 2435356389, ; 366: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 367: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 368: Microsoft.JSInterop.dll => 0x919672ca => 199
	i32 2454642406, ; 369: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 370: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 371: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 372: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 226
	i32 2471841756, ; 373: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 374: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 375: Microsoft.Maui.Controls => 0x93dba8a1 => 201
	i32 2483903535, ; 376: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 377: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 378: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 379: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 380: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 306
	i32 2505896520, ; 381: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 248
	i32 2522472828, ; 382: Xamarin.Android.Glide.dll => 0x9659e17c => 207
	i32 2537015816, ; 383: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 175
	i32 2538310050, ; 384: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 385: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 301
	i32 2562349572, ; 386: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 387: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 388: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 305
	i32 2581783588, ; 389: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 249
	i32 2581819634, ; 390: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 271
	i32 2585220780, ; 391: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 392: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 393: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 177
	i32 2589602615, ; 394: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 395: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 189
	i32 2593496499, ; 396: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 310
	i32 2605712449, ; 397: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 289
	i32 2615233544, ; 398: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 240
	i32 2616218305, ; 399: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 196
	i32 2617129537, ; 400: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 401: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 402: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 230
	i32 2624644809, ; 403: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 235
	i32 2626831493, ; 404: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 305
	i32 2627185994, ; 405: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 406: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 407: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 244
	i32 2663391936, ; 408: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 209
	i32 2663698177, ; 409: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 410: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 411: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 412: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 413: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 414: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 179
	i32 2693849962, ; 415: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 416: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 269
	i32 2715334215, ; 417: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 418: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 419: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 420: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 421: Xamarin.AndroidX.Activity => 0xa2e0939b => 211
	i32 2735172069, ; 422: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 423: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 175
	i32 2737747696, ; 424: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 217
	i32 2740698338, ; 425: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 291
	i32 2740948882, ; 426: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 427: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 428: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 311
	i32 2758225723, ; 429: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 202
	i32 2764765095, ; 430: Microsoft.Maui.dll => 0xa4caf7a7 => 203
	i32 2765824710, ; 431: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 432: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 283
	i32 2778768386, ; 433: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 274
	i32 2779977773, ; 434: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 262
	i32 2785988530, ; 435: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 317
	i32 2788224221, ; 436: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 240
	i32 2801831435, ; 437: Microsoft.Maui.Graphics => 0xa7008e0b => 205
	i32 2803228030, ; 438: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 439: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 227
	i32 2819470561, ; 440: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 441: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 442: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 262
	i32 2824502124, ; 443: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 444: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 181
	i32 2838993487, ; 445: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 251
	i32 2849599387, ; 446: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 447: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 274
	i32 2855708567, ; 448: Xamarin.AndroidX.Transition => 0xaa36a797 => 270
	i32 2861098320, ; 449: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 450: Microsoft.Maui.Essentials => 0xaa8a4878 => 204
	i32 2870099610, ; 451: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 212
	i32 2875164099, ; 452: Jsr305Binding.dll => 0xab5f85c3 => 279
	i32 2875220617, ; 453: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 454: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 238
	i32 2887636118, ; 455: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 456: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 178
	i32 2899753641, ; 457: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 458: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 459: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 460: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 461: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 462: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 192
	i32 2916838712, ; 463: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 275
	i32 2919462931, ; 464: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 465: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 214
	i32 2936416060, ; 466: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 467: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 468: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 469: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 470: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 471: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 472: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 234
	i32 2987532451, ; 473: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 265
	i32 2996846495, ; 474: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 247
	i32 3016983068, ; 475: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 267
	i32 3023353419, ; 476: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 477: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 242
	i32 3038032645, ; 478: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 326
	i32 3053864966, ; 479: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 297
	i32 3056245963, ; 480: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 264
	i32 3057625584, ; 481: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 255
	i32 3059408633, ; 482: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 483: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 484: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 485: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 486: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 487: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 488: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 489: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 490: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 491: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 492: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 493: GoogleGson.dll => 0xbba64c02 => 174
	i32 3159123045, ; 494: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 495: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 496: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 256
	i32 3192346100, ; 497: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 498: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 499: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 500: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 501: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 233
	i32 3220365878, ; 502: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 503: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 504: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 505: Xamarin.AndroidX.CardView => 0xc235e84d => 221
	i32 3263653798, ; 506: ClientLibrary.dll => 0xc28767a6 => 325
	i32 3265493905, ; 507: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 508: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 509: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 510: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 511: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 512: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 513: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 514: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 515: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 297
	i32 3316684772, ; 516: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 517: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 231
	i32 3317144872, ; 518: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 519: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 219
	i32 3345895724, ; 520: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 260
	i32 3346324047, ; 521: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 257
	i32 3357674450, ; 522: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 314
	i32 3358260929, ; 523: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 524: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 212
	i32 3362522851, ; 525: Xamarin.AndroidX.Core => 0xc86c06e3 => 228
	i32 3366347497, ; 526: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 527: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 261
	i32 3381016424, ; 528: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 293
	i32 3395150330, ; 529: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 530: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 531: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 232
	i32 3406629867, ; 532: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 190
	i32 3421170118, ; 533: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 184
	i32 3428513518, ; 534: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 187
	i32 3429136800, ; 535: System.Xml => 0xcc6479a0 => 163
	i32 3430518087, ; 536: BaseLibrary.dll => 0xcc798d47 => 324
	i32 3430777524, ; 537: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 538: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 235
	i32 3445260447, ; 539: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 540: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 200
	i32 3458724246, ; 541: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 312
	i32 3464190856, ; 542: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 177
	i32 3471940407, ; 543: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 544: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 545: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 313
	i32 3485117614, ; 546: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 547: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 548: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 224
	i32 3500000672, ; 549: Microsoft.JSInterop => 0xd09dc5a0 => 199
	i32 3509114376, ; 550: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 551: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 552: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 553: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 554: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 555: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3572198165, ; 556: Client.dll => 0xd4eb6b15 => 0
	i32 3580758918, ; 557: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 321
	i32 3592228221, ; 558: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 323
	i32 3597029428, ; 559: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 210
	i32 3598340787, ; 560: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 561: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 562: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 563: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 259
	i32 3633644679, ; 564: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 214
	i32 3638274909, ; 565: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 566: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 245
	i32 3643446276, ; 567: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 318
	i32 3643854240, ; 568: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 256
	i32 3645089577, ; 569: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 570: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 183
	i32 3660523487, ; 571: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 572: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 573: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 220
	i32 3684561358, ; 574: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 224
	i32 3700866549, ; 575: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 576: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 229
	i32 3716563718, ; 577: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 578: Xamarin.AndroidX.Annotation => 0xdda814c6 => 213
	i32 3722202641, ; 579: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 186
	i32 3724971120, ; 580: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 255
	i32 3732100267, ; 581: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 582: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 181
	i32 3737834244, ; 583: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 584: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 585: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 586: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 293
	i32 3758424670, ; 587: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 185
	i32 3786282454, ; 588: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 222
	i32 3792276235, ; 589: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 590: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 200
	i32 3802395368, ; 591: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 592: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 593: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 594: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 595: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 188
	i32 3844307129, ; 596: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 597: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 598: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 599: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 600: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 601: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 602: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 270
	i32 3888767677, ; 603: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 260
	i32 3896106733, ; 604: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 605: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 228
	i32 3901907137, ; 606: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 607: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 309
	i32 3920810846, ; 608: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 609: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 273
	i32 3928044579, ; 610: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 611: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 612: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 258
	i32 3945713374, ; 613: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 614: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 615: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 216
	i32 3959773229, ; 616: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 247
	i32 4003436829, ; 617: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 618: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 215
	i32 4023392905, ; 619: System.IO.Pipelines => 0xefd01a89 => 206
	i32 4025784931, ; 620: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 621: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 202
	i32 4054681211, ; 622: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 623: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 624: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 625: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 295
	i32 4094352644, ; 626: Microsoft.Maui.Essentials.dll => 0xf40add04 => 204
	i32 4099507663, ; 627: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 628: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 629: Xamarin.AndroidX.Emoji2 => 0xf479582c => 236
	i32 4103439459, ; 630: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 319
	i32 4126470640, ; 631: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 187
	i32 4127667938, ; 632: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 633: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 634: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 635: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 319
	i32 4151237749, ; 636: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 637: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 638: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 639: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 640: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 641: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 252
	i32 4185676441, ; 642: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 643: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 644: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 645: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 308
	i32 4256097574, ; 646: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 229
	i32 4258378803, ; 647: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 251
	i32 4260525087, ; 648: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 649: Microsoft.Maui.Controls.dll => 0xfea12dee => 201
	i32 4274976490, ; 650: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 651: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 252
	i32 4294648842, ; 652: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 191
	i32 4294763496 ; 653: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 238
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [654 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 248, ; 3
	i32 282, ; 4
	i32 48, ; 5
	i32 290, ; 6
	i32 80, ; 7
	i32 299, ; 8
	i32 145, ; 9
	i32 30, ; 10
	i32 323, ; 11
	i32 124, ; 12
	i32 205, ; 13
	i32 102, ; 14
	i32 307, ; 15
	i32 266, ; 16
	i32 107, ; 17
	i32 266, ; 18
	i32 139, ; 19
	i32 286, ; 20
	i32 322, ; 21
	i32 315, ; 22
	i32 77, ; 23
	i32 124, ; 24
	i32 13, ; 25
	i32 222, ; 26
	i32 132, ; 27
	i32 268, ; 28
	i32 151, ; 29
	i32 18, ; 30
	i32 220, ; 31
	i32 26, ; 32
	i32 242, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 176, ; 38
	i32 225, ; 39
	i32 147, ; 40
	i32 244, ; 41
	i32 0, ; 42
	i32 241, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 320, ; 46
	i32 211, ; 47
	i32 83, ; 48
	i32 298, ; 49
	i32 243, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 326, ; 58
	i32 165, ; 59
	i32 318, ; 60
	i32 226, ; 61
	i32 12, ; 62
	i32 239, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 241, ; 69
	i32 254, ; 70
	i32 296, ; 71
	i32 84, ; 72
	i32 198, ; 73
	i32 150, ; 74
	i32 286, ; 75
	i32 60, ; 76
	i32 317, ; 77
	i32 194, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 40, ; 82
	i32 279, ; 83
	i32 277, ; 84
	i32 191, ; 85
	i32 120, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 231, ; 90
	i32 309, ; 91
	i32 237, ; 92
	i32 81, ; 93
	i32 136, ; 94
	i32 273, ; 95
	i32 218, ; 96
	i32 8, ; 97
	i32 73, ; 98
	i32 155, ; 99
	i32 288, ; 100
	i32 154, ; 101
	i32 92, ; 102
	i32 283, ; 103
	i32 45, ; 104
	i32 287, ; 105
	i32 109, ; 106
	i32 129, ; 107
	i32 25, ; 108
	i32 208, ; 109
	i32 72, ; 110
	i32 55, ; 111
	i32 46, ; 112
	i32 315, ; 113
	i32 324, ; 114
	i32 197, ; 115
	i32 232, ; 116
	i32 180, ; 117
	i32 22, ; 118
	i32 246, ; 119
	i32 86, ; 120
	i32 43, ; 121
	i32 160, ; 122
	i32 71, ; 123
	i32 259, ; 124
	i32 300, ; 125
	i32 3, ; 126
	i32 42, ; 127
	i32 63, ; 128
	i32 314, ; 129
	i32 16, ; 130
	i32 53, ; 131
	i32 311, ; 132
	i32 282, ; 133
	i32 105, ; 134
	i32 287, ; 135
	i32 304, ; 136
	i32 280, ; 137
	i32 243, ; 138
	i32 34, ; 139
	i32 158, ; 140
	i32 85, ; 141
	i32 32, ; 142
	i32 313, ; 143
	i32 12, ; 144
	i32 51, ; 145
	i32 193, ; 146
	i32 56, ; 147
	i32 263, ; 148
	i32 36, ; 149
	i32 188, ; 150
	i32 281, ; 151
	i32 216, ; 152
	i32 35, ; 153
	i32 294, ; 154
	i32 58, ; 155
	i32 250, ; 156
	i32 174, ; 157
	i32 17, ; 158
	i32 284, ; 159
	i32 164, ; 160
	i32 185, ; 161
	i32 316, ; 162
	i32 310, ; 163
	i32 306, ; 164
	i32 249, ; 165
	i32 196, ; 166
	i32 276, ; 167
	i32 312, ; 168
	i32 153, ; 169
	i32 189, ; 170
	i32 272, ; 171
	i32 257, ; 172
	i32 218, ; 173
	i32 29, ; 174
	i32 52, ; 175
	i32 277, ; 176
	i32 5, ; 177
	i32 292, ; 178
	i32 267, ; 179
	i32 271, ; 180
	i32 223, ; 181
	i32 288, ; 182
	i32 215, ; 183
	i32 234, ; 184
	i32 301, ; 185
	i32 85, ; 186
	i32 276, ; 187
	i32 61, ; 188
	i32 112, ; 189
	i32 321, ; 190
	i32 57, ; 191
	i32 322, ; 192
	i32 263, ; 193
	i32 99, ; 194
	i32 19, ; 195
	i32 227, ; 196
	i32 111, ; 197
	i32 101, ; 198
	i32 102, ; 199
	i32 290, ; 200
	i32 104, ; 201
	i32 280, ; 202
	i32 71, ; 203
	i32 38, ; 204
	i32 173, ; 205
	i32 32, ; 206
	i32 190, ; 207
	i32 103, ; 208
	i32 73, ; 209
	i32 296, ; 210
	i32 9, ; 211
	i32 123, ; 212
	i32 46, ; 213
	i32 217, ; 214
	i32 198, ; 215
	i32 9, ; 216
	i32 43, ; 217
	i32 4, ; 218
	i32 264, ; 219
	i32 193, ; 220
	i32 320, ; 221
	i32 31, ; 222
	i32 138, ; 223
	i32 92, ; 224
	i32 180, ; 225
	i32 93, ; 226
	i32 49, ; 227
	i32 141, ; 228
	i32 112, ; 229
	i32 140, ; 230
	i32 233, ; 231
	i32 115, ; 232
	i32 281, ; 233
	i32 157, ; 234
	i32 76, ; 235
	i32 79, ; 236
	i32 253, ; 237
	i32 37, ; 238
	i32 275, ; 239
	i32 186, ; 240
	i32 237, ; 241
	i32 230, ; 242
	i32 64, ; 243
	i32 138, ; 244
	i32 15, ; 245
	i32 179, ; 246
	i32 116, ; 247
	i32 269, ; 248
	i32 278, ; 249
	i32 225, ; 250
	i32 48, ; 251
	i32 70, ; 252
	i32 80, ; 253
	i32 126, ; 254
	i32 94, ; 255
	i32 121, ; 256
	i32 285, ; 257
	i32 26, ; 258
	i32 246, ; 259
	i32 97, ; 260
	i32 28, ; 261
	i32 221, ; 262
	i32 291, ; 263
	i32 149, ; 264
	i32 206, ; 265
	i32 169, ; 266
	i32 4, ; 267
	i32 98, ; 268
	i32 178, ; 269
	i32 33, ; 270
	i32 93, ; 271
	i32 268, ; 272
	i32 194, ; 273
	i32 21, ; 274
	i32 41, ; 275
	i32 170, ; 276
	i32 307, ; 277
	i32 239, ; 278
	i32 299, ; 279
	i32 253, ; 280
	i32 284, ; 281
	i32 278, ; 282
	i32 258, ; 283
	i32 2, ; 284
	i32 134, ; 285
	i32 111, ; 286
	i32 195, ; 287
	i32 208, ; 288
	i32 316, ; 289
	i32 58, ; 290
	i32 95, ; 291
	i32 298, ; 292
	i32 39, ; 293
	i32 219, ; 294
	i32 25, ; 295
	i32 94, ; 296
	i32 292, ; 297
	i32 89, ; 298
	i32 99, ; 299
	i32 10, ; 300
	i32 87, ; 301
	i32 303, ; 302
	i32 100, ; 303
	i32 265, ; 304
	i32 182, ; 305
	i32 285, ; 306
	i32 210, ; 307
	i32 295, ; 308
	i32 7, ; 309
	i32 250, ; 310
	i32 173, ; 311
	i32 207, ; 312
	i32 88, ; 313
	i32 184, ; 314
	i32 245, ; 315
	i32 154, ; 316
	i32 294, ; 317
	i32 33, ; 318
	i32 192, ; 319
	i32 116, ; 320
	i32 82, ; 321
	i32 20, ; 322
	i32 11, ; 323
	i32 162, ; 324
	i32 3, ; 325
	i32 203, ; 326
	i32 325, ; 327
	i32 302, ; 328
	i32 197, ; 329
	i32 195, ; 330
	i32 84, ; 331
	i32 289, ; 332
	i32 64, ; 333
	i32 304, ; 334
	i32 272, ; 335
	i32 143, ; 336
	i32 254, ; 337
	i32 157, ; 338
	i32 41, ; 339
	i32 117, ; 340
	i32 183, ; 341
	i32 209, ; 342
	i32 261, ; 343
	i32 131, ; 344
	i32 75, ; 345
	i32 66, ; 346
	i32 308, ; 347
	i32 172, ; 348
	i32 213, ; 349
	i32 143, ; 350
	i32 106, ; 351
	i32 151, ; 352
	i32 70, ; 353
	i32 302, ; 354
	i32 156, ; 355
	i32 182, ; 356
	i32 121, ; 357
	i32 127, ; 358
	i32 303, ; 359
	i32 152, ; 360
	i32 236, ; 361
	i32 176, ; 362
	i32 141, ; 363
	i32 223, ; 364
	i32 300, ; 365
	i32 20, ; 366
	i32 14, ; 367
	i32 199, ; 368
	i32 135, ; 369
	i32 75, ; 370
	i32 59, ; 371
	i32 226, ; 372
	i32 167, ; 373
	i32 168, ; 374
	i32 201, ; 375
	i32 15, ; 376
	i32 74, ; 377
	i32 6, ; 378
	i32 23, ; 379
	i32 306, ; 380
	i32 248, ; 381
	i32 207, ; 382
	i32 175, ; 383
	i32 91, ; 384
	i32 301, ; 385
	i32 1, ; 386
	i32 136, ; 387
	i32 305, ; 388
	i32 249, ; 389
	i32 271, ; 390
	i32 134, ; 391
	i32 69, ; 392
	i32 177, ; 393
	i32 146, ; 394
	i32 189, ; 395
	i32 310, ; 396
	i32 289, ; 397
	i32 240, ; 398
	i32 196, ; 399
	i32 88, ; 400
	i32 96, ; 401
	i32 230, ; 402
	i32 235, ; 403
	i32 305, ; 404
	i32 31, ; 405
	i32 45, ; 406
	i32 244, ; 407
	i32 209, ; 408
	i32 109, ; 409
	i32 158, ; 410
	i32 35, ; 411
	i32 22, ; 412
	i32 114, ; 413
	i32 179, ; 414
	i32 57, ; 415
	i32 269, ; 416
	i32 144, ; 417
	i32 118, ; 418
	i32 120, ; 419
	i32 110, ; 420
	i32 211, ; 421
	i32 139, ; 422
	i32 175, ; 423
	i32 217, ; 424
	i32 291, ; 425
	i32 54, ; 426
	i32 105, ; 427
	i32 311, ; 428
	i32 202, ; 429
	i32 203, ; 430
	i32 133, ; 431
	i32 283, ; 432
	i32 274, ; 433
	i32 262, ; 434
	i32 317, ; 435
	i32 240, ; 436
	i32 205, ; 437
	i32 159, ; 438
	i32 227, ; 439
	i32 163, ; 440
	i32 132, ; 441
	i32 262, ; 442
	i32 161, ; 443
	i32 181, ; 444
	i32 251, ; 445
	i32 140, ; 446
	i32 274, ; 447
	i32 270, ; 448
	i32 169, ; 449
	i32 204, ; 450
	i32 212, ; 451
	i32 279, ; 452
	i32 40, ; 453
	i32 238, ; 454
	i32 81, ; 455
	i32 178, ; 456
	i32 56, ; 457
	i32 37, ; 458
	i32 97, ; 459
	i32 166, ; 460
	i32 172, ; 461
	i32 192, ; 462
	i32 275, ; 463
	i32 82, ; 464
	i32 214, ; 465
	i32 98, ; 466
	i32 30, ; 467
	i32 159, ; 468
	i32 18, ; 469
	i32 127, ; 470
	i32 119, ; 471
	i32 234, ; 472
	i32 265, ; 473
	i32 247, ; 474
	i32 267, ; 475
	i32 165, ; 476
	i32 242, ; 477
	i32 326, ; 478
	i32 297, ; 479
	i32 264, ; 480
	i32 255, ; 481
	i32 170, ; 482
	i32 16, ; 483
	i32 144, ; 484
	i32 125, ; 485
	i32 118, ; 486
	i32 38, ; 487
	i32 115, ; 488
	i32 47, ; 489
	i32 142, ; 490
	i32 117, ; 491
	i32 34, ; 492
	i32 174, ; 493
	i32 95, ; 494
	i32 53, ; 495
	i32 256, ; 496
	i32 129, ; 497
	i32 153, ; 498
	i32 24, ; 499
	i32 161, ; 500
	i32 233, ; 501
	i32 148, ; 502
	i32 104, ; 503
	i32 89, ; 504
	i32 221, ; 505
	i32 325, ; 506
	i32 60, ; 507
	i32 142, ; 508
	i32 100, ; 509
	i32 5, ; 510
	i32 13, ; 511
	i32 122, ; 512
	i32 135, ; 513
	i32 28, ; 514
	i32 297, ; 515
	i32 72, ; 516
	i32 231, ; 517
	i32 24, ; 518
	i32 219, ; 519
	i32 260, ; 520
	i32 257, ; 521
	i32 314, ; 522
	i32 137, ; 523
	i32 212, ; 524
	i32 228, ; 525
	i32 168, ; 526
	i32 261, ; 527
	i32 293, ; 528
	i32 101, ; 529
	i32 123, ; 530
	i32 232, ; 531
	i32 190, ; 532
	i32 184, ; 533
	i32 187, ; 534
	i32 163, ; 535
	i32 324, ; 536
	i32 167, ; 537
	i32 235, ; 538
	i32 39, ; 539
	i32 200, ; 540
	i32 312, ; 541
	i32 177, ; 542
	i32 17, ; 543
	i32 171, ; 544
	i32 313, ; 545
	i32 137, ; 546
	i32 150, ; 547
	i32 224, ; 548
	i32 199, ; 549
	i32 155, ; 550
	i32 130, ; 551
	i32 19, ; 552
	i32 65, ; 553
	i32 147, ; 554
	i32 47, ; 555
	i32 0, ; 556
	i32 321, ; 557
	i32 323, ; 558
	i32 210, ; 559
	i32 79, ; 560
	i32 61, ; 561
	i32 106, ; 562
	i32 259, ; 563
	i32 214, ; 564
	i32 49, ; 565
	i32 245, ; 566
	i32 318, ; 567
	i32 256, ; 568
	i32 14, ; 569
	i32 183, ; 570
	i32 68, ; 571
	i32 171, ; 572
	i32 220, ; 573
	i32 224, ; 574
	i32 78, ; 575
	i32 229, ; 576
	i32 108, ; 577
	i32 213, ; 578
	i32 186, ; 579
	i32 255, ; 580
	i32 67, ; 581
	i32 181, ; 582
	i32 63, ; 583
	i32 27, ; 584
	i32 160, ; 585
	i32 293, ; 586
	i32 185, ; 587
	i32 222, ; 588
	i32 10, ; 589
	i32 200, ; 590
	i32 11, ; 591
	i32 78, ; 592
	i32 126, ; 593
	i32 83, ; 594
	i32 188, ; 595
	i32 66, ; 596
	i32 107, ; 597
	i32 65, ; 598
	i32 128, ; 599
	i32 122, ; 600
	i32 77, ; 601
	i32 270, ; 602
	i32 260, ; 603
	i32 8, ; 604
	i32 228, ; 605
	i32 2, ; 606
	i32 309, ; 607
	i32 44, ; 608
	i32 273, ; 609
	i32 156, ; 610
	i32 128, ; 611
	i32 258, ; 612
	i32 23, ; 613
	i32 133, ; 614
	i32 216, ; 615
	i32 247, ; 616
	i32 29, ; 617
	i32 215, ; 618
	i32 206, ; 619
	i32 62, ; 620
	i32 202, ; 621
	i32 90, ; 622
	i32 87, ; 623
	i32 148, ; 624
	i32 295, ; 625
	i32 204, ; 626
	i32 36, ; 627
	i32 86, ; 628
	i32 236, ; 629
	i32 319, ; 630
	i32 187, ; 631
	i32 50, ; 632
	i32 6, ; 633
	i32 90, ; 634
	i32 319, ; 635
	i32 21, ; 636
	i32 162, ; 637
	i32 96, ; 638
	i32 50, ; 639
	i32 113, ; 640
	i32 252, ; 641
	i32 130, ; 642
	i32 76, ; 643
	i32 27, ; 644
	i32 308, ; 645
	i32 229, ; 646
	i32 251, ; 647
	i32 7, ; 648
	i32 201, ; 649
	i32 110, ; 650
	i32 252, ; 651
	i32 191, ; 652
	i32 238 ; 653
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

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
