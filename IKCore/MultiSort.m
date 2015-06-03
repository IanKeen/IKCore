#import "MultiSort.h"

OVERLOADABLE NSComparisonResult sort(NSComparisonResult first, NSComparisonResult second, NSComparisonResult third, NSComparisonResult forth) {
    return (first == NSOrderedSame ? (second == NSOrderedSame ? (third == NSOrderedSame ? forth : third) : second) : first);
}
OVERLOADABLE NSComparisonResult sort(NSComparisonResult first, NSComparisonResult second, NSComparisonResult third) {
    return (first == NSOrderedSame ? (second == NSOrderedSame ? third : second) : first);
}
OVERLOADABLE NSComparisonResult sort(NSComparisonResult first, NSComparisonResult second) {
    return (first == NSOrderedSame ? second : first);
}
