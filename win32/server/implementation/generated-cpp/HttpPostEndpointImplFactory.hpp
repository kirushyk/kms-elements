/* Autogenerated with kurento-module-creator */

#ifndef __HTTP_POST_ENDPOINT_IMPL_FACTORY_HPP__
#define __HTTP_POST_ENDPOINT_IMPL_FACTORY_HPP__

#include "HttpPostEndpointImpl.hpp"
#include "HttpEndpointImplFactory.hpp"
#include <MediaObjectImpl.hpp>
#include <boost/property_tree/ptree.hpp>

namespace kurento
{

class HttpPostEndpointImplFactory : public virtual HttpEndpointImplFactory
{
public:
  HttpPostEndpointImplFactory () {};

  virtual std::string getName () const {
    return "HttpPostEndpoint";
  };

private:

  virtual MediaObjectImpl *createObjectPointer (const boost::property_tree::ptree &conf, const Json::Value &params) const;

  MediaObjectImpl *createObject (const boost::property_tree::ptree &conf, std::shared_ptr<MediaPipeline> mediaPipeline, int disconnectionTimeout, bool useEncodedMedia) const;
};

} /* kurento */

#endif /*  __HTTP_POST_ENDPOINT_IMPL_FACTORY_HPP__ */