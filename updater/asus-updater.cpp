#include "edify/expr.h"
#include "otautil/error_code.h"

#define ASUS_LOLLIPOP_VERSION  "5.0"

static Value* CheckVersionFn(const char* name, State* state, const std::vector<std::unique_ptr<Expr>>& argv) {
    if (!argv.empty()) {
        return ErrorAbort(state, kArgsParsingFailure, "%s() expects no args, got %d", name, argv.size());
    }

    return StringValue(ASUS_LOLLIPOP_VERSION);
}

static Value* SkipFlashFn(const char* name, State* state, const std::vector<std::unique_ptr<Expr>>& argv) {
    if (argv.size() != 1) {
        return ErrorAbort(state, kArgsParsingFailure, "%s() expects 1 arg, got %d", name, argv.size());
    }

    // Skip flashing BIOS and ESP update
    return StringValue("t"); // OK
}

void Register_libasus_updater(void) {
    RegisterFunction("check_version", CheckVersionFn);
    RegisterFunction("flash_capsule", SkipFlashFn);
    RegisterFunction("flash_esp_update", SkipFlashFn);
}
