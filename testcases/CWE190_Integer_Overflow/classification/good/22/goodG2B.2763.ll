@CWE190_Integer_Overflow__int_rand_multiply_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_11eb8:
  store i32 1, ptr @CWE190_Integer_Overflow__int_rand_multiply_22_goodG2BGlobal, align 4
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_11ff3:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_rand_multiply_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i32 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_12024, label %dec_label_pc_12012

dec_label_pc_12012:                               ; preds = %dec_label_pc_11ff3
  %3 = mul i32 %data, 2
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_12024

dec_label_pc_12024:                               ; preds = %dec_label_pc_12012, %dec_label_pc_11ff3
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

