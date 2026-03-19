#include <string>

class CPluginContext {
public:
    std::string key;
    // ... other members ... 
};

void KeyRetriever::GetKey(CPluginContext* context) {
    if (context == nullptr) return;

    size_t second_pos = key_metadata.find("-", 1);
    if (second_pos == std::string::npos) return;

    context->key = key_metadata.substr(second_pos + 1);
    // ... rest of the function ... 
}