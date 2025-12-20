@CWE190_Integer_Overflow__short_max_square_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_74f30 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_32ea4:
  store i32 1, ptr @CWE190_Integer_Overflow__short_max_square_22_goodB2G2Global, align 4
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_32fd3:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_max_square_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3302c, label %dec_label_pc_32fef

dec_label_pc_32fef:                               ; preds = %dec_label_pc_32fd3
  %2 = sub i16 0, %data
  %3 = icmp slt i16 %2, 0
  %4 = icmp eq i1 %3, false
  %.v = select i1 %4, i16 %2, i16 %data
  %5 = icmp ult i16 %.v, 182
  br i1 %5, label %dec_label_pc_33001, label %dec_label_pc_3301d

dec_label_pc_33001:                               ; preds = %dec_label_pc_32fef
  %6 = mul i16 %data, %data
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_3302c

dec_label_pc_3301d:                               ; preds = %dec_label_pc_32fef
  call void @printLine(ptr @global_var_74f30)
  br label %dec_label_pc_3302c

dec_label_pc_3302c:                               ; preds = %dec_label_pc_3301d, %dec_label_pc_33001, %dec_label_pc_32fd3
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

