//
//  STPFixtures.h
//  Stripe
//
//  Created by Ben Guo on 3/28/17.
//  Copyright © 2017 Stripe, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OCMock/OCMock.h>
#import <PassKit/PassKit.h>
#import <Stripe/Stripe.h>

extern NSString *const STPJSONKeyCustomer;

extern NSString *const STPJSONKeyCard;

extern NSString *const STPJSONKeySourceAlipay;
extern NSString *const STPJSONKeySourceBitcoin;
extern NSString *const STPJSONKeySourceCard;
extern NSString *const STPJSONKeySource3DS;
extern NSString *const STPJSONKeySourceiDEAL;
extern NSString *const STPJSONKeySourceSEPADebit;

@interface STPFixtures : NSObject

/**
 An Address object with all fields filled.
 */
+ (STPAddress *)address;

/**
 A PKPaymentObject with test payment data.
 */
+ (PKPayment *)applePayPayment;

/**
 A BankAccountParams object with all fields filled.
 */
+ (STPBankAccountParams *)bankAccountParams;

/**
 A CardParams object with a valid number, expMonth, expYear, and cvc.
 */
+ (STPCardParams *)cardParams;

/**
 A valid card object
 */
+ (STPCard *)card;

/**
 A Source object with type card
 */
+ (STPSource *)cardSource;

/**
 A Token for a card
 */
+ (STPToken *)cardToken;

/**
 A Customer object with an empty sources array.
 */
+ (STPCustomer *)customerWithNoSources;

/**
 A Customer object with a single card token in its sources array, and
 default_source set to that card token.
 */
+ (STPCustomer *)customerWithSingleCardTokenSource;

/**
 A Customer object with a single card source in its sources array, and
 default_source set to that card source.
 */
+ (STPCustomer *)customerWithSingleCardSourceSource;

/**
 A Customer object with two cards in its sources array, 
 one a token/card type and one a source object type.
 default_source is set to the card token.
 */
+ (STPCustomer *)customerWithCardTokenAndSourceSources;

/**
 A customer object with a sources array that includes the listed json sources
 in the order they are listed in the array.
 
 Valid keys are any STPJSONKeySource constants and the STPJSONKeyCard constant.
 
 Ids for the sources will be automatically generated and will be equal to a
 string that is the index of the array of that source.
 */
+ (STPCustomer *)customerWithSourcesFromJSONKeys:(NSArray<NSString *> *)jsonSourceKeys
                                   defaultSource:(NSString *)jsonKeyForDefaultSource;

/**
 A Source object with type iDEAL
 */
+ (STPSource *)iDEALSource;

/**
 A Source object with type Alipay
 */
+ (STPSource *)alipaySource;

/**
 A Source object with type Alipay and a native redirect url
 */
+ (STPSource *)alipaySourceWithNativeUrl;

/**
 A PaymentConfiguration object with a fake publishable key. Use this to avoid
 triggering our asserts when publishable key is nil or invalid. All other values
 are at their original defaults.
 */
+ (STPPaymentConfiguration *)paymentConfiguration;

/**
 A customer-scoped ephemeral key that expires in 100 seconds.
 */
+ (STPEphemeralKey *)ephemeralKey;

/**
 A customer-scoped ephemeral key that expires in 10 seconds.
 */
+ (STPEphemeralKey *)expiringEphemeralKey;

@end

@interface STPJsonSources : NSObject

@end

