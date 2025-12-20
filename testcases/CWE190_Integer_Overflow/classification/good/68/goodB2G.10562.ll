@CWE190_Integer_Overflow__short_max_multiply_68_goodB2GData = external local_unnamed_addr global i16
@global_var_749a0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_30bc8:
  store i16 32767, ptr @CWE190_Integer_Overflow__short_max_multiply_68_goodB2GData, align 2
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_30c83:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_max_multiply_68_goodB2GData, align 2
  %1 = icmp slt i16 %0, 1
  br i1 %1, label %dec_label_pc_30ccf, label %dec_label_pc_30ca1

dec_label_pc_30ca1:                               ; preds = %dec_label_pc_30c83
  %2 = icmp sgt i16 %0, 16382
  br i1 %2, label %dec_label_pc_30cc0, label %dec_label_pc_30ca9

dec_label_pc_30ca9:                               ; preds = %dec_label_pc_30ca1
  %3 = mul i16 %0, 2
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_30ccf

dec_label_pc_30cc0:                               ; preds = %dec_label_pc_30ca1
  call void @printLine(ptr @global_var_749a0)
  br label %dec_label_pc_30ccf

dec_label_pc_30ccf:                               ; preds = %dec_label_pc_30cc0, %dec_label_pc_30ca9, %dec_label_pc_30c83
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

