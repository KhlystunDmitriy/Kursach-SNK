#include "riscv_test.h"
#include "riscv_macros.h"
#include "test_macros.h"

#define LOG_OPCODE 0x40007033
#define RD_SHIFT 7
#define RD_MASK (0xF << RD_SHIFT)
#define RS1_SHIFT 15
#define RS1_MASK (0xF << RS1_SHIFT)

/* rd, rs1, rs2 - integer registers num 0-31 */
#define INST_LOG(rd, rs1, rs2) \
.word (LOG_OPCODE | ((rd) << RS1_SHIFT & RS1_MASK) | \
((rs1) << RS1_SHIFT & RS1_MASK))

//TEST_CASE(1, x2, 4, INST_ADD(2, 1, 1));

#define TEST_LOG( testnum, inst, result, val1, val2 ) \
    TEST_CASE( testnum, x3, result, \
      li  x1, MASK_XLEN(val1); \
      li  x2, MASK_XLEN(val2); \
      inst; \
    )


RVTEST_RV32U
RVTEST_CODE_BEGIN

#-------------------------------------------------------------
# Arithmetic tests begin
#-------------------------------------------------------------

  #li x4, 0xFFFFFFFF;
  #TEST_IMM_OP_SQRT( 1, INST_SQRT(3, 4), 0xFFFF, 0xFFFFFFFF); // max val
   
  TEST_LOG(1, .word 0x4020F1B3, 2, 12, 150);

TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

TEST_DATA

RVTEST_DATA_END
