@CWE190_Integer_Overflow__short_max_square_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_74f18 = external constant [21 x i8]
@global_var_74f30 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_32e74:
  store i32 0, ptr @CWE190_Integer_Overflow__short_max_square_22_goodB2G1Global, align 4
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_32f66:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_max_square_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_32f93, label %dec_label_pc_32f82

dec_label_pc_32f82:                               ; preds = %dec_label_pc_32f66
  call void @printLine(ptr @global_var_74f18)
  br label %dec_label_pc_32fd0

dec_label_pc_32f93:                               ; preds = %dec_label_pc_32f66
  %2 = sub i16 0, %data
  %3 = icmp slt i16 %2, 0
  %4 = icmp eq i1 %3, false
  %.v = select i1 %4, i16 %2, i16 %data
  %5 = icmp ult i16 %.v, 182
  br i1 %5, label %dec_label_pc_32fa5, label %dec_label_pc_32fc1

dec_label_pc_32fa5:                               ; preds = %dec_label_pc_32f93
  %6 = mul i16 %data, %data
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_32fd0

dec_label_pc_32fc1:                               ; preds = %dec_label_pc_32f93
  call void @printLine(ptr @global_var_74f30)
  br label %dec_label_pc_32fd0

dec_label_pc_32fd0:                               ; preds = %dec_label_pc_32fc1, %dec_label_pc_32fa5, %dec_label_pc_32f82
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

