#include <cstring>
#include "edify/expr.h"

#define ASUS_LOLLIPOP_VERSION  "5.0"

static Value* CheckVersionFn(const char* name, State* state, int argc, Expr*[]) {
    if (argc != 0) {
        return ErrorAbort(state, kArgsParsingFailure, "%s() expects no args, got %d", name, argc);
    }

    return StringValue(strdup(ASUS_LOLLIPOP_VERSION));
}

static Value* SkipFlashFn(const char* name, State* state, int argc, Expr*[]) {
    if (argc != 1) {
        return ErrorAbort(state, kArgsParsingFailure, "%s() expects 1 arg, got %d", name, argc);
    }

    // Skip flashing BIOS and ESP update
    return StringValue(strdup("t")); // OK
}

void Register_libasus_updater(void) {
    RegisterFunction("check_version", CheckVersionFn);
    RegisterFunction("flash_capsule", SkipFlashFn);
    RegisterFunction("flash_esp_update", SkipFlashFn);
}
