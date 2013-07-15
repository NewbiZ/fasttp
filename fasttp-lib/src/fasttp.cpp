#include <fasttp/fasttp.h>

#define STR(x) #x
#define XSTR(x) STR(x)

namespace fasttp
{
  const std::string& version()
  {

    static const std::string v = XSTR(FASTTP_VERSION_MAJOR) "." \
                                 XSTR(FASTTP_VERSION_MINOR) "." \
                                 XSTR(FASTTP_VERSION_PATCH);
    return v;
  }
}

