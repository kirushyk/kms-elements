/* Autogenerated with kurento-module-creator */

#ifndef __COMPOSITE_INTERNAL_HPP__
#define __COMPOSITE_INTERNAL_HPP__

#include "Composite.hpp"

namespace kurento
{
class JsonSerializer;
}

namespace kurento
{
class MediaPipeline;
} /* kurento */

namespace kurento
{

class CompositeConstructor
{
public:
  CompositeConstructor () {}
  ~CompositeConstructor () {}

  void Serialize (JsonSerializer &serializer);

  std::shared_ptr<MediaPipeline> getMediaPipeline ();

  void setMediaPipeline (std::shared_ptr<MediaPipeline> mediaPipeline) {
    this->mediaPipeline = mediaPipeline;
  }

private:
  std::shared_ptr<MediaPipeline> mediaPipeline;
};

} /* kurento */

#endif /*  __COMPOSITE_INTERNAL_HPP__ */
