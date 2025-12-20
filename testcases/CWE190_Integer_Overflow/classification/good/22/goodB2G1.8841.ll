@CWE190_Integer_Overflow__short_max_add_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_73c18 = external constant [21 x i8]
@global_var_73c30 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2b294:
  store i32 0, ptr @CWE190_Integer_Overflow__short_max_add_22_goodB2G1Global, align 4
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2b382:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_max_add_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2b3af, label %dec_label_pc_2b39e

dec_label_pc_2b39e:                               ; preds = %dec_label_pc_2b382
  call void @printLine(ptr @global_var_73c18)
  br label %dec_label_pc_2b3de

dec_label_pc_2b3af:                               ; preds = %dec_label_pc_2b382
  %2 = icmp eq i16 %data, 32767
  br i1 %2, label %dec_label_pc_2b3cf, label %dec_label_pc_2b3b7

dec_label_pc_2b3b7:                               ; preds = %dec_label_pc_2b3af
  %3 = add i16 %data, 1
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_2b3de

dec_label_pc_2b3cf:                               ; preds = %dec_label_pc_2b3af
  call void @printLine(ptr @global_var_73c30)
  br label %dec_label_pc_2b3de

dec_label_pc_2b3de:                               ; preds = %dec_label_pc_2b3cf, %dec_label_pc_2b3b7, %dec_label_pc_2b39e
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

