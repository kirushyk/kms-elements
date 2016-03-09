/* Autogenerated with kurento-module-creator */

#ifndef __PLAYER_ENDPOINT_IMPL_FACTORY_HPP__
#define __PLAYER_ENDPOINT_IMPL_FACTORY_HPP__

#include "PlayerEndpointImpl.hpp"
#include "UriEndpointImplFactory.hpp"
#include <MediaObjectImpl.hpp>
#include <boost/property_tree/ptree.hpp>

namespace kurento
{

class PlayerEndpointImplFactory : public virtual UriEndpointImplFactory
{
public:
  PlayerEndpointImplFactory () {};

  virtual std::string getName () const {
    return "PlayerEndpoint";
  };

private:

  virtual MediaObjectImpl *createObjectPointer (const boost::property_tree::ptree &conf, const Json::Value &params) const;

  MediaObjectImpl *createObject (const boost::property_tree::ptree &conf, std::shared_ptr<MediaPipeline> mediaPipeline, const std::string &uri, bool useEncodedMedia) const;
};

} /* kurento */

#endif /*  __PLAYER_ENDPOINT_IMPL_FACTORY_HPP__ */