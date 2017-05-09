#define CATCH_CONFIG_MAIN
#include "../testing/catch.hpp"

#define private public
#include "TransactionalBuffer.h"
#undef private

using ospcommon::TransactionalBuffer;

// Tests //////////////////////////////////////////////////////////////////////

TEST_CASE("Interface Tests", "[all]")
{
  TransactionalBuffer<int> tb;

  REQUIRE(tb.size() == 0);
  REQUIRE(tb.empty());

  tb.push_back(2);

  REQUIRE(tb.buffer.size() == 1);
  REQUIRE(tb.size() == 1);
  REQUIRE(!tb.empty());
  REQUIRE(tb.buffer[0] == 2);

  auto v = tb.consume();

  REQUIRE(v.size() == 1);
  REQUIRE(v[0] == 2);

  REQUIRE(tb.buffer.empty());
}
