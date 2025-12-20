@CWE190_Integer_Overflow__short_max_add_68_goodB2GData = external local_unnamed_addr global i16
@global_var_74020 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2cd94:
  store i16 32767, ptr @CWE190_Integer_Overflow__short_max_add_68_goodB2GData, align 2
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2ce43:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_max_add_68_goodB2GData, align 2
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_2ce7a, label %dec_label_pc_2ce62

dec_label_pc_2ce62:                               ; preds = %dec_label_pc_2ce43
  %2 = add i16 %0, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_2ce89

dec_label_pc_2ce7a:                               ; preds = %dec_label_pc_2ce43
  call void @printLine(ptr @global_var_74020)
  br label %dec_label_pc_2ce89

dec_label_pc_2ce89:                               ; preds = %dec_label_pc_2ce7a, %dec_label_pc_2ce62
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

