/* Autogenerated with kurento-module-creator */

#ifndef __DISPATCHER_ONE_TO_MANY_IMPL_FACTORY_HPP__
#define __DISPATCHER_ONE_TO_MANY_IMPL_FACTORY_HPP__

#include "DispatcherOneToManyImpl.hpp"
#include "HubImplFactory.hpp"
#include <MediaObjectImpl.hpp>
#include <boost/property_tree/ptree.hpp>

namespace kurento
{

class DispatcherOneToManyImplFactory : public virtual HubImplFactory
{
public:
  DispatcherOneToManyImplFactory () {};

  virtual std::string getName () const {
    return "DispatcherOneToMany";
  };

private:

  virtual MediaObjectImpl *createObjectPointer (const boost::property_tree::ptree &conf, const Json::Value &params) const;

  MediaObjectImpl *createObject (const boost::property_tree::ptree &conf, std::shared_ptr<MediaPipeline> mediaPipeline) const;
};

} /* kurento */

#endif /*  __DISPATCHER_ONE_TO_MANY_IMPL_FACTORY_HPP__ */