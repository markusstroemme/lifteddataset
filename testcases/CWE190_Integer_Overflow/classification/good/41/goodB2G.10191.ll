@global_var_74690 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2f607:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_2f64e, label %dec_label_pc_2f620

dec_label_pc_2f620:                               ; preds = %dec_label_pc_2f607
  %1 = icmp sgt i16 %data, 16382
  br i1 %1, label %dec_label_pc_2f63f, label %dec_label_pc_2f628

dec_label_pc_2f628:                               ; preds = %dec_label_pc_2f620
  %2 = mul i16 %data, 2
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_2f64e

dec_label_pc_2f63f:                               ; preds = %dec_label_pc_2f620
  call void @printLine(ptr @global_var_74690)
  br label %dec_label_pc_2f64e

dec_label_pc_2f64e:                               ; preds = %dec_label_pc_2f63f, %dec_label_pc_2f628, %dec_label_pc_2f607
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2f651:
  call void @anon0(i16 32767)
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

