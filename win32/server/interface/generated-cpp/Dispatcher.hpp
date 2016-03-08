/* Autogenerated with kurento-module-creator */

#ifndef __DISPATCHER_HPP__
#define __DISPATCHER_HPP__

#include <json/json.h>
#include <jsonrpc/JsonRpcException.hpp>
#include <memory>
#include <vector>
#include "Hub.hpp"

namespace kurento
{
class Dispatcher;
} /* kurento */

namespace kurento
{
class JsonSerializer;
void Serialize (std::shared_ptr<kurento::Dispatcher> &object, JsonSerializer &serializer);
}

namespace kurento
{
class MediaPipeline;
class HubPort;
} /* kurento */

namespace kurento
{
class Dispatcher : public virtual Hub
{

public:
  Dispatcher () {};
  virtual ~Dispatcher () {};

  virtual void connect (std::shared_ptr<HubPort> source, std::shared_ptr<HubPort> sink) = 0;

  virtual std::string getType () const {
    return "Dispatcher";
  }

  virtual std::string getModule () const {
    return "kurento";
  }

  virtual void Serialize (JsonSerializer &serializer) = 0;

};

} /* kurento */

#endif /*  __DISPATCHER_HPP__ */
