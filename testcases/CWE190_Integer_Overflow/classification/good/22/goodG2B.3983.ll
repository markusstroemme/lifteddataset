@CWE190_Integer_Overflow__int_rand_square_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_17535:
  store i32 1, ptr @CWE190_Integer_Overflow__int_rand_square_22_goodG2BGlobal, align 4
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_17687:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_rand_square_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_176b3, label %dec_label_pc_176a0

dec_label_pc_176a0:                               ; preds = %dec_label_pc_17687
  %2 = mul i32 %data, %data
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_176b3

dec_label_pc_176b3:                               ; preds = %dec_label_pc_176a0, %dec_label_pc_17687
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

