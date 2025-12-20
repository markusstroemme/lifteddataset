@CWE190_Integer_Overflow__short_max_square_68_goodB2GData = external local_unnamed_addr global i16
@global_var_75320 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_34b0e:
  store i16 32767, ptr @CWE190_Integer_Overflow__short_max_square_68_goodB2GData, align 2
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_34bc5:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_max_square_68_goodB2GData, align 2
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %.v = select i1 %3, i16 %1, i16 %0
  %4 = icmp ult i16 %.v, 182
  br i1 %4, label %dec_label_pc_34bee, label %dec_label_pc_34c0a

dec_label_pc_34bee:                               ; preds = %dec_label_pc_34bc5
  %5 = mul i16 %0, %0
  %6 = sext i16 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_34c19

dec_label_pc_34c0a:                               ; preds = %dec_label_pc_34bc5
  call void @printLine(ptr @global_var_75320)
  br label %dec_label_pc_34c19

dec_label_pc_34c19:                               ; preds = %dec_label_pc_34c0a, %dec_label_pc_34bee
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

