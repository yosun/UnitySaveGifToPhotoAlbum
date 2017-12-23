
#import <Foundation/Foundation.h>
#import <Photos/Photos.h>

int saveGifToGallery(const char *path0){
    
    NSString *path = [NSString stringWithUTF8String:path0];
    NSData *data = [NSData dataWithContentsOfFile:path];
    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
        PHAssetResourceCreationOptions *options = [[PHAssetResourceCreationOptions alloc] init];
        [[PHAssetCreationRequest creationRequestForAsset] addResourceWithType:PHAssetResourceTypePhoto data:data options:options];
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        NSLog(@"：%d",success);
    }];
    
    return 1;
    
}
