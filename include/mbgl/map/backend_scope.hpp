#pragma once

namespace mbgl {

class Backend;

class BackendScope {
public:
    enum class ScopeType : bool {
        Implicit,
        Explicit,
    };

    BackendScope(Backend&, ScopeType = ScopeType::Explicit);
    ~BackendScope();

    static bool exists();

private:
    BackendScope* priorScope;
    BackendScope* nextScope;
    Backend& backend;
    const ScopeType scopeType;
};

} // namespace mbgl
