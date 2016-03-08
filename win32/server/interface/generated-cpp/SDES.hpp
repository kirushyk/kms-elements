/* Autogenerated with kurento-module-creator */

#ifndef __SDES_HPP__
#define __SDES_HPP__

#include <json/json.h>
#include <jsonrpc/JsonRpcException.hpp>
#include <memory>
#include <RegisterParent.hpp>


namespace kurento
{
class CryptoSuite;
} /* kurento */

namespace kurento
{
class SDES;
} /* kurento */

namespace kurento
{
class JsonSerializer;
void Serialize (std::shared_ptr<kurento::SDES> &object, JsonSerializer &s);
} /* kurento */

namespace kurento
{
class CryptoSuite;

class SDES : public RegisterParent 
{

public:

  SDES () {
  };

  void setKey (const std::string &key) {
    this->key = key;
    __isSetKey = true;
  };

  std::string getKey () {
    return key;
  };

  bool isSetKey () {
    return __isSetKey;
  };

  void setCrypto (std::shared_ptr<CryptoSuite> crypto) {
    this->crypto = crypto;
    __isSetCrypto = true;
  };

  std::shared_ptr<CryptoSuite> getCrypto () {
    return crypto;
  };

  bool isSetCrypto () {
    return __isSetCrypto;
  };

  virtual void Serialize (JsonSerializer &s);

  static void registerType () {
    std::function<RegisterParent*(void)> func =
        [] () {

      return new SDES ();

    };

    RegisterParent::registerType ("kurento.SDES", func);
  }

private:

  std::string key;
  bool __isSetKey = false;
  std::shared_ptr<CryptoSuite> crypto;
  bool __isSetCrypto = false;

  friend void kurento::Serialize (std::shared_ptr<kurento::SDES> &object, JsonSerializer &s);

};

} /* kurento */

#endif /*  __SDES_HPP__ */
