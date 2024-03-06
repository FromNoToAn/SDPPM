

#include <gtest/gtest.h>
#include "../include/bitarray.h"
#define MOVE

TEST(BitArrayTest, DefaultConstructor) {
    BitArray b;
    EXPECT_EQ(b.size(), 0);
    EXPECT_TRUE(b.empty());
}

TEST(BitArrayTest, ConstructorWithValue) {
    BitArray b(8, true);
    EXPECT_EQ(b.size(), 8);
    EXPECT_FALSE(b.empty());
    EXPECT_EQ(b.to_string(), "11111111");
}

TEST(BitArrayTest, CopyConstructor) {
    BitArray b1(8, true);
    BitArray b2(b1);
    EXPECT_EQ(b2.size(), 8);
    EXPECT_FALSE(b2.empty());
    EXPECT_EQ(b2.to_string(), "11111111");
}

TEST(BitArrayTest, MoveConstructor) {
    BitArray b1(8, true);
    BitArray b2(std::move(b1));
    EXPECT_EQ(b2.size(), 8);
    EXPECT_FALSE(b2.empty());
    EXPECT_EQ(b2.to_string(), "11111111");
    EXPECT_EQ(b1.size(), 0);
    EXPECT_TRUE(b1.empty());
}

//TEST(BitArrayTest, AssignmentOperator) {
//    BitArray b1(8, true);
//    BitArray b2;
//
//    EXPECT_EQ(b2.size(), 8);
//    EXPECT_FALSE(b2.empty());
//    EXPECT_EQ(b2.to_string(), "11111111");
//}

TEST(BitArrayTest, MoveAssignmentOperator) {
    BitArray b1(8, true);
    BitArray b2;
    b2 = std::move(b1);
    EXPECT_EQ(b2.size(), 8);
    EXPECT_FALSE(b2.empty());
    EXPECT_EQ(b2.to_string(), "11111111");
    EXPECT_EQ(b1.size(), 0);
    EXPECT_TRUE(b1.empty());
}

TEST(BitArrayTest, Resize) {
    BitArray b(8, false);
    b.resize(16, false);
    EXPECT_EQ(b.size(), 16);
    EXPECT_FALSE(b.empty());
    EXPECT_EQ(b.to_string(), "0000000000000000");
}

TEST(BitArrayTest, Clear) {
    BitArray b(8, true);
    b.clear();
    EXPECT_EQ(b.size(), 0);
    EXPECT_TRUE(b.empty());
}

TEST(BitArrayTest, PushBack) {
    BitArray b(8, true);
    b.push_back(false);
    EXPECT_EQ(b.size(), 9);
    EXPECT_FALSE(b.empty());
    EXPECT_EQ(b.to_string(), "111111110");
}

TEST(BitArrayTest, BitwiseAnd) {
    BitArray b1(8, true);
    BitArray b2(8, false);
    b1 &= b2;
    EXPECT_EQ(b1.to_string(), "00000000");
}

TEST(BitArrayTest, BitwiseOr) {
    BitArray b1(8, true);
    BitArray b2(8, false);
    b1 |= b2;
    EXPECT_EQ(b1.to_string(), "11111111");
}

TEST(BitArrayTest, BitwiseXor) {
    BitArray b1(8, true);
    BitArray b2(8, false);
    b1 ^= b2;
    EXPECT_EQ(b1.to_string(), "11111111");
}

TEST(BitArrayTest, LeftShift) {
    BitArray b(8, true);
    b <<= 2;
    EXPECT_EQ(b.to_string(), "11111100");
}

TEST(BitArrayTest, RightShift) {
    BitArray b(8, true);
    b.set(5, false);
    b >>= 2;
    EXPECT_EQ(b.to_string(), "00111110");
}

TEST(BitArrayTest, SetBit) {
    BitArray b(8, false);
    b.set(3, true);
    EXPECT_EQ(b.to_string(), "00010000");
}

TEST(BitArrayTest, SetAllBits) {
    BitArray b(8, false);
    b.set();
    EXPECT_EQ(b.to_string(), "11111111");
}

TEST(BitArrayTest, ResetBit) {
    BitArray b(8, true);
    b.reset(3);
    EXPECT_EQ(b.to_string(), "11101111");
}

TEST(BitArrayTest, ResetAllBits) {
    BitArray b(8, true);
    b.reset();
    EXPECT_EQ(b.to_string(), "00000000");
}

TEST(BitArrayTest, Any) {
    BitArray b1(8, false);
    BitArray b2(8, true);
    EXPECT_FALSE(b1.any());
    EXPECT_TRUE(b2.any());
}

TEST(BitArrayTest, None) {
    BitArray b1(8, false);
    BitArray b2(8, true);
    EXPECT_TRUE(b1.none());
    EXPECT_FALSE(b2.none());
}

TEST(BitArrayTest, BitwiseNot) {
    BitArray b(8, true);
    b = ~b;
    EXPECT_EQ(b.to_string(), "00000000");
}

TEST(BitArrayTest, Count) {
    BitArray b(8, true);
    EXPECT_EQ(b.count(), 8);
}

TEST(BitArrayTest, IndexOperator) {
    BitArray b(8, true);
    EXPECT_TRUE(b[0]);
    EXPECT_TRUE(b[7]);
}

TEST(BitArrayTest, EqualityOperator) {
    BitArray b1(8, true);
    BitArray b2(8, true);
    EXPECT_TRUE(b1 == b2);
}

TEST(BitArrayTest, InequalityOperator) {
    BitArray b1(8, true);
    BitArray b2(8, false);
    EXPECT_TRUE(b1 != b2);
}

TEST(BitArrayTest, BitwiseAndOperator) {
    BitArray b1(8, true);
    BitArray b2(8, false);
    BitArray b = b1 & b2;
    EXPECT_EQ(b.to_string(), "00000000");
}

TEST(BitArrayTest, BitwiseOrOperator) {
    BitArray b1(8, true);
    BitArray b2(8, false);
    BitArray b = b1 | b2;
    EXPECT_EQ(b.to_string(), "11111111");
}

TEST(BitArrayTest, BitwiseXorOperator) {
    BitArray b1(8, true);
    BitArray b2(8, false);
    BitArray b = b1 ^ b2;
    EXPECT_EQ(b.to_string(), "11111111");
}

int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
