@global_var_751d0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_34185:
  %0 = call i16 @anon0(i16 0)
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %.v = select i1 %3, i16 %1, i16 %0
  %4 = icmp ult i16 %.v, 182
  br i1 %4, label %dec_label_pc_341b8, label %dec_label_pc_341d4

dec_label_pc_341b8:                               ; preds = %dec_label_pc_34185
  %5 = zext i16 %0 to i32
  %narrow = mul i32 %5, 65536
  %sext = mul i32 %narrow, %5
  %6 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_341e3

dec_label_pc_341d4:                               ; preds = %dec_label_pc_34185
  call void @printLine(ptr @global_var_751d0)
  br label %dec_label_pc_341e3

dec_label_pc_341e3:                               ; preds = %dec_label_pc_341d4, %dec_label_pc_341b8
  ret void
}

define i16 @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_34239:
  ret i16 32767
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

