//
//  VWErrorDomain.h
//  visioWeb
//
//  Created by Benoit Vasseur on 22/02/2019.
//  Copyright © 2019 coreoz. All rights reserved.
//

#ifndef VWErrorDomain_h
#define VWErrorDomain_h

typedef enum {
    VWErrorUnknown = 0,
    VWErrorNoCamera,
    VWErrorNoCameraRights,
    VWErrorNoAudioRights
} VWError;

#endif /* VWErrorDomain_h */
