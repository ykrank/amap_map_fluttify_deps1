//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

#import "SubHandler8.h"

// Dart端一次方法调用所存在的栈, 只有当MethodChannel传递参数受限时, 再启用这个容器
extern NSMutableDictionary<NSString*, NSObject*>* STACK;
// Dart端随机存取对象的容器
extern NSMutableDictionary<NSNumber*, NSObject*>* HEAP;
// 日志打印开关
extern BOOL enableLog;

@implementation AmapMapFluttifyPlugin (SubHandler8)
- (NSDictionary<NSString*, Handler>*) getSubHandler8 {
    __weak __typeof(self)weakSelf = self;
    return @{
        @"MAMapRectIsEmpty::MAMapRectIsEmpty": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            // args
            // struct arg
            NSValue* rectValue = (NSValue*) HEAP[args[@"rect"]];
            MAMapRect rect;
            [rectValue getValue:&rect];
        
            // ref
        
        
            // print log
            if (enableLog) {
                NSLog(@"fluttify-objc: MAMapRectIsEmpty::MAMapRectIsEmpty(%@)", args[@"rect"]);
            }
        
            // invoke native method
            BOOL result = MAMapRectIsEmpty(rect);
        
            // result
            // 返回值: Value
            NSObject* jsonableResult = @(result);
        
            methodResult(jsonableResult);
        },
        @"MAStringFromMapPoint::MAStringFromMapPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            // args
            // struct arg
            NSValue* pointValue = (NSValue*) HEAP[args[@"point"]];
            MAMapPoint point;
            [pointValue getValue:&point];
        
            // ref
        
        
            // print log
            if (enableLog) {
                NSLog(@"fluttify-objc: MAStringFromMapPoint::MAStringFromMapPoint(%@)", args[@"point"]);
            }
        
            // invoke native method
            NSString* result = MAStringFromMapPoint(point);
        
            // result
            // 返回值: jsonable
            id jsonableResult = result;
        
            methodResult(jsonableResult);
        },
        @"MAStringFromMapSize::MAStringFromMapSize": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            // args
            // struct arg
            NSValue* sizeValue = (NSValue*) HEAP[args[@"size"]];
            MAMapSize size;
            [sizeValue getValue:&size];
        
            // ref
        
        
            // print log
            if (enableLog) {
                NSLog(@"fluttify-objc: MAStringFromMapSize::MAStringFromMapSize(%@)", args[@"size"]);
            }
        
            // invoke native method
            NSString* result = MAStringFromMapSize(size);
        
            // result
            // 返回值: jsonable
            id jsonableResult = result;
        
            methodResult(jsonableResult);
        },
        @"MAStringFromMapRect::MAStringFromMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            // args
            // struct arg
            NSValue* rectValue = (NSValue*) HEAP[args[@"rect"]];
            MAMapRect rect;
            [rectValue getValue:&rect];
        
            // ref
        
        
            // print log
            if (enableLog) {
                NSLog(@"fluttify-objc: MAStringFromMapRect::MAStringFromMapRect(%@)", args[@"rect"]);
            }
        
            // invoke native method
            NSString* result = MAStringFromMapRect(rect);
        
            // result
            // 返回值: jsonable
            id jsonableResult = result;
        
            methodResult(jsonableResult);
        },
        @"MAGetDirectionFromCoords::MAGetDirectionFromCoords": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            // args
            // struct arg
            NSValue* fromCoordValue = (NSValue*) HEAP[args[@"fromCoord"]];
            CLLocationCoordinate2D fromCoord;
            [fromCoordValue getValue:&fromCoord];
            // struct arg
            NSValue* toCoordValue = (NSValue*) HEAP[args[@"toCoord"]];
            CLLocationCoordinate2D toCoord;
            [toCoordValue getValue:&toCoord];
        
            // ref
        
        
            // print log
            if (enableLog) {
                NSLog(@"fluttify-objc: MAGetDirectionFromCoords::MAGetDirectionFromCoords(%@, %@)", args[@"fromCoord"], args[@"toCoord"]);
            }
        
            // invoke native method
            CLLocationDirection result = MAGetDirectionFromCoords(fromCoord, toCoord);
        
            // result
            // 返回值: Value
            NSObject* jsonableResult = @(result);
        
            methodResult(jsonableResult);
        },
        @"MAGetDirectionFromPoints::MAGetDirectionFromPoints": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            // args
            // struct arg
            NSValue* fromPointValue = (NSValue*) HEAP[args[@"fromPoint"]];
            MAMapPoint fromPoint;
            [fromPointValue getValue:&fromPoint];
            // struct arg
            NSValue* toPointValue = (NSValue*) HEAP[args[@"toPoint"]];
            MAMapPoint toPoint;
            [toPointValue getValue:&toPoint];
        
            // ref
        
        
            // print log
            if (enableLog) {
                NSLog(@"fluttify-objc: MAGetDirectionFromPoints::MAGetDirectionFromPoints(%@, %@)", args[@"fromPoint"], args[@"toPoint"]);
            }
        
            // invoke native method
            CLLocationDirection result = MAGetDirectionFromPoints(fromPoint, toPoint);
        
            // result
            // 返回值: Value
            NSObject* jsonableResult = @(result);
        
            methodResult(jsonableResult);
        },
        @"MAGetDistanceFromPointToLine::MAGetDistanceFromPointToLine": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            // args
            // struct arg
            NSValue* pointValue = (NSValue*) HEAP[args[@"point"]];
            MAMapPoint point;
            [pointValue getValue:&point];
            // struct arg
            NSValue* lineBeginValue = (NSValue*) HEAP[args[@"lineBegin"]];
            MAMapPoint lineBegin;
            [lineBeginValue getValue:&lineBegin];
            // struct arg
            NSValue* lineEndValue = (NSValue*) HEAP[args[@"lineEnd"]];
            MAMapPoint lineEnd;
            [lineEndValue getValue:&lineEnd];
        
            // ref
        
        
            // print log
            if (enableLog) {
                NSLog(@"fluttify-objc: MAGetDistanceFromPointToLine::MAGetDistanceFromPointToLine(%@, %@, %@)", args[@"point"], args[@"lineBegin"], args[@"lineEnd"]);
            }
        
            // invoke native method
            double result = MAGetDistanceFromPointToLine(point, lineBegin, lineEnd);
        
            // result
            // 返回值: Value
            NSObject* jsonableResult = @(result);
        
            methodResult(jsonableResult);
        },
        @"MAPolylineHitTest::MAPolylineHitTest": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            // args
            // list arg struct
            NSArray* linePointsRefIdArray = (NSArray*) args[@"linePoints"];
            MAMapPoint linePoints[linePointsRefIdArray.count];
        
            for (int __i__ = 0; __i__ < linePointsRefIdArray.count; __i__++) {
                NSValue* linePointsValue = (NSValue*) HEAP[[linePointsRefIdArray objectAtIndex:__i__]];
                MAMapPoint linePointsItem;
                [linePointsValue getValue:&linePointsItem];
                linePoints[__i__] = linePointsItem;
            }
            // jsonable arg
            NSUInteger count = [args[@"count"] unsignedIntegerValue];
            // struct arg
            NSValue* tappedPointValue = (NSValue*) HEAP[args[@"tappedPoint"]];
            MAMapPoint tappedPoint;
            [tappedPointValue getValue:&tappedPoint];
            // jsonable arg
            CGFloat lineWidth = [args[@"lineWidth"] floatValue];
        
            // ref
        
        
            // print log
            if (enableLog) {
                NSLog(@"fluttify-objc: MAPolylineHitTest::MAPolylineHitTest(%@, %@, %@, %@)", args[@"linePoints"], args[@"count"], args[@"tappedPoint"], args[@"lineWidth"]);
            }
        
            // invoke native method
            BOOL result = MAPolylineHitTest(linePoints, count, tappedPoint, lineWidth);
        
            // result
            // 返回值: Value
            NSObject* jsonableResult = @(result);
        
            methodResult(jsonableResult);
        },
    };
}

@end
