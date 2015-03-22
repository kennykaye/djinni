// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from example.djinni

#import "TXSItemList+Private.h"
#import "DJIDate.h"
#import "DJIMarshal+Private.h"
#import <Foundation/Foundation.h>
#include <utility>
#include <vector>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@implementation TXSItemList

- (id)initWithItemList:(TXSItemList *)itemList
{
    if (self = [super init]) {
        std::vector<NSString *> _itemsTempVector;
        _itemsTempVector.reserve([itemList.items count]);
        for (NSString *currentValue_0 in itemList.items) {
            NSString *copiedValue_0;
            copiedValue_0 = [currentValue_0 copy];
            _itemsTempVector.push_back(copiedValue_0);
        }
        _items = [NSArray arrayWithObjects:&_itemsTempVector[0] count:_itemsTempVector.size()];
    }
    return self;
}

- (id)initWithItems:(NSArray *)items
{
    if (self = [super init]) {
        _items = items;
    }
    return self;
}

- (id)initWithCppItemList:(const ::textsort::ItemList &)itemList
{
    if (self = [super init]) {
        std::vector<NSString *> _itemsTempVector;
        _itemsTempVector.reserve(itemList.items.size());
        for (const auto & cppValue_0 : itemList.items) {
            NSString *objcValue_0 = ::djinni::String::fromCpp(cppValue_0);
            _itemsTempVector.push_back(objcValue_0);
        }
        _items = [NSArray arrayWithObjects:&_itemsTempVector[0] count:_itemsTempVector.size()];
    }
    return self;
}

- (::textsort::ItemList)cppItemList
{
    std::vector<std::string> items;
    items.reserve([_items count]);
    for (NSString *objcValue_0 in _items) {
        std::string cppValue_0 = ::djinni::String::toCpp(objcValue_0);
        items.push_back(std::move(cppValue_0));
    }
    return ::textsort::ItemList(
            std::move(items));
}

@end
