@global_var_73520 = external constant [54 x i8]
@global_var_73556 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_286b1:
  %0 = call i16 @anon0(i16 0)
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %.v = select i1 %3, i16 %1, i16 %0
  %4 = icmp ult i16 %.v, 182
  br i1 %4, label %dec_label_pc_286e4, label %dec_label_pc_28700

dec_label_pc_286e4:                               ; preds = %dec_label_pc_286b1
  %5 = zext i16 %0 to i32
  %narrow = mul i32 %5, 65536
  %sext = mul i32 %narrow, %5
  %6 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_2870f

dec_label_pc_28700:                               ; preds = %dec_label_pc_286b1
  call void @printLine(ptr @global_var_73520)
  br label %dec_label_pc_2870f

dec_label_pc_2870f:                               ; preds = %dec_label_pc_28700, %dec_label_pc_286e4
  ret void
}

define i16 @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_28785:
  %stack_var_-12 = alloca i16, align 2
  store i16 %data, ptr %stack_var_-12, align 2
  %0 = load ptr, ptr @global_var_a9080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_73556, ptr nonnull %stack_var_-12)
  %2 = load i16, ptr %stack_var_-12, align 2
  ret i16 %2
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

