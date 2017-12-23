using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System.Collections;
using System.Runtime.InteropServices;

public class SaveToAlbum : MonoBehaviour {

	#if !UNITY_EDITOR

	[DllImport("__Internal")] // https://gist.github.com/yosun/89f256b66141ec914e2b54c66c91c798
	private static extern int saveGifToGallery( string path );

	#endif 

	public static void SaveFile(string path){
		print ("SaveFile " + path);
		#if !UNITY_EDITOR
		saveGifToGallery (path);
		#endif
	}


}