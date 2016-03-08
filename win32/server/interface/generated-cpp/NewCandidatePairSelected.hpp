/* Autogenerated with kurento-module-creator */

#ifndef __NEW_CANDIDATE_PAIR_SELECTED_HPP__
#define __NEW_CANDIDATE_PAIR_SELECTED_HPP__

#include <json/json.h>
#include <memory>
#include "Media.hpp"

namespace kurento
{
class NewCandidatePairSelected;
} /* kurento */

namespace kurento
{
class JsonSerializer;
void Serialize (std::shared_ptr<kurento::NewCandidatePairSelected> &object, JsonSerializer &s);
}


namespace kurento
{
class IceCandidatePair;
} /* kurento */

namespace kurento
{
class IceCandidatePair;

class NewCandidatePairSelected : public Media
{

public:

  NewCandidatePairSelected (std::shared_ptr<MediaObject> source, const std::string &type, std::shared_ptr<IceCandidatePair> candidatePair) : Media (source, type) {
      this->candidatePair = candidatePair;
  };

  NewCandidatePairSelected (const Json::Value &value);

  virtual void setCandidatePair (std::shared_ptr<IceCandidatePair> candidatePair) {
    this->candidatePair = candidatePair;
  };

  virtual std::shared_ptr<IceCandidatePair> getCandidatePair () {
    return candidatePair;
  };

  static std::string getName() {
    return "NewCandidatePairSelected";
  }

  virtual void Serialize (JsonSerializer &s);

protected:

  NewCandidatePairSelected() {};

private:
  std::shared_ptr<IceCandidatePair> candidatePair;

  friend void kurento::Serialize (std::shared_ptr<kurento::NewCandidatePairSelected> &event, JsonSerializer &s);
};

} /* kurento */

#endif /*  __NEW_CANDIDATE_PAIR_SELECTED_HPP__ */
