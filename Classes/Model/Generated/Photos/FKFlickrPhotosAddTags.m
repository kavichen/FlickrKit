//
//  FKFlickrPhotosAddTags.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosAddTags.h" 

@implementation FKFlickrPhotosAddTags

- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.photos.addTags";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}
	if(!self.tags) {
		valid = NO;
		[errorDescription appendString:@"'tags', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}
	if(self.tags) {
		[args setValue:self.tags forKey:@"tags"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosAddTagsError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosAddTagsError_MaximumNumberOfTagsReached:
			return @"Maximum number of tags reached";
		case FKFlickrPhotosAddTagsError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosAddTagsError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosAddTagsError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosAddTagsError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosAddTagsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosAddTagsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosAddTagsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosAddTagsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosAddTagsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosAddTagsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosAddTagsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
